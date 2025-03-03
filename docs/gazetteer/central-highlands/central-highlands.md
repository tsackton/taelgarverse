---
headerVersion: 2023.11.25
tags: [place, status/needswork/wip]
displayDefaults: {defArt: the}
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: none
dm_notes: none
title: Central Highlands
---
# The Central Highlands
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

            var bounds = [[[0, 0], [2930, 1876]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/region-central-highlands.png', bounds).addTo(map);
            map.setView( [1500, 900], -2);
        })
</script>



## Topography and Major Features
_See more: {links}_



{descriptive text of topography and major features}
## Civilizations and Cultures
_See more: {links}_

{descriptive text of civilizations and cultures}


## Climate

{descriptive in world text about climate}



## Major Historical Eras
_See more: {links}_

{descriptive text of major era}



---


## Overview

The Central Highlands Region is a land of contrasts, from vast forests dominated by ancient elven trees, to the high, inaccessible peaks of the northern [Sentinels](<../sentinel-range.md>) where only [Stoneborn](<../../species/stoneborn.md>) and frost [Giants](<../../species/unusual-species/giants.md>) can survive. Few people call this region their home: the Deno'qai, who live mostly in small villages among the forests hugging the western foothills of the [Sentinels](<../sentinel-range.md>), and the [Elves](<../../species/elves.md>), who once could be found throughout the woodlands of [Ainumarya](<./ainumarya.md>), and the main inhabitants. The [Sentinel Range](<../sentinel-range.md>) creates a barrier to ...
## Boundaries

The Central Highlands includes the [Sentinel Range](<../sentinel-range.md>), as well as the forests along the western slopes of the mountains, and the east bank and upper watershed of the ~North Nahadi River~.

- To the north, this region is bordered by the cold polar regions of the [Far North](<../faraway-places/far-north.md>). 
- To the east, this region is bordered by the Highland Kingdoms, the The Western Marches of [Sembara](<../greater-sembara/sembara/sembara.md>), and the [Refounded Alliance of Aurbez](<../upper-istaros/refounded-alliance-of-aurbez/refounded-alliance-of-aurbez.md>). 
- To the south, this region is bordered by the plains of [Dunmar](<../greater-dunmar/realms/dunmar/dunmar.md>). 
- To the west, this region is bordered by the [Chardonian Empire](<../greater-chardon/chardonian-empire/chardonian-empire.md>), the northern hinterlands of the [Chardonian Empire](<../greater-chardon/chardonian-empire/chardonian-empire.md>), and the coastal north. 

## Major Features



