# AGENTS.md

## Autobuild Pipeline

- `./autobuild_website.sh materialize` runs the Obsidian materializer from the Taelgar vault into `taelgar-static/`. By default, the wrapper uses `TAELGAR_VAULT_ROOT` or `/Users/tim/Library/Mobile Documents/iCloud~md~obsidian/Documents/Taelgar`, and runs `_scripts/materialize-dataview/materialize-dataview.mjs`.
- `./autobuild_website.sh export` runs `python taelgar-utils/website/build_site.py --config website.json export`, exporting `taelgar-static/` into `docs/`.
- `./autobuild_website.sh build` runs materialize, then export.
- `./autobuild_website.sh serve` exports, then runs `mkdocs serve`.
- `./autobuild_website.sh deploy` materializes, exports, then deploys.
- `./autobuild_website.sh publish` exports, then deploys.

`docs/`, `taelgar-static/`, `.website-build/`, and root-level `overrides/` are build outputs or copied/generated artifacts. Do not make durable fixes there; make fixes in the appropriate upstream source so the autobuild pipeline preserves them.

## Validation And Risk

Any autobuild step that includes materialize, such as `materialize`, `build`, or `deploy`, is risky for routine validation: materialization is slow, often around 10 minutes, and destructive because it erases the previous `taelgar-static/` directory before regenerating it. That is correct tool behavior, but materialization errors are slow to recover from because the pipeline must run again.

Prefer targeted checks unless the source vault or Dataview materialization itself changed:

- `python taelgar-utils/website/build_site.py --config website.json check` validates config, links, assets, and nav without writing files.
- `./autobuild_website.sh export` refreshes `docs/` from the current `taelgar-static/`.
- `mkdocs build` checks MkDocs build errors after export.
- `./autobuild_website.sh serve` exports, then serves locally for browser testing.
- `./autobuild_website.sh publish` exports, then deploys for remote testing.

## Where To Make Fixes

- Taelgar vault/materializer code: change this when the issue starts in Dataview or DataviewJS materialization, source-note transformation, or materialized static output before the website exporter sees it. Do not patch `taelgar-static/` directly.
- `taelgar-utils/website`: change this for export behavior, Markdown conversion, nav generation, copied MkDocs overrides, website templates, search/index hygiene, asset processing, backlinks, and build/deploy guardrails. `taelgar-utils` is a git submodule, so commit those changes inside `taelgar-utils/` and update this repo's submodule pointer only when intended. If an override/template is copied into this repo during export, edit the source under `taelgar-utils/website`, not the copied root-level `overrides/` file.
- TaelgarVerse root config: change `ignore_spec.txt`, `mkdocs.yml`, and `website.json` for site-specific export configuration, MkDocs configuration, ignore rules, campaign/date filters, asset policy, and feature toggles.
- TaelgarVerse root docs: planning and coordination docs such as this file, the improvement plan, and the progress tracker may live here because they are not generated website output.

## Planning Records

- Overall plan: [taelgarverse-improvement-plan.md](taelgarverse-improvement-plan.md)
- Progress tracker: [taelgarverse-improvement-progress.md](taelgarverse-improvement-progress.md)
