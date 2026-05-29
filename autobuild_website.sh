#!/bin/zsh
set -euo pipefail

usage() {
    cat <<EOF
Usage: ./autobuild_website.sh COMMAND [ARGS...]

Commands:
  materialize     Run the Obsidian materializer into taelgar-static.
  export          Export taelgar-static into docs.
  build           Run materialize, then export.
  serve           Export taelgar-static, then serve locally.
  deploy          Run materialize, export, and deploy.
  publish         Run export, then deploy.
EOF
}

if [[ "$#" -eq 0 ]]; then
    usage >&2
    exit 2
fi

eval "$(mamba shell hook --shell zsh)"
mamba activate taelgar-utils

WEBSITE_ROOT="${TAELGAR_WEBSITE_ROOT:-${0:A:h}}"
VAULT_ROOT="${TAELGAR_VAULT_ROOT:-/Users/tim/Library/Mobile Documents/iCloud~md~obsidian/Documents/Taelgar}"
STATIC_OUT="${TAELGAR_STATIC_OUT:-$WEBSITE_ROOT/taelgar-static}"
MATERIALIZER="${TAELGAR_MATERIALIZER:-$VAULT_ROOT/_scripts/materialize-dataview/materialize-dataview.mjs}"
BUILD_SITE="${TAELGAR_BUILD_SITE:-$WEBSITE_ROOT/taelgar-utils/website/build_site.py}"
WEBSITE_CONFIG="${TAELGAR_WEBSITE_CONFIG:-$WEBSITE_ROOT/website.json}"
OBSIDIAN_VAULT="${TAELGAR_OBSIDIAN_VAULT:-84d8c2b4070c9a2c}"
PYTHON_BIN="${PYTHON_BIN:-python}"
NODE_BIN="${NODE_BIN:-node}"
MKDOCS_BIN="${MKDOCS_BIN:-mkdocs}"
HEADER_TYPE="${TAELGAR_HEADER_TYPE:-website}"
MATERIALIZE_STRICT="${TAELGAR_MATERIALIZE_STRICT:-false}"
OBSIDIAN_COMMAND="${OBSIDIAN_COMMAND:-/Applications/Obsidian.app/Contents/MacOS/obsidian-cli}"

clear_static_out() {
    if [[ -z "$STATIC_OUT" || "$STATIC_OUT" == "/" || "$STATIC_OUT" == "$WEBSITE_ROOT" ]]; then
        echo "Refusing to clear unsafe TAELGAR_STATIC_OUT: $STATIC_OUT" >&2
        exit 1
    fi

    rm -rf "$STATIC_OUT"
}

run_static_build() {
    local strict_arg="--no-strict"
    if [[ "$MATERIALIZE_STRICT" == "true" || "$MATERIALIZE_STRICT" == "1" ]]; then
        strict_arg="--strict"
    fi

    clear_static_out

    "$NODE_BIN" "$MATERIALIZER" \
        --vault "$VAULT_ROOT" \
        --out "$STATIC_OUT" \
        --header-type "$HEADER_TYPE" \
        --obsidian-command "$OBSIDIAN_COMMAND" \
        --obsidian-vault "$OBSIDIAN_VAULT" \
        "$strict_arg"
}

run_site_build() {
    "$PYTHON_BIN" "$BUILD_SITE" --config "$WEBSITE_CONFIG" "$@"
}

run_mkdocs() {
    "$MKDOCS_BIN" "$@"
}

command="$1"
shift

case "$command" in
    materialize)
        run_static_build
        ;;
    export)
        run_site_build export "$@"
        ;;
    build)
        run_static_build
        run_site_build export "$@"
        ;;
    serve)
        run_site_build export
        run_mkdocs serve "$@"
        ;;
    deploy)
        run_static_build
        run_site_build deploy "$@"
        ;;
    publish)
        run_site_build deploy "$@"
        ;;
    *)
        usage >&2
        exit 2
        ;;
esac
