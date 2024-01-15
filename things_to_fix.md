## Display issues

color scheme - think about?
  - add dark mode?

double-check toc and other setup; maybe want nav to be shorter/cleaner? maybe want to include other species pages?

## Improvements

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

## Bugs

backlinks nav weird spacing bug

prep for export bug that generates blank grid gards (marcella is an example)

## Things that might be issues but probably not worth fixing in code:

possible issue with nav generation: if you unlist a bunch of files, you can end up with nav entries that have a top level directory with no content, which causes literate nav to throw an error in the mkdocs build. probably solution is to manually correct

## Content

need a landing page for history

WARNING -  Doc file 'toc.md' contains a relative link 'cosmology/multiverse/spiritual-realms/spiritual-realms.md', but the target is not found among documentation files.
WARNING -  Doc file 'toc.md' contains a relative link 'cosmology/multiverse/energy-realms/energy-realms.md', but the target is not found among documentation files.
WARNING -  Doc file 'toc.md' contains a relative link 'time/holidays-and-festivals/mos-numena-feast-days.md', but the target is not found among documentation files.
WARNING -  Doc file 'toc.md' contains a relative link 'time/holidays-and-festivals/viatela.md', but the target is not found among documentation files.
WARNING -  Doc file 'toc.md' contains a relative link 'cosmology/religions/tanshi.md', but the target is not found among documentation files.
WARNING -  Doc file 'toc.md' contains a relative link 'cosmology/gods/high-gods/high-gods.md', but the target is not found among documentation files.
WARNING -  Doc file 'toc.md' contains a relative link 'people/pcs/great-war/heroes-of-the-great-war.md', but the target is not found among documentation files.