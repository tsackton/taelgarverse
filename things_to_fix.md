Things to fix:

leaflet requires absolute path, need to add taelgarverse to paths? which will break on local builds, but oh well
for testing leaflet locally could set absolute path variable to ""
probably should do this via config, e.g. set a "abs path root" which defaults to "/" but could be set to "/taelgarverse/" or whatever

leaflet improvements:
  - add measure tool
  - add tiles to make it easier to use big images
(look at code from the old taelgar map page)

special handling of images:
  - probably want to compress and resize images
  - keep the web versions in taelgarverse repo
  - start export script by copying web-images to assets
  - only copy files that don't exist, and only copy files that are linked from a page

(should probably go through manually and delete images that aren't linked, as a start, and compress some images that are badly too large for need)
  
color scheme - think about?
  - add dark mode?

double-check toc and other setup; maybe want nav to be shorter/cleaner? maybe want to include other species pages?

need a landing page for history

backlinks nav weird spacing bug

prep for export bug that generates blank grid gards (marcella is an example)

possible issue with nav generation: if you unlist a bunch of files, you can end up with nav entries that have a top level directory with no content, which causes literate nav to throw an error in the mkdocs build. probably solution is to manually correct