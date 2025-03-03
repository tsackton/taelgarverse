---
headerVersion: 2023.11.25
tags: [place, status/needswork/wip]
displayDefaults: {defArt: the}
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: none
dm_notes: none
title: Western Green Sea
---
# The Western Green Sea
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A region in Taelgar  
</div>




The halfling story of the western [Green Sea](<../green-sea.md>) is one of mariners and sailors, crumbing [coastal cities](<realms/cymea.md>) and proudly independent [Skaer](<realms/skaer.md>), numerous settlements along the coast, and mystery and danger inland. This is a maritime region, and the Green Sea itself dominates the culture and topography of the region.
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

            var bounds = [[[0, 0], [3220, 1753]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/region-west-green-sea.png', bounds).addTo(map);
            map.setView( [1900, 800], -2);
        })
</script>



## Topography and Major Features
_See more: [Green Sea](<../green-sea.md>), Cymean Peninsula, ~Cymean Archipelago~, [Skaerhem](<skaerhem/skaerhem.md>)_

Halfling traders love this land, the coastal waters of their ancient home on the [Green Sea](<../green-sea.md>), and it is from the halfling sailors that we take this geography. The sailors speak of the two major island chains in this part of the [Green Sea](<../green-sea.md>) often:

* [Skaerhem](<skaerhem/skaerhem.md>), a volcanic archipelago of many small and medium sized islands, tricky to navigate between
* ~Cymean Archipelago~, dominated by the large island of ~Cymean Archipelago Main Island~

(_The geography of the Cymean Archipelago is still to be invented - Eds.)

Separately, a variety of coastal lands are included here:
* The shores around the [Skaer Islands](<skaerhem/skaerhem.md>), including the ~Skaer Northcoast Penisula~ and the ~Skaer Shores~ north of the ~Vostok Coastal River~ are mostly coastal flatlands with mountains behind them
* The Cymean Peninsula is divided by the [Plataca Hills](<cymea/plataca-hills.md>) and separated from the south by the ~Cymea Border Mountains~

_(The southern Cymean plains are well defined, but not yet invented! Stay tuned. - Eds)_

## Civilizations and Cultures
_See more: [Skaer](<realms/skaer.md>), [Cymea](<realms/cymea.md>), ~South Cymea~_

The halfling story of the western [Green Sea](<../green-sea.md>) is one of mariners and sailors, crumbing [coastal cities](<realms/cymea.md>) and proudly independent [Skaer](<realms/skaer.md>), numerous settlements along the coast, and mystery and danger inland. 

The waters of the Green Sea here are dominated by halfling sailors and [Tollen](<../greater-sembara/tollen/tollen.md>) ships, making trading voyagers to [far](<../northern-green-sea/ursk/ursk.md>) [off](<../eastern-green-sea/medju.md>) lands. But Skaer sailors are common as well, often young Skaer on voyages of self-discovery, as well as Skaer vessels fishing or traveling. The once-mighty [Cymean](<realms/cymea.md>) navies are reduced, but along the coastlines south of the [Straits of Cymea](<./straits-of-cymea.md>), Cymean sailors and vessels are still seen, especially amongst the ~Cymean Archipelago~.

_(The halfling details of the southern coasts in this region is missing as it hasn't been invented yet. - Eds)_

In the north, the halflings say, the [Skaer Islands](<skaerhem/skaerhem.md>) are safe, and a good source of [rare metals](<../../things/materials/skaer-steel.md>) - but unwelcoming to outsiders looking to stay permanently. Those who do not worship the ocean god [Kaikkea](<../../gods-and-religions/gods/incorporeal-gods/kaikkea.md>) rarely find a home amongst the volcanoes and rocky islands of [Skaerhem](<skaerhem/skaerhem.md>). 

The Cymean Peninsula, and the ~Cymean Archipelago~  is a land of humans, long Drankorian provinces, and later a maritime power, it is now a place in decline. The numerous cities there are loosely called [Cymea](<realms/cymea.md>) by the halflings, but a variety of different city-states squabble for dominance.

_(The halflings would know the details of Cymea, including what non-humans live amongst the humans, but it hasn't been invented yet. - Eds.)_

South of the ~Cymea Border Mountains~, lies more human lands, once Drankorian provinces and later, after the fall of Drankor, traders with the cities of the [Istabor Alliance](<../../history/istabor-alliance.md>). Since the destruction of [Isingue](<../upper-istaros/isingue.md>) during the [Great War](<../../events/1500s/great-war.md>), this land is diminished.

_(The halflings would know the details of South Cymea, including what non-humans live there, but it hasn't been invented yet. - Eds.)_

Inland of the human settlements, the land turns dangerous, and halflings warn travelers away. 
## Climate

{descriptive in world text about climate}


## Major Historical Eras
The story of the [Skaer](<realms/skaer.md>) is well attested in religious and legendary sagas on the island, but independent verification of the facts is often difficult or impossible. The history of the [Cymean](<realms/cymea.md>) realms is difficult to untangle as many stories and chronicles have been written to justify modern events, and the truth of these chronicles is often questionable. 

That said, historians in [Tollen](<../greater-sembara/tollen/tollen.md>) will agree on at least a broad story:
#### Skaer Era
_Before CY 4535_
The [Skaer](<realms/skaer.md>) settled the [Skaer Islands](<skaerhem/skaerhem.md>) in the ancient days before the [Downfall](<../../events/ancient/the-downfall.md>), one of several human cultures that arose from the great Mariner Exodus from [Hkar](<../../history/pre-downfall/hkar.md>). The Skaer established an maritime empire centered on the [Vostok](<../greater-sembara/vostok/vostok.md>) coast and the [Western Gulf](<../greater-sembara/western-gulf.md>), but also stretching as far south as the ~Cymea Border Mountains~ and as far west as [Embry](<../greater-sembara/sembara/heartlands/embry.md>). The Skaer claim their empire included the ~Cymean Archipelago~, but some [Cymean](<realms/cymea.md>) sources often describe the archipelago as uninhabited when the Drankorians arrived. Other sources claim the ~Cymean Archipelago~ was never Skaerish or Drankorian.

(_The details of what these "other sources" say is known but not yet invented. - Eds.)_
#### Drankorian Era
_CY 4535 - 5192_
As the Drankorian Empire expanded north, coastal provinces in the lands left behind by the vanished non-human empires ([Alcarinquë](<../../history/pre-downfall/alcarinque.md>) and the ~Ancient Lizardfolk Swamp~) were established quickly, although sources disagree as to the exact founding dates. Many local Cymean sources ascribe unrealistically early founding dates (such as DR 2 or DR 100) to local cities and provinces but few believe these.

However, by DR 402 (CY 4535) the well-attested [Treaty of Marhavn](<../../events/400s/402/treaty-of-marhavn.md>) was signed in [Tollen](<../greater-sembara/tollen/tollen.md>), which formalized that withdrawal of the [Skaer](<realms/skaer.md>) from all lands and seas west of the [Volta](<../greater-sembara/rivers/volta-watershed/volta.md>) and south of the [Straits of Cymea](<./straits-of-cymea.md>). The [Skaer](<realms/skaer.md>) retreated in this period, and although numerous Skaer sailing vessels were seen along the coasts of [Vostok](<../greater-sembara/vostok/vostok.md>) and crossing between the islands of [Skaerhem](<skaerhem/skaerhem.md>), the western shores and bays of the [Green Sea](<../green-sea.md>) were dominated by the Drankorians, according to modern [Cymean](<realms/cymea.md>) histories. 

_(Some the Cymean sources that define a Drankorian dominance may not be accurate, but alternative versions have not been invented yet! - Eds.)_
#### Cymean Era
_CY 5192 - CY 5678_
After the fall of Drankor in DR 1059, [Cymea](<realms/cymea.md>) emerged as a major maritime power, and although the [Skaer](<realms/skaer.md>) attempted to expand in this period as well, they were not able to restore the ancient Skaer empire, and instead mostly raided the coasts of [Sembara](<../greater-sembara/sembara/sembara.md>) and [Tyrwingha](<../greater-sembara/tyrwingha/tyrwingha.md>). 

By the time of the [Great War](<../../events/1500s/great-war.md>), it was [Cymea](<realms/cymea.md>), not the [Skaer](<realms/skaer.md>), who dominated the seas.  

_(The sources for this period, including when exactly Cymea recovered from the fall of Drankor, and what Cymean cultures were competing or cooperating is hopelessly confused, and the Editors have not attempted here to untangle a most likely true version)_
#### Tollish Era
_(CY 5678 - Present)_
In the aftermath of the [Great War](<../../events/1500s/great-war.md>), [Cymea](<realms/cymea.md>) suffered much, and was never able to reclaim its place as a maritime power. Instead, the navies of [Tollen](<../greater-sembara/tollen/tollen.md>) filled the gap, and in the modern day it is [Tollen](<../greater-sembara/tollen/tollen.md>) navies that dominate [Western Cymea](<realms/western-cymea.md>) and the shipping lanes of the western [Green Sea](<../green-sea.md>).

Although the [Skaer](<realms/skaer.md>) continue to live on their islands in relative isolation, they are no longer a power on the western [Green Sea](<../green-sea.md>).

_(Whether any southern Cymean provinces are currently able to challenge Tollish dominance is known, but not yet invented! - Eds)_

