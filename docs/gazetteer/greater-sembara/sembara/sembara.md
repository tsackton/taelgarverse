---
headerVersion: 2023.11.25
tags: [place, status/cleanup/incomplete]
displayDefaults: {ruledBy: 'Ruled by: <name> <((since )startDate())>'}
name: Sembara
typeOf: realm
whereabouts: Greater Sembara
dm_owner: shared
dm_notes: important
title: Sembara
---
# Sembara
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A realm in [Greater Sembara](<../greater-sembara.md>)  
</div>


Sembara is a large and properous realm in the [Western Green Sea](<../../western-green-sea/western-green-sea.md>) situated amongst five great rivers that pour down from the [Sentinels](<../../sentinel-range.md>) to the [Western Gulf](<../western-gulf.md>).  One of the few realms in the east to survive the Blood Years largely intact, Sembara is a hereditary monarchy with a large nobility and considerable prowess at arms. Sembara invests significantly in defensive fortifications in the [Western Marches](<western-marches/western-marches.md>), on the western (mountain) borders of the realm. These areas are under threat from hobgoblins, aberrations, and other incursions from the wilds, and the defense of these borders is a major concern for the ruling class. While most of the Sembaran population descends from the Drankorians who conquered the land, in the highlands traces of the original culture survive. And in Tyrwingha, ancient connections to the Archfey who once protected the realm still linger.


-   Inward agricultural focus. Sphere of influence pushing more west and interior than into the [Western Gulf](<../western-gulf.md>) - limited or no real navy, small scale fishing but not a major part of the culture or economy (think China)
    
-   Trade devalued -- historical analog: ancient Rome, where wealth from land was much more significant than wealth from trade
    
-   Very fertile soil and rich agricultural harvests in the heart of Sembara drive the economy. Major exporter of foodstuffs and raw materials. Also higher population density than anywhere else between the good soil and the miracle that the heartland of Sembara has never been overrun by anything too bad since even before the Drankorians relatively gently took over
    
-   Landed barons and dukes dominate local politics
    
-   Very good relationship with halflings, who are the favored traders, and have formal rights of free passage and access to markets across Sembara.
    
-   Cooler relationship with dwarves -- not at all hostile, but dwarves are more aligned with the highland kingdoms, esp Ardlas and Lavnoch
    
-   Close relationship with lizardfolk, who have played an outsized role in Sembara’s history and establishment of [House of Sewick](<../../../groups/sembaran-noble-houses/house-of-sewick.md>).
    
-   Elves very rare in Sembara, with little direct political contacts; largest Elven settlement nearby is the semi-mythical kingdom of [Orenlas](<../../upper-istaros/orenlas/orenlas.md>) in the forests surrounding a supposedly enchanted lake south/southeast of Tyrwingha in the Cymea foothills.
    
-   Stoneborn are also very rare in Sembara; mostly in the high peaks north of Ulrich devastation; more common in Northlands than elsewhere, coming from the [Vostok](<../vostok/vostok.md>) highlands


## Map

<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin="" ></script>


<div id="region-map-sembara" class="ext-map-container"></div>

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function () {

            var map = L.map('region-map-sembara', {
                crs: L.CRS.Simple,
                minZoom: -1,
                maxZoom: 3
            });

            
            // this bounds must be in the form [y,x], [y,x]
            // it will typically be, in the yaml, 
            // bounds:
            //  - [0,0]
            //  - [100,100]

            var bounds = [[[0, 0], [2468, 2308]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/sembara-regions.png', bounds).addTo(map);
            map.setView( [1200, 1200], 0);
        })
</script>