- [Sentinel Range](<../sentinel-range.md>): The [Sentinel Range](<../sentinel-range.md>) is the dominate feature of the Central Highlands Region, stretching 2300 miles from volcano mountains of the former kingdom of Pandar in the north, to the northern foothills of the Dunmari plains in the south. 
	- The northern section, from roughly Pandar south past the [Forest of Nightmares](<../northern-sentinels/forest-of-nightmares.md>) to the area northeast of the [Blackwater Fens](<../northern-sentinels/blackwater-fens.md>), is snowy, rocky, and volcanic, marked by pine forests on the western slopes and long, bitter winters. 
		- ***Real world analogs:*** This region is at approx. 52 degrees north, and probably has some similarities with the Canadian Rockies, especially Banff and Jasper national parks, including the flat plains to the east of the mountains (int he [Far North](<../faraway-places/far-north.md>)). The volcanic mountains of Pandar share some similarities with the Pacific Ring of Fire, but with a much more magical vibe, and less moderating coastal influence on climate. 
	- The middle section, roughly the area starting west of [Zimkova](<../greater-sembara/zimkova/zimkova.md>) and running south to the desolation west of the [Western Marches](<../greater-sembara/sembara/western-marches/western-marches.md>), is rocky and very tall, with extensive underground development associated with the [Dwarven Kingdoms](<dwarven-kingdoms/dwarven-kingdoms.md>), and more dangerous things. These are stereotypical high mountains. 
		- ***Real world analogs:*** This region stretches from roughly 40 degrees N to 50 degrees N. This is a classic high mountain range, sharing features with the northern Rockies, the Alps, and Patagonia, but even the tallest peaks are unlikely to reach the heights of something like the Himalayas in the real world. 
	- The southern section, covering the area that was once the dwarven kingdom of [Ardith](<dwarven-kingdoms/ardith.md>), from roughly west of [Maseau](<../greater-sembara/duchy-of-maseau/duchy-of-maseau.md>) or [Refounded Alliance of Aurbez](<../upper-istaros/refounded-alliance-of-aurbez/refounded-alliance-of-aurbez.md>) to the end of the [Sentinel Range](<../sentinel-range.md>) north of [Dunmar](<../greater-dunmar/realms/dunmar/dunmar.md>), is full of high, barren peaks that rise sharply from the plains, and is generally dry, with arid regions to the west and south. 
		- ***Real world analogs:*** This is warmer and further south, from approx. 34 degrees N to 38 degrees N. Probably shares some similarities with the dry Andes, or possibly some of the mountains in central Asia, such as Hindu Kush or Pamir Mountains. 
	- The northern and middle sections are separated by a region of lower hills, a more habitable region with mixed forests and rocky slopes, but relatively easy passage between the west and east. This is likely the route by which the early northerners crossed into the Sembaran highlands. 
		- ***Real world analogs***: Perhaps somewhat similar to something like the less mountainous Yellowstone / Montana, or even perhaps the Whites. 
	- The middle and southern sections are separated by the desolate of Urlich, created by [Cha'mutte](<../../people/extraplanar-powers/cha-mutte.md>)'s death. What this actually looks like is currently unknown, but it is dangerous and contains both random isolated mountains and vast chasms, and safe travel is impossible, not only because of dangerous inhabitants but because of unstable terrain. 
		- ***Real world analogs:*** None, although perhaps some bits of Mordor could be a reasonable mental model. 
	- Passes: the [Sentinel Range](<../sentinel-range.md>) is easily crossable only in a few places. 
		- To the north, the gap between the middle section and the northern section is traversable in all seasons, but lightly settled; the northern section itself is extremely inhospitable in the highest peaks.
		- The middle section has passes around ~High Horn~, west of the Highland Kingdoms, and in the area west of the [Western Marches](<../greater-sembara/sembara/western-marches/western-marches.md>). But the latter was disrupted by [Cha'mutte](<../../people/extraplanar-powers/cha-mutte.md>)'s death and is no longer considered passable. 
		- The south section has several routes that cross between the [Refounded Alliance of Aurbez](<../upper-istaros/refounded-alliance-of-aurbez/refounded-alliance-of-aurbez.md>) and northern [Dunmar](<../greater-dunmar/realms/dunmar/dunmar.md>). 
- [Ainumarya](<./ainumarya.md>): A vast forest in the foothills and lowlands west of the [Sentinels](<../sentinel-range.md>), that stretches from the [Elderwood](<./elderwood.md>) in the south to the [Crimson Forest](<./crimson-forest.md>) in the north. Historically a major center of elvish civilization. Most of this region is a dominated by huge conifers and a rich ecosystem. 
	- ***Real world analogs:*** Temperate rainforests, especially the forests of the Pacific Northwest, are probably the best model, albeit with more magic. 
- [Forest of Dreams](<./forest-of-dreams.md>): North of [Ainumarya](<./ainumarya.md>) is the [Forest of Dreams](<./forest-of-dreams.md>), clinging to the western slopes of the [Sentinels](<../sentinel-range.md>) east of the [Erbalta Plains](<../northwest-coast/erbalta-plains.md>) and the [Blackwater Fens](<../northern-sentinels/blackwater-fens.md>), and spreading west along the foothills of Pandar. This forest is cooler and dried than [Ainumarya](<./ainumarya.md>), with cold winters and significant snow at higher elevations. 
	- ***Real world analogs:*** Temperate coniferous forest, especially the pine forests of western Canada and the interior Rockies, and classic mixed forests of the Alps. The lowlands north of the Blackwater Fens are probably more like temperate broadleaf and mixed forests. 




## Climate

The region is climatically dominated by the Sentinel Range, which forms a barrier between the east and west of Taelgar. Entirely inland, this region has a largely [continental climate](https://geodiode.com/climate/continental), generally with balanced rainfall or with wet winters and dry summers at the lower elevations. At higher elevations, the climate is temperate [highlands](https://geodiode.com/biomes/highlands), with the highest peaks covered in ice and snow year round.

***Real world analogs:***
- Mountains of the Pacific Northwest, which have a similar north-south orientation, high peaks, and roughly equivalent latitude
- Canadian Rockies, which mirror the northernmost section of the Sentinel Range