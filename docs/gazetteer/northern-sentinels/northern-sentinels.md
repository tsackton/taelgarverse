---
headerVersion: 2023.11.25
tags: [place, status/check/tim]
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: tim
dm_notes: important
title: Northern Sentinels
---
# The Northern Sentinels
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A region in Taelgar  
</div>


North of the [Dwarven Kingdoms](<../central-highlands/dwarven-kingdoms/dwarven-kingdoms.md>) and the plains of [Voltara](<../northwest-coast/voltara.md>) is a wild and unpeopled land, haunted with the scars of the [Great War](<../../events/1500s/great-war.md>). Pine forests, swamps, and the tall peaks of the [northern Sentinels](<../sentinel-range.md#northern-sentinels>) dominate the landscape. 


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

            var bounds = [[[0, 0], [2503, 2188]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/north-sentinels-map.png', bounds).addTo(map);
            map.setView( [1250, 1150], -2);
        })
</script>




## Topography and Major Features
_See more: [North Sentinels](<../sentinel-range.md#northern-sentinels>)_

Few have mapped this region, nestled on the west side of the [Sentinel Range](<../sentinel-range.md>). Much of the region dominated by the northern Sentinels and the forests and rivers on the western slopes. The scattered human tribes in the area speak of the dangerous forests and swamps:
* the [Forest of Nightmares](<./forest-of-nightmares.md>), said to be in haunted, cursed by [Cha'mutte](<../../people/extraplanar-powers/cha-mutte.md>) during the [Great War](<../../events/1500s/great-war.md>)
* the [Blackwater Fens](<./blackwater-fens.md>), a dank bog from which the Nahadi arises
## Civilizations and Cultures
_See more: Northern Tribes 

There are few humans in this region, although the northern Deno'qai tribes make their home here. The dwarven kingdom of [Fahnukan](<./fahnukan.md>) lies beneath the northern Sentinels, and [stoneborn](<../../species/stoneborn.md>) are known to live in the highlands and foothills of the [Sentinels](<../sentinel-range.md>).


## Major Historical Eras
_See more: Pandar_

In the ancient days before [The Downfall](<../../events/ancient/the-downfall.md>) it is said that the northerners crossed the [Sentinels](<../sentinel-range.md>) at the ~Unnamed North Sentinel Pass~  in their eastward migrations, but the truth of this is unclear.

In the long years leading up to the [Great War](<../../events/1500s/great-war.md>) the land of Pandar was [Cha'mutte's](<../../people/extraplanar-powers/cha-mutte.md>) home, and hobgoblins and enslaved kenku were common sights. Since the [Great War](<../../events/1500s/great-war.md>) this area has been lightly populated and full of dangers.
## Climate
The mountains here are snowy, rocky, and volcanic, marked by pine forests on the western slopes and long, bitter winters. The forests and fens to the west are marked by cold, snowy winters and short, wet summers. There is little farmable land here.



