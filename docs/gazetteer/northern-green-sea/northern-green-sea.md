---
headerVersion: 2023.11.25
tags: [place, status/check/tim]
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: joint,tim
dm_notes: important
title: Northern Green Sea
---
# The Northern Green Sea
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A region in Taelgar  
</div>


The northern coastline of the [Green Sea](<../green-sea.md>) is a strange place, where even halfling traders rarely go. The land of [Ursk](<ursk/ursk.md>) is unwelcoming even to halflings, and few have traveled its roads and rivers. North of [Ursk](<ursk/ursk.md>) is a cold land of mighty forests and rivers, rushing in the brief summer but frozen during the long winter. Our reports come from the few halfling travelers and traders who brave the cold. 
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

            var bounds = [[[0, 0], [1423, 3341]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/north-green-sea-region.png', bounds).addTo(map);
            map.setView( [697, 1700], -2);
        })
</script>



## Topography and Major Features
~North Ursk Border Mountains~, [Ket](<rivers/ket.md>), [Svinjo Mountains](<./svinjo-mountains.md>), [~Northern Boreal Forest~](<./northern-boreal-forest.md>)

## Civilizations and Cultures
_See more: [Ursk](<ursk/ursk.md>), Vargaldi_

The northern coasts of the [Green Sea](<../green-sea.md>) are a cold and unforgiving land, and it is a place to be careful and on your guard. The land of [Ursk](<ursk/ursk.md>) is closed to outsiders, and halfling traders report much fear and suspicion of anyone expressing interest in venturing beyond the trading enclaves of [Praznitsky](<ursk/praznitsky.md>) and [Zakat](<ursk/zakat.md>). The wizards rulers of Ursk, the halflings warn, are not to be disobeyed lightly. 

To the north and west of [Ursk](<ursk/ursk.md>) the forests stretch for hundreds of miles, and there is little safety here. Halflings bring tales of giant bats, dragons breathing frost, and ice worms the size of small boats. Along the [Ket](<rivers/ket.md>) there are whispered tales of scattered humans known as the Vargaldi - but the halflings say they are skittish, and are unwilling to spill their secrets. 

The [Svinjo Mountains](<./svinjo-mountains.md>), the halflings say, should be explored cautiously. The dwarves and stoneborn living here are mostly indentured to the frost giants of [Kaldhalla](<./kaldhalla.md>), who are not forgiving of questioning outsiders. Little profitable trade can be had here and it is best to avoid the area. 
## Climate



## Major Historical Eras

