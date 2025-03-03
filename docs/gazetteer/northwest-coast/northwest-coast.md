---
headerVersion: 2023.11.25
tags: [place, status/needswork/wip]
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: none
dm_notes: none
title: Northwest Coast
---
# The Northwest Coast
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A region in Taelgar  
</div>




{intro text}
## Map

<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin="" ></script>


<div id="region-map-taelgar" class="ext-map-container"></div>

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function () {

            var map = L.map('region-map-taelgar', {
                crs: L.CRS.Simple,
                minZoom: -2,
                maxZoom: 0
            });

            
            // this bounds must be in the form [y,x], [y,x]
            // it will typically be, in the yaml, 
            // bounds:
            //  - [0,0]
            //  - [100,100]

            var bounds = [[[0, 0], [2374, 2680]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/region-northwest-coast.png', bounds).addTo(map);
            map.setView( [911, 1500], -1);
        })
</script>


## Topography and Major Features
_See more: [Mawakel Peninsula](<mawar-confederacy/mawakel-peninsula.md>), ~Mawakel Border Mountains~, [Tawir Forest](<./tawir-forest.md>), [Erbalta Plains](<./erbalta-plains.md>), ~North Bay~



## Civilizations and Cultures
_See more: [Mawar Confederacy](<mawar-confederacy/mawar-confederacy.md>), [Chardonian Empire](<../greater-chardon/chardonian-empire/chardonian-empire.md>)_

Although in the years before the [Great War](<../../events/1500s/great-war.md>) and the [Blood Years](<../../events/1500s/blood-years.md>) that followed this was a diversely populated land, few survived the scourge of hobgoblins, [orcs](<../../species/orcs.md>), and worse that plagued the land after the fall of [Cha'mutte](<../../people/extraplanar-powers/cha-mutte.md>). Today, most humans owe allegiance to the expanding [Chardonian Empire](<../greater-chardon/chardonian-empire/chardonian-empire.md>), of which [Voltara](<./voltara.md>) is the leading city in the region. On the [Mawakel Peninsula](<mawar-confederacy/mawakel-peninsula.md>), the [Mawar Confederacy](<mawar-confederacy/mawar-confederacy.md>) stands fiercely independent. A significant group of salt lizardfolk live in the tidal flats and salt marshes of the [Mawakel Peninsula](<mawar-confederacy/mawakel-peninsula.md>), but there are few dwarves, elves, or stoneborn in this region.


## Climate

{descriptive in world text about climate}



## Major Historical Eras
_See more: {links}_

{descriptive text of major era}

