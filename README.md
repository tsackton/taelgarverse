# taelgarverse

TaelgarVerse website repository.

The site is built from `taelgar-static`, a generated static export of the
Taelgar Obsidian vault. The source vault is no longer tracked here as the
`taelgar` submodule.

## Build

Refresh the static export and generated docs from the repository root:

```sh
./autobuild_website.sh build
```

The wrapper defines the vault/materializer/site-build paths, refreshes
`taelgar-static`, then runs:

```sh
python taelgar-utils/website/build_site.py --config website.json export
```

`build_site.py export` exports `taelgar-static` into `docs/`.

Running `./autobuild_website.sh` without a command prints usage and exits
without touching `taelgar-static`.

Commands:

```sh
./autobuild_website.sh materialize
./autobuild_website.sh export
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

## Standalone pages

The approved Taelgar II page lives in `standalone/taelgar-2/index.html`, with
its eight images in `standalone/taelgar-2/assets/`. Edit this copy for future
website changes; the vault's `web-preview/index.html` remains the original mockup.

`hooks/standalone.py` copies this directory to `site/taelgar-2/` after every
MkDocs build, including the existing GitHub Pages workflow. It bypasses Material
formatting, navigation, search indexing, and the sitemap. The page also retains
its `noindex` directive. It is unlisted, not access-controlled.

No incoming link has been added. When ready, put this HTML in the desired
Taelgarverse note or page:

```html
<a href="/taelgarverse/taelgar-2/" target="_self">Taelgar II — After the Godfall</a>
```

The explicit `target` bypasses Material's instant navigation while keeping the
same tab. The deployed URL will be
`https://tsackton.github.io/taelgarverse/taelgar-2/`.

Use `mkdocs build` to validate or `mkdocs serve` to preview this change; neither
requires refreshing the vault export. The `standalone/` directory is watched
for local rebuilds. Keep these source files and the hook in Git when publishing;
the existing export/deploy helper stages generated output and configuration,
so it does not automatically stage new `standalone/` or `hooks/` files.
