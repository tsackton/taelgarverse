---
headerVersion: 2023.11.25
tags: [place, status/needswork/wip]
displayDefaults: {defArt: the}
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: none
dm_notes: none
title: Drankorian Hinterland
---
# The Drankorian Hinterland
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A region in Taelgar  
</div>




{intro text}
## Map


<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin="" ></script>


<div id="region-map-drankor" class="ext-map-container"></div>

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function () {

            var map = L.map('region-map-drankor', {
                crs: L.CRS.Simple,
                minZoom: -2,
                maxZoom: 0
            });

            
            // this bounds must be in the form [y,x], [y,x]
            // it will typically be, in the yaml, 
            // bounds:
            //  - [0,0]
            //  - [100,100]

            var bounds = [[[0, 0], [2232, 4429]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/region-drankorian-hinterland.png', bounds).addTo(map);
            map.setView( [1122, 2122], -2);
        })
</script>



## Topography and Major Features
_See more: {links}_

{descriptive text of topography and major features}
## Civilizations and Cultures
_See more: [Drankor](<../../history/drankorian-era/drankorian-empire.md>)


## Climate

{descriptive in world text about climate}



## Major Historical Eras
_See more: {links}_

{descriptive text of major era}

