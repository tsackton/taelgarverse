# taelgarverse

TaelgarVerse website repository.

The site is built from `taelgar-static`, a generated static export of the
Taelgar Obsidian vault. The source vault is no longer tracked here as the
`taelgar` submodule.

## Build

Run the full local build from the repository root:

```sh
./autobuild_website.sh
```

The wrapper defines the vault/materializer/site-build paths, refreshes
`taelgar-static`, then runs:

```sh
python taelgar-utils/website/build_site.py --config website.json build
```

`build_site.py build` exports `taelgar-static` into `docs/` and runs
`mkdocs build`.

Commands:

```sh
./autobuild_website.sh materialize
./autobuild_website.sh export
./autobuild_website.sh refresh-export
./autobuild_website.sh build
./autobuild_website.sh serve
./autobuild_website.sh deploy
./autobuild_website.sh publish
```

## Repository Inputs

The build-relevant tracked files are:

- `website.json`: export configuration for `taelgar-static`.
- `mkdocs.yml`: MkDocs configuration for the generated `docs/` tree.
- `ignore_spec.txt`: source filters applied during export.
- `requirements.txt`: Python packages for the website build.
- `taelgar-utils`: tooling submodule containing `website/build_site.py`.
- `overrides/`: MkDocs theme overrides copied/refreshed by the exporter.
- `docs/`: generated MkDocs source committed for GitHub Pages builds.

Local generated or source directories are ignored:

- `taelgar-static/`
- `.website-build/`
- `taelgar/`
