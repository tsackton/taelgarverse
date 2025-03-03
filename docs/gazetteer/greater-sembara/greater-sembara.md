---
headerVersion: 2023.11.25
tags: [place, status/check/tim]
displayDefaults: {defArt: ''}
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: joint
dm_notes: none
title: Greater Sembara
---
# Greater Sembara
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A region in Taelgar  
</div>


Greater Sembara is an ancient land blessed with mild weather, amble rain, and rich fertile soil. Largely unchanged by the upheavals of the [Great War](<../../events/1500s/great-war.md>), farmers plant winter wheat and summer millet and soybeans largely as they have for thousands of years. The rolling hills and fertile river valleys are dotted with small cities and prosperous market towns, and halflings traders ply the roads and waterways. This is a land defined by its rivers: the [Kem](<vostok/kem.md>), [Volta](<rivers/volta-watershed/volta.md>), [Teft](<rivers/teft.md>), [Semb](<rivers/semb-watershed/semb.md>), [Wisford](<sembara/heartlands/wisford.md>), and [Enst](<rivers/wistel-enst-watershed/enst.md>) in particular. 
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

            var bounds = [[[0, 0], [2503, 2188]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/sembara-region-map.png', bounds).addTo(map);
            map.setView( [911, 1100], -1);
        })
</script>



## Topography and Major Features
_See more: [Mostreve Hills](<./mostreve-hills.md>), [Western Gulf](<./western-gulf.md>), [Wistel](<rivers/wistel-enst-watershed/wistel.md>), [Enst](<rivers/wistel-enst-watershed/enst.md>), [Volta](<rivers/volta-watershed/volta.md>), [Semb](<rivers/semb-watershed/semb.md>), [Kem](<vostok/kem.md>), ~Zimkova Foothills~, ~North Vostok Mountains~, ~Vostok Plateau~_

Five major river systems, fed by the summer rains, and melting snowpack and glaciers from the mountains, define the region: 
* in the northeast, the [Kem](<vostok/kem.md>) and [Niva](<vostok/niva.md>) rivers spill down from the ~North Vostok Mountains~  and the ~Vostok Plateau~ to the [Green Sea](<../green-sea.md>)
* further west, the mighty [Volta](<rivers/volta-watershed/volta.md>), wide and cold, flows past Tollen into the ~Gulf of Tollen~
* south of the Volta the swift flowing [Teft](<rivers/teft.md>), the placid [Semb](<rivers/semb-watershed/semb.md>) and the mighty [Wistel](<rivers/wistel-enst-watershed/wistel.md>) flow past [fertile farmland](<sembara/heartlands/heartlands.md>)
* and finally in the south, the [Enst](<rivers/wistel-enst-watershed/enst.md>) defines the borders of the rich farmlands, as it flows from the [Sentinels](<../sentinel-range.md>) and the [Mostreve Hills](<./mostreve-hills.md>) to merge with [Wistel](<rivers/wistel-enst-watershed/wistel.md>) before the great marshy delta of the [Ozabal Swamp](<./ozabal.md>).

The rise and fall of the land further defines the region:
* in the west, the towering [Sentinel Range](<../sentinel-range.md>) rises thousands of feet into the air. Few travelers cross these high peaks, save on the guarded underground roads of the dwarves. 
* east of the mountains lie the ~Zimkova Foothills~, a rough land that slowly descends to a line of hills in western and northern Sembara: the [Aveil Ridge](<sembara/barony-of-aveil/aveil-ridge.md>), the [Aine Hills](<sembara/aine-hills.md>), the [Braebein](<sembara/braebein.md>), and the ~Volta Hills~, and which rises in the east to form the ~North Vostok Mountains~
* east of the ~North Vostok Mountains~, the high ~Vostok Plateau~ is dry and cold and is home to the high altitude ~Lake Vostok~
* east of the ~Vostok Plateau~, the [Svinjo Mountains](<../northern-green-sea/svinjo-mountains.md>) form a rarely passed boundary with the forests to the north and east
* south of the [Svinjo Mountains](<../northern-green-sea/svinjo-mountains.md>), the ~Coastal Vostok Hills~ are rugged and isolated from the rest of [Vostok](<vostok/vostok.md>)
* along the [Green Sea](<../green-sea.md>) coast, the ~South Vostok Hills~ stretch north towards the ~Volta Hills~ to form a hilly and difficult terrain to the east of [Tollen](<tollen/tollen.md>), separating the forests of [Vostok](<vostok/vostok.md>) from the rest of the region
* in the far south, beyond the [Western Gulf](<./western-gulf.md>), lie the [Mostreve Hills](<./mostreve-hills.md>), a hilly and forested land that separates the region from the dangerous [Plaguelands](<../upper-istaros/plaguelands.md>) to the south

Between these high points are three distinct lowland regions:
* the fertile riverlands of Sembara lie between the [Mostreve Hills](<./mostreve-hills.md>) in the south, the ~Zimkova Foothills~ in the west, and the [Volta](<rivers/volta-watershed/volta.md>) in the north
* the plains and scrublands of [Maseau](<duchy-of-maseau/duchy-of-maseau.md>) lie north of the Maseau Gap, between the [Sentinels](<../sentinel-range.md>) to the west, the Maseau Gap to the south, and the [Mostreve Hills](<./mostreve-hills.md>) to the east
* the coastal plains where the [Kem](<vostok/kem.md>) spills into the [Green Sea](<../green-sea.md>), and which gradually rise through forests and steppe to the ~Zimkova Foothills~, the ~North Vostok Mountains~, and the ~Vostok Plateau~

Finally, the relatively sheltered and calm [Western Gulf](<./western-gulf.md>), separated from the wider [Green Sea](<../green-sea.md>) by the narrow [Straits of Cymea](<../western-green-sea/straits-of-cymea.md>) is crowded with [Tollish](<tollen/tollen.md>) traders and Sembaran fisherfolk, and [halflings](<../../species/halflings.md>) from far and wide. 

## Civilizations and Cultures
_See more: [Sembara](<sembara/sembara.md>), [Tyrwingha](<tyrwingha/tyrwingha.md>), [Addermarch](<addermarch/addermarch.md>), [Tollen](<tollen/tollen.md>), [Vostok](<vostok/vostok.md>), [Zimkova](<zimkova/zimkova.md>), [Duchy of Maseau](<duchy-of-maseau/duchy-of-maseau.md>)_

This is a heavily peopled land. In the north, amongst the foothills of the [Sentinels](<../sentinel-range.md>), the Zimka people live a traditional life in the highlands of [Zimkova](<zimkova/zimkova.md>), and have formed three realms: [Breva](<zimkova/breva.md>), [Lavnoch](<zimkova/lavnoch.md>), and [Ardlas](<zimkova/ardlas.md>). South and east of the Zimkovan realms is [Sembara](<sembara/sembara.md>), a rich and powerful monarchy with a long history. Sembara is bordered to its south by the ancient fey-protected realm of [Tyrwingha](<tyrwingha/tyrwingha.md>), as well as the independent earldom of [Addermarch](<addermarch/addermarch.md>) and the [Duchy of Maseau](<duchy-of-maseau/duchy-of-maseau.md>), once under the suzeranity of Sembara, but now an independent land populated by refugees from the [Isingue](<../upper-istaros/isingue.md>) and the [Plaguelands](<../upper-istaros/plaguelands.md>). To the east is the famous [Free City of Tollen](<tollen/tollen.md>) and past Tollen, the lightly populated coasts and forests of [Vostok](<vostok/vostok.md>).

There are two large and ancient lizardfolk settlements: [Ozabal](<./ozabal.md>), in the delta of the [Wistel](<rivers/wistel-enst-watershed/wistel.md>), and [Latazaro](<./latazaro.md>), on the eastern borders of [Tyrwingha](<tyrwingha/tyrwingha.md>). Beyond these settlements, lizardfolk are common along the river valleys. There are three major [dwarven](<../../species/dwarves.md>) realms on the western borders, and dwarves are common in the human cities of Sembara, although there are no large, independent dwarven realms within Greater Sembara. Halflings are commonly seen plying their trade along the roads and rivers of the region, as well sailing across the [Western Gulf](<./western-gulf.md>) and into the wider [Green Sea](<../green-sea.md>). Although [stoneborn](<../../species/stoneborn.md>) are never common, they too are seen in the cities of Greater Sembara, although, like dwarves, there are no large stoneborn communities within the region.
## Climate
In general, the region’s climate is temperate, with four distinct seasons, dry winters, and wet summers. During the summer months, a monsoon wind blows from the [Green Sea](<../green-sea.md>), bringing ample rainfall. In winter, high pressure builds over the northern steppe, and the west winds that blow over the mountains are dry and cold. 

The climate of the region is shaped by several major factors:

-   In the summer, warm winds blow from the [Green Sea](<../green-sea.md>), bringing heavy rain and muggy air   
-   In the winter, a high pressure system develops over the northern plateau, and the winds come from the west over the [Sentinel Range](<../sentinel-range.md>). This is a cold and dry season.
-   The [Green Sea](<../green-sea.md>), in the east, provides a moderating influence, especially on the coastal plains.



## Major Historical Eras
_See more: Humanity in Greater Sembara and [Timeline of Sembaran History](<../../history/timeline-of-sembaran-history.md>)_

When humans first came to this region it was already a thriving land, with the ancient elven forest of [Alcarinque](<../../history/pre-downfall/alcarinque.md>) to the south, and the ~Ancient Lizardfolk Swamp~ filling what would become the [Enst](<rivers/wistel-enst-watershed/enst.md>) and [Wistel](<rivers/wistel-enst-watershed/wistel.md>) river valleys. Halflings sailed the [Green Sea](<../green-sea.md>) to the east, and dwarves delved deep in [Sentinels](<../sentinel-range.md>)  to the west. In the years before the [Downfall](<../../events/ancient/the-downfall.md>) to cultures of humans met and mixed: the ~Northerner~, traveling east from the high passes over the [Sentinels](<../sentinel-range.md>), and the ~Mariners~, sailing west from the [far reaches of the Green Sea](<../eastern-green-sea/eastern-green-sea.md>). From this melting pot, two distinct cultures emerged: the Zimka, clinging to tradition in the north and the [Tollish](<tollen/tollen.md>) culture, growing around the city of Tollen and the Sembaran coast. 






