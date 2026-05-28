#!/bin/zsh
set -euo pipefail

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
HEADER_TYPE="${TAELGAR_HEADER_TYPE:-website}"
MATERIALIZE_TIMEOUT="${TAELGAR_MATERIALIZE_TIMEOUT:-600}"
MATERIALIZE_STRICT="${TAELGAR_MATERIALIZE_STRICT:-false}"

if [[ "$#" -eq 0 ]]; then
    set -- build
fi

usage() {
    cat <<EOF
Usage: ./autobuild_website.sh COMMAND [ARGS...]

Commands:
  materialize     Run the Obsidian materializer into taelgar-static.
  export          Export taelgar-static into docs.
  refresh-export  Run materialize, then export.
  build           Run materialize, export, and mkdocs build.
  serve           Export taelgar-static, build MkDocs, then serve locally.
  deploy          Run materialize, export, mkdocs build, commit, and push.
  publish         Run mkdocs build, commit, and push without materialize/export.
EOF
}

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
        --obsidian-vault "$OBSIDIAN_VAULT" \
        "$strict_arg" \
        --timeout "$MATERIALIZE_TIMEOUT"
}

run_site_build() {
    "$PYTHON_BIN" "$BUILD_SITE" --config "$WEBSITE_CONFIG" "$@"
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
    refresh-export)
        run_static_build
        run_site_build export "$@"
        ;;
    build)
        run_static_build
        run_site_build build "$@"
        ;;
    serve)
        run_site_build serve "$@"
        ;;
    deploy)
        run_static_build
        run_site_build deploy "$@"
        ;;
    publish)
        run_site_build publish "$@"
        ;;
    *)
        usage >&2
        exit 2
        ;;
esac
