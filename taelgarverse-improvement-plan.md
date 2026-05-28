# TaelgarVerse Improvement Plan

Prepared: 2026-05-28

Scope: review of the published site at <https://tsackton.github.io/taelgarverse/> plus read-only inspection of the local MkDocs configuration and generated docs. No code changes are included in this plan.

Status update, 2026-05-28: Priority 0 and the Phase 1 hygiene/navigation sequence are complete for the current scope. Redirect aliases were intentionally not added; instead, stale URL generation was checked at the source, and a base-path-safe custom 404 was added. Campaign navigation was completed as a single `Campaigns` top tab with current games, archive, and campaign-owned PC navigation.

## Pages Sampled

- [Home](https://tsackton.github.io/taelgarverse/)
- [Current Campaigns top-tab target](https://tsackton.github.io/taelgarverse/people/pcs/pcs/)
- [Finished Campaigns top-tab target](https://tsackton.github.io/taelgarverse/people/pcs/great-war/heroes-of-the-great-war/)
- [People top-tab target](https://tsackton.github.io/taelgarverse/people/chardonians/adina/)
- [Gazetteer top-tab target](https://tsackton.github.io/taelgarverse/background/player-s-guide/)
- [World Map](https://tsackton.github.io/taelgarverse/gazetteer/world-of-taelgar/)
- [History](https://tsackton.github.io/taelgarverse/history/history/)
- [Dunmari Frontier - Session 99](https://tsackton.github.io/taelgarverse/campaigns/dunmari-frontier-campaign/session-notes/session-99-dufr/)
- [Party Treasure](https://tsackton.github.io/taelgarverse/campaigns/dunmari-frontier-campaign/party-treasure/)
- [Energy Realms](https://tsackton.github.io/taelgarverse/cosmology/energy-realms/energy-realms/)
- [Generated Excalidraw asset page](https://tsackton.github.io/taelgarverse/assets/addermarch-schematic-details/)
- [Placeholder playable-species page](https://tsackton.github.io/taelgarverse/creatures/mechanics/playing-a-changeling/)
- A stale indexed path, [old species page](https://tsackton.github.io/taelgarverse/species/species/), which currently returns a 404.

## Executive Summary

TaelgarVerse has a strong underlying content base and a usable MkDocs Material shell, but the published site is carrying too much generated structure into every page. The biggest issues are information architecture, performance, and export hygiene:

- Top-level navigation sometimes lands on arbitrary first-child pages instead of useful section overviews. The most visible example is the `People` tab, which opens `Adina` rather than a People index.
- Every sampled page carries roughly 2,300 navigation links in the DOM. The homepage HTML response alone is about 808 KB, before CSS, JavaScript, images, or the 6.2 MB search index.
- The search index includes 4,725 indexed documents/fragments across 2,257 unique pages, including the generated `Toc` page and asset/source pages. Searching for `Adina` produced `Toc` as a result with a huge wall of navigation text.
- Several generated or draft pages are public, including Excalidraw source pages and `(XXX) Species Details` placeholder pages.
- The world map works, but it loads a single roughly 27 MB image and offers only basic Leaflet zoom controls.
- Pages with no table of contents or backlinks still reserve the right-sidebar column on several sampled pages, narrowing the reading area for no benefit.

The recommended path is to first fix navigation targets and export hygiene, then reduce page/search payloads, then improve maps, page templates, and content quality.

## Priority 0: Fix Public-Facing Breakage

### 1. Add real top-level section landing pages

Current behavior:

- `Current Campaigns` points to `/people/pcs/pcs/`.
- `Finished Campaigns` points to `/people/pcs/great-war/heroes-of-the-great-war/`.
- `People` points to `/people/chardonians/adina/`.
- `Gazetteer` points to `/background/player-s-guide/`.

Some of these are defensible as content pages, but they do not behave like section homepages. `People` opening an individual NPC is the clearest bug.

Recommended fix:

- Create or designate explicit index pages for:
  - `Current Campaigns`
  - `Finished Campaigns`
  - `People`
  - `Gazetteer`
  - `History`
- Update `docs/toc.md` generation so each top-level section links to an index page rather than relying on the first child.
- Make each index page a compact directory, not a prose dump.

Likely source areas:

- `taelgar-utils/website/templates/toc.md`
- `docs/toc.md`
- `website.json`
- export/nav generation in `taelgar-utils/website/build_site.py`

Acceptance criteria:

- Each top tab opens a section overview.
- No top tab opens an individual person or arbitrary first child unless that is intentional.
- The homepage quick buttons and top tabs use the same section vocabulary.

### 2. Stop publishing generated/source-only asset pages

Observed examples:

- `/assets/addermarch-schematic-details/`
- `/assets/mostreve-schematic-details/`
- `/assets/excalidraw/voltara-outline/`

These pages expose Excalidraw source text like "Switch to EXCALIDRAW VIEW" and create low-quality search results.

Recommended fix:

- Exclude Excalidraw source Markdown and generated asset-detail Markdown from nav and search.
- If an Excalidraw diagram should be public, export and publish the rendered image/PDF page only.
- Add ignore rules for source-only patterns such as:
  - `assets/**/*-details.md`
  - `assets/excalidraw/**/*.md`
  - any Obsidian plugin metadata files
- Remove `.DS_Store` and other filesystem metadata from published assets.

Likely source areas:

- `ignore_spec.txt`
- `website.json`
- export filtering in `build_site.py`
- source vault asset organization

Acceptance criteria:

- Searching the site does not return `Excalidraw Data`, `Text Elements`, or `Embedded Files`.
- Asset folders expose only intended public media.
- Generated asset source pages are absent from the search index and nav.

### 3. Remove or hide draft placeholder pages

Observed placeholder pages:

- `/creatures/mechanics/playing-a-changeling/`
- `/creatures/mechanics/playing-a-fairy/`
- `/creatures/mechanics/playing-a-free-orc/`
- `/creatures/mechanics/playing-a-satyr/`
- parts of `/creatures/mechanics/playing-a-kobold/`

The pages show public text such as `(XXX) Species Details`, `(SHORT DESCRIPTION, 1-2 PARAGRAPHS)`, and `Creating Your (XXX) Character`.

Recommended fix:

- Add a draft/stub filter that excludes pages containing unresolved template markers.
- Treat `XXX`, `SHORT DESCRIPTION`, `TODO`, `FIXME`, and similar strings as build warnings or failures unless explicitly allowed.
- If a page is useful despite draft sections, hide only those sections or add a visible "draft" treatment and keep it out of search.

Acceptance criteria:

- Public search has no `(XXX)` species pages.
- Public pages do not expose template instructions.
- Build output reports unresolved placeholders before deploy.

### 4. Normalize Obsidian-style loose lists before export

Observed:

- Obsidian renders list markers immediately following paragraph text, but MkDocs/Python-Markdown treats them as literal paragraph text unless there is a blank line before the list.
- This causes pages such as `Current Games` to show visible `-` prefixes instead of real bullet lists.

Recommended fix:

- Add an exporter Markdown normalizer that inserts a blank line before list markers such as `- `, `* `, `+ `, and ordered-list markers when they immediately follow paragraph text.
- Preserve front matter, fenced code blocks, indented code, tables, existing valid lists, and intentionally escaped list markers.
- Add focused tests using source Markdown that currently renders as literal hyphen-prefixed paragraphs.

Acceptance criteria:

- Exported Markdown has valid blank-line separation before lists.
- MkDocs renders affected source-vault lists as `<ul>` or `<ol>`, not paragraphs containing literal hyphens.
- Existing code blocks, tables, nav templates, and already-valid lists are unchanged.

### 5. Fix stale-path 404 behavior

The old URL `/taelgarverse/species/species/` returns a 404. On that 404 page, the top-nav links resolve without the `/taelgarverse/` base path, and the logo image points at `/assets/images/logo.png`, which is broken under GitHub Pages.

Recommended fix:

- Add redirect aliases for known moved paths, especially old `species/*` paths that now appear to live under `creatures/species/*`.
- Ensure the 404 page uses the configured `base_path` or absolute GitHub Pages subpath.
- Consider a custom 404 page with links to Search, Player's Guide, People, Gazetteer, and World Map.

Acceptance criteria:

- Old indexed paths either redirect or provide a useful 404.
- 404 page nav links keep `/taelgarverse/`.
- 404 page logo loads.

## Priority 1: Reduce Performance Cost

### 5. Shrink global navigation payload

Observed:

- Sampled pages include about 2,306 to 2,331 `.md-nav__link` elements.
- The homepage HTML response is about 807,823 bytes.
- Most content pages carry the entire site tree even when only one section is relevant.

Recommended fix:

- Stop rendering the full world tree into every page's primary nav.
- Prefer section index pages plus active-section navigation.
- Keep top-level tabs short and stable.
- Move huge directories such as People, Gazetteer, Things, and Events into generated index pages with search/filter controls rather than enormous sidebars.
- Consider splitting the site into a smaller player-facing navigation tree and deeper search-only encyclopedic pages.

Acceptance criteria:

- Typical content page HTML is materially smaller.
- Side nav displays current section context rather than thousands of links.
- People and Gazetteer remain discoverable through indexes and search.

### 6. Reduce search index size and improve result quality

Observed:

- `search/search_index.json` is about 6,247,324 bytes.
- It contains 4,725 indexed records across 2,257 unique page locations.
- Generated `Toc` content appears in search results.
- Asset source pages and draft pages are searchable.

Recommended fix:

- Exclude generated navigation pages such as `toc/` from search.
- Exclude source-only assets, draft pages, and low-value utility pages.
- Consider excluding backlinks text and generated nav text from indexed page body.
- Add search-result boosting or type labels so exact title/person matches rank above broad index pages.
- Add domain-specific search affordances:
  - type filter: person, place, item, session, event, organization, god, source
  - campaign filter
  - status filter, if safe to expose

Acceptance criteria:

- Searching `Adina` returns `Adina`, related people, and session references, but not `Toc`.
- Search index size drops significantly.
- Search results are easier to scan and less likely to expose generated internals.

### 7. Optimize images and large assets

Observed:

- `docs/assets` is about 910 MB locally.
- The world map image response is about 27 MB.
- `player-map.png` is about 19 MB.
- Several other images and PDFs are 4-7 MB each.

Recommended fix:

- Convert large non-transparent raster images to optimized WebP/AVIF where browser support is acceptable.
- Generate responsive image variants for inline images.
- Preserve full-resolution originals only when needed, behind explicit download links.
- Add an asset budget report to the build.
- Revisit `resize_exclude_assets`; map images need a separate tiling path rather than being fully excluded from optimization.

Acceptance criteria:

- Largest inline images are not served at full source resolution by default.
- The build reports top asset sizes.
- No unexpected 20+ MB image is loaded on initial page view.

## Priority 2: Improve Navigation and Discoverability

### 8. Rework information architecture around user tasks

The current navigation mirrors the vault too closely. It is rich, but it is not optimized for how a player or DM looks things up.

Recommended top-level model:

- `Start Here`: Player's Guide, current campaign status, recent sessions, how to use the site.
- `Campaigns`: Current and finished campaigns, characters, sessions, handouts, treasure.
- `People`: People directory with filters by culture/species/campaign/status.
- `Places`: Gazetteer, regions, settlements, routes, maps.
- `Lore`: History, religion, cosmology, species, organizations, languages.
- `Tools`: World map, timelines, treasure indexes, calendars, reference tables.

This does not require moving source files immediately. It can be generated as a presentation layer from existing metadata.

Acceptance criteria:

- A new reader can find "what is this world?", "who are these people?", and "where are we?" within one click from home.
- A current player can reach latest campaign resources quickly.
- Deep lore remains searchable without dominating the main nav.

### 9. Add generated directory pages for large collections

High-value generated indexes:

- People index:
  - name
  - type/species/culture
  - campaign
  - status
  - last known location
  - first/last mentioned session
- Places index:
  - region
  - realm
  - settlement/site/river/road/etc.
  - associated campaigns
- Sessions index:
  - campaign
  - session number
  - in-world date
  - Earth date
  - locations
  - major NPCs
- Items/Treasure index:
  - owner
  - rarity
  - origin
  - current location
  - mechanics link
- Events/timeline index:
  - date range
  - region
  - campaign relevance

Acceptance criteria:

- Large categories become sortable/filterable pages rather than side-nav trees.
- The side nav can be shortened without losing access.

## Priority 3: Improve Page Layout and Reading Experience

### 10. Hide empty right sidebars

Observed:

- Pages such as Home, Current Campaigns, and History can reserve the secondary sidebar even when the table of contents/backlinks content is empty.
- This reduces main content width from roughly 998/1248 px to about 748 px on sampled desktop pages.

Recommended fix:

- Update `overrides/partials/toc.html` and any surrounding layout logic so the secondary sidebar is not rendered/reserved when both TOC and backlinks are empty.
- Keep backlinks visible when useful, but avoid blank column space.

Acceptance criteria:

- Pages with no TOC/backlinks use the available content width.
- Pages with real TOC/backlinks retain the secondary sidebar.

### 11. Make backlinks more useful and less noisy

Backlinks are valuable for a lore wiki, but the current output can feel unstructured.

Recommended fix:

- Group backlinks by type: sessions, people, places, items, events, organizations.
- Limit default backlink display and add a "more backlinks" expansion for pages with many references.
- Show compact context for high-value backlinks, especially session notes.
- Hide or deprioritize backlinks on pages where they add little value.

Likely source areas:

- `overrides/partials/toc.html`
- `mkdocs-backlinks` configuration
- generated metadata/tags

Acceptance criteria:

- Person/location pages show relevant relationship context without overwhelming the right sidebar.
- Backlinks no longer produce odd spacing when combined with TOC.

### 12. Improve long table layouts

Observed on Party Treasure:

- Image column takes a large share of the table.
- Text columns become narrow and wrap heavily.
- Repeated `Mechanics` text links are visually noisy.

Recommended fix:

- For inventory/treasure, use a custom card/list layout or responsive data table.
- Use thumbnail constraints for item images.
- Replace repeated `Mechanics` text with a small consistent link/button or icon label.
- Add filters for owner, rarity, and current/lost status.

Acceptance criteria:

- Treasure pages are scannable on desktop.
- Treasure pages remain usable on mobile without horizontal scrolling or unreadably narrow columns.

### 13. Tune session-note pages

Session pages are generally readable, but the right TOC can duplicate repeated section names such as `Detailed Notes` and `Short Summary` subsections.

Recommended fix:

- Limit TOC depth on session pages or hide repeated generated subsections from the TOC.
- Add previous/next session links.
- Add a compact session metadata panel:
  - campaign
  - session number
  - in-world date
  - Earth date
  - locations
  - featured PCs
  - key NPCs/items/events
- Consider a "recap first, transcript later" structure if transcript content is long.

Acceptance criteria:

- Session pages orient the reader quickly.
- TOC does not duplicate the same subsection labels in confusing ways.

### 14. Improve person page templates

The person page info panel is a good start. It can become a stronger lookup surface.

Recommended fix:

- Add optional portrait thumbnails where available.
- Normalize metadata fields: species, culture, pronouns, dates, location, affiliations, status, campaign.
- Make relationship fields explicit when source data supports them.
- Add "appears in" and "related pages" sections below the prose rather than only backlinks.

Acceptance criteria:

- A player can identify who a person is, where they matter, and where they appeared without reading the full prose.

## Priority 4: Improve the World Map

### 15. Tile the world map

Observed:

- The map loads a single large image, roughly 27 MB.
- Leaflet renders it as an image layer with basic zoom controls.
- The rendered image has empty alt text.

Recommended fix:

- Generate map tiles instead of serving the full image at once.
- Use Leaflet tile layers with min/max zoom levels.
- Keep a full-resolution download link separately.
- Add attribution/description text outside the map.

Acceptance criteria:

- Initial map load is fast.
- Zooming loads only needed tiles.
- Full-resolution download remains available for users who need it.

### 16. Add practical map controls

Recommended enhancements:

- Search/jump to named locations.
- Layer toggles for regions, routes, rivers, political borders, campaign routes, and spoiler-safe labels.
- Optional markers for current campaign locations.
- Measure-distance tool.
- Reset view button.
- Shareable URL state for map center/zoom/layers.
- Mobile-friendly full-screen control.

Acceptance criteria:

- A player can answer "where is this?" without manually panning across the whole image.
- The map supports campaign play at the table, not just browsing.

## Priority 5: Content Hygiene

### 17. Add automated content QA checks

Examples found during sampling:

- `Letter from Dee WIldcloak`
- `Playing a Halfing`
- `Appollyon`
- `liliving quarters`
- `theFaculty`
- placeholder `(XXX)` pages
- generated Excalidraw text

Recommended fix:

- Add a content QA script that scans generated Markdown and/or search index for:
  - placeholder tokens
  - likely typos
  - doubled words such as "The The"
  - missing spaces after inline link conversion
  - source-only plugin markers
  - stale Obsidian wikilink text
- Maintain an allowlist for intentional fantasy names and dialects.

Acceptance criteria:

- Deploy reports content QA warnings.
- Known intentional names are allowlisted.
- New placeholder/source-leak issues are caught before publish.

### 18. Normalize duplicate titles and ambiguous pages

Observed in the search index:

- duplicate titles such as `Zevi`, `Azar`, `Gyles`, and `The Muddy River`
- repeated generic headings like `Excalidraw Data`
- placeholder titles such as `(XXX) Species Details`

Recommended fix:

- Add disambiguating subtitles or generated title suffixes where duplicate names are intentional.
- Use metadata-driven display titles for duplicates, e.g. `Zevi (Deno'qai)` or `Azar (dwarven deity)`.
- Suppress headings created by source-only formats.

Acceptance criteria:

- Search results and browser titles are distinguishable.
- Intentional duplicates remain allowed but clear.

## Priority 6: Build and Deployment Guardrails

### 19. Add a public-site smoke test

Recommended checks after deploy or before publish:

- Fetch homepage and representative pages.
- Assert status 200.
- Record HTML size.
- Count nav links.
- Check search index size.
- Check for `Toc` in search results for common queries.
- Check top-tab target URLs.
- Check empty secondary sidebar behavior.
- Check for public placeholder/source strings.
- Check 404 page base-path links.

Acceptance criteria:

- A single command produces a concise site-health report.
- Regressions are visible before or immediately after publish.

### 20. Add link and asset checks

Recommended checks:

- Internal links resolve.
- Old known paths redirect.
- Images load.
- Published media over a size threshold is reported.
- Alt text exists for meaningful images.
- No `.DS_Store` or local metadata files are published.

Acceptance criteria:

- Broken links and oversized assets are caught before deploy.
- The report distinguishes intentional downloads from accidental heavy inline assets.

### 21. Revisit export cleanup policy

Current `website.json` has `"clean_docs": false`. That may be intentional, but it increases the risk of stale generated files staying public.

Recommended fix:

- Prefer manifest-driven cleanup: delete generated files that are no longer in the current export manifest, while preserving explicitly tracked manual files.
- Keep manual files in a clearly separate directory or list.
- Add a dry-run cleanup command before enabling destructive cleanup.

Acceptance criteria:

- Removed or renamed source pages do not linger indefinitely.
- Manual docs are protected.
- Cleanup behavior is auditable.

## Suggested Implementation Sequence

### Phase 1: Hygiene and navigation

1. Exclude source-only asset pages.
2. Exclude placeholder/draft pages.
3. Add top-level section landing pages.
4. Fix 404 base-path behavior and redirect obvious old paths.
5. Hide empty right sidebars.

### Phase 2: Performance

1. Remove `toc/` and source pages from search.
2. Shorten global nav rendering.
3. Add asset-size reporting.
4. Optimize largest images.
5. Tile the world map.

### Phase 3: Better lookup tools

1. Generate People, Places, Sessions, Items, and Events indexes.
2. Add search filters/type labels.
3. Improve backlinks grouping.
4. Improve treasure and session layouts.

### Phase 4: Polishing

1. Refine homepage as a "start here" and quick-reference dashboard.
2. Add map controls and location search.
3. Normalize duplicate titles and metadata.
4. Add ongoing content QA allowlist and reports.

## Highest-Leverage First Tickets

1. `People` top tab should open a People directory, not `Adina`.
2. Remove generated `Toc` from search results.
3. Exclude Excalidraw/source asset pages from public output.
4. Exclude `(XXX)` placeholder species pages from public output.
5. Hide empty right sidebar when no TOC/backlinks exist.
6. Add a published-site smoke test that reports homepage size, search index size, nav-link count, and placeholder/source leaks.
7. Replace single-image world map delivery with tiled map delivery.

## Validation Checklist

- Top tabs open intentional overview pages.
- Homepage HTML is substantially smaller than the current roughly 808 KB response.
- Search index is substantially smaller than the current roughly 6.2 MB response.
- Search for a person does not return `Toc` as a high-ranking result.
- No public page title contains `(XXX)` unless explicitly allowlisted.
- No public page contains Excalidraw plugin instructions.
- 404 page links include `/taelgarverse/` and the logo loads.
- Empty secondary sidebars do not reserve layout space.
- World map initial load does not require downloading a roughly 27 MB image.
- Build output reports oversized assets, broken links, and unresolved placeholders.
