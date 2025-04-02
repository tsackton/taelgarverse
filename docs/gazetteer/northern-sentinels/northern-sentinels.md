---
headerVersion: 2023.11.25
tags: [place, status/check/mike]
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




Even among the halflings, few reliable tales come from the northern reaches of the great [Sentinel Range](<../sentinel-range.md>). This is a wild and unpeopled land, haunted by the scars of the [Great War](<../../events/1500s/great-war.md>), and spoken of uncertainly, in hushed tones even among the adventurous. What stories do drift south speak of vast pine forests, uninhabitable bogs, and the tall mountain peaks of the [northern Sentinels](<../sentinel-range.md#northern-sentinels>), painting a picture of a rugged and beautiful, but inhospitable and dangerous, landscape. 

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



Even among the halflings, few have dared to map this region, nestled on the west side of the [Sentinel Range](<../sentinel-range.md>), and even among the most daring traders, few find profit traveling these dangerous lands. Much of the region dominated by the northern [Sentinels](<../sentinel-range.md>) and the forests and rivers on their western slopes, making travel slope and difficult. The mountains themselves are snowy and rocky, with the highest peaks cold and frozen year round. 

The information reported here largely derives from the scattered human tribes in the area speak of the dangerous forests and swamps:

- The ~Pandar Volcanic Range~, once the borders of [Cha'mutte](<../../people/extraplanar-powers/cha-mutte.md>)'s realm, now a place all sensible folk fear.
* The [Forest of Nightmares](<./forest-of-nightmares.md>), said to be haunted, cursed by [Cha'mutte](<../../people/extraplanar-powers/cha-mutte.md>) during the [Great War](<../../events/1500s/great-war.md>).
* The [Blackwater Fens](<./blackwater-fens.md>), a dank bog from which the Nahadi arises.

There are two major river systems that originate in this region:

- The [K'eye](<./k-eye.md>) in the local language, and translated by halflings as the Red River, flows from the [Sentinels](<../sentinel-range.md>) to the ~North Bay~. 
- The Nahadi in the local language, and translated by halflings at the Great River, flows from its origins in the [Blackwater Fens](<./blackwater-fens.md>) south to [Lake Valandros](<../greater-chardon/lake-valandros.md>) and beyond. 
## Civilizations and Cultures



There are few humans in this region, although the northern Deno'qai tribes make their home here. The dwarven kingdom of [Fahnukan](<./fahnukan.md>) lies beneath the northern Sentinels, and [stoneborn](<../../species/stoneborn.md>) are known to live in the highlands and foothills of the [Sentinels](<../sentinel-range.md>).


## Major Historical Eras
_See more: Pandar_

In the ancient days before [The Downfall](<../../events/ancient/the-downfall.md>) it is said that the northerners crossed the [Sentinels](<../sentinel-range.md>) at the ~Unnamed North Sentinel Pass~  in their eastward migrations, but the truth of this is unclear.

In the long years leading up to the [Great War](<../../events/1500s/great-war.md>) the land of Pandar was [Cha'mutte's](<../../people/extraplanar-powers/cha-mutte.md>) home, and hobgoblins and enslaved kenku were common sights. Since the [Great War](<../../events/1500s/great-war.md>) this area has been lightly populated and full of dangers.
## Climate
The mountains here are snowy, rocky, and volcanic, marked by pine forests on the western slopes and long, bitter winters. The forests and fens to the west are marked by cold, snowy winters and short, wet summers. There is little farmable land here.



