## Display issues

color scheme - think about?
  - add dark mode?

double-check toc and other setup; maybe want nav to be shorter/cleaner? maybe want to include other species pages?

## Improvements

leaflet improvements:
  - add measure tool
  - add tiles to make it easier to use big images
(look at code from the old taelgar map page)

figure out if it is possible to hide the right hand nav entirely on pages where both toc and backlinks are empty

separate out requirements for website build and requirements for export_vault.py

## Bugs

backlinks nav weird spacing bug

## Things that might be issues but probably not worth fixing in code:

possible issue with nav generation: if you unlist a bunch of files, you can end up with nav entries that have a top level directory with no content, which causes literate nav to throw an error in the mkdocs build. probably solution is to manually correct

## Content
