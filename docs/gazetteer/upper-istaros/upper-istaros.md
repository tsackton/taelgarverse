---
headerVersion: 2023.11.25
tags: [place, status/needswork/wip]
typeOf: region
whereabouts:
- {type: home, location: Taelgar, linkText: in}
dm_owner: joint
dm_notes: none
title: Upper Istaros
---
# The Upper Istaros
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
-    :octicons-location-24:{ .lg .middle } A region in Taelgar  
</div>




The Upper Istaros is a land of mystery and danger, settled only at its fringes, dominated by the desolation of the [Plaguelands](<./plaguelands.md>). Halflings find welcome along the [Maseau - Dunmar Road](<./maseau-dunmar-road.md>): the fortified ranches in the [March of Andonne](<../greater-sembara/duchy-of-maseau/march-of-andonne.md>) have grown into villages, and the hearty people of the [Aurbez Plateau](<./aurbez-plateau.md>) welcome trade and tales. Many of these tales are of the terrors of the [Plaguelands](<./plaguelands.md>): the vast ash storms that sweep across the March in the summer; the strange abominations that creep up the [Andonne](<../major-rivers/istaros-watershed/andonne.md>) from the haunted ruins of [Isingue](<./isingue.md>); the deceptive lushness of the Istaros river valley and the cursed fruit that grows from the trees that linger there. But other tales speak of the elves of [Orenlas](<orenlas/orenlas.md>), on the far side of the [Plaguelands](<./plaguelands.md>), who keep alive the last remnants of the first forests of the world that still contain echoes of the first songs of the [First Ones](<../../gods-and-religions/gods/embodied-gods/first-ones/first-ones.md>). Though these days few travelers linger here, fearing the ever-present dangers of the Plaguelands, the tales of those who fled the destruction of [Isingue](<./isingue.md>) during the [Great War](<../../events/1500s/great-war.md>) remind travelers of a time when the Upper Istaros was a fertile crossroads, dotted with pleasant rolling hills and rich agricultural lands. 
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

            var bounds = [[[0, 0], [1693, 2013]]];

            // this has to be the path, i.e. what was working for me was /assets/world-map-01-02.png
            var image = L.imageOverlay('/taelgarverse/assets/upper-istaros-region-map.png', bounds).addTo(map);
            map.setView( [911, 1100], -1);
        })
</script>


## Topography and Major Features
_See more: [Istaros Watershed](<../major-rivers/istaros-watershed/istaros-watershed.md>)_

The Upper Istaros is defined by its rivers. This region contains [Lake Aeulian](<../major-rivers/istaros-watershed/lake-aeulian.md>), the headwaters of the [Istaros](<../major-rivers/istaros-watershed/istaros.md>), as well the river systems that feed it: the [Aursen](<../major-rivers/istaros-watershed/aursen.md>), [Douren](<../major-rivers/istaros-watershed/douren.md>), [Andonne](<../major-rivers/istaros-watershed/andonne.md>) , and [Kulthul](<../major-rivers/istaros-watershed/kulthul.md>) from the [Sentinels](<../sentinel-range.md>); the [Valmont](<../major-rivers/istaros-watershed/valmont.md>) and its tributaries; the [~Orenlas Tributary~](<../major-rivers/istaros-watershed/orenlas-tributary.md>) watershed, and the [~Southern Plaguelands Tributary~](<../major-rivers/istaros-watershed/southern-plaguelands-tributary.md>) watershed. 



In the northwest, the land is flat along the Andonne Plain, although now much of the former ranchlands and wheatfields are turned to dust and ash. The Andonne Plain ends abruptly at the [Westcliff](<../greater-sembara/addermarch/westcliff.md>), the western edge of the [Mostreve Hills](<../greater-sembara/mostreve-hills.md>). 



## Civilizations and Cultures
_See more: [Orenlas](<orenlas/orenlas.md>), [March of Andonne](<../greater-sembara/duchy-of-maseau/march-of-andonne.md>), [Refounded Alliance of Aurbez](<refounded-alliance-of-aurbez/refounded-alliance-of-aurbez.md>), [Xurkhaz](<xurkhaz/xurkhaz.md>)_

Nowhere in the Upper Istaros is densely settled, and what settlement does exist here clings to the edges of the region, away from the most dangerous parts of the [Plaguelands](<./plaguelands.md>). On the Andonne Plain, the people of the [March of Andonne](<../greater-sembara/duchy-of-maseau/march-of-andonne.md>) herd cattle and goats, retreating to the fortified ranches of the marcher lords when ash or hobgoblins threaten. Along the [Maseau - Dunmar Road](<./maseau-dunmar-road.md>), and in the highlands on the [Aurbez Plateau](<./aurbez-plateau.md>), the [Refounded Alliance of Aurbez](<refounded-alliance-of-aurbez/refounded-alliance-of-aurbez.md>) is settled by a mix of refugees from [Isingue](<./isingue.md>), others fleeing the devastation of the [Great War](<../../events/1500s/great-war.md>), and independent frontier-folk, who eke out a living in small-scale farms and sheepholds. 

To the east, the vast mystical kingdom of [Orenlas](<orenlas/orenlas.md>) is home to a significant population of [elves](<../../species/elves.md>); it is claimed that the forests of Orenlas are the last remaining echoes of the primeval forests that once stretched across the entire Istaros watershed and beyond. While the elves of [Orenlas](<orenlas/orenlas.md>) rarely settle outside their homeland, it is not uncommon to see an elf traveling through the Upper Istaros, and some join [The Rangers](<../../groups/the-rangers.md>). 

Relatively few [dwarves](<../../species/dwarves.md>) make their home in the Upper Istaros, and those that do almost exclusively live among human communities. Once, the [Sentinels](<../sentinel-range.md>) on the western border of this region were part of the great dwarven kingdom of [Ardith](<../central-highlands/dwarven-kingdoms/ardith.md>). But this kingdom was destroyed during the [Great War](<../../events/1500s/great-war.md>), and only the rare dwarf lingers on the outskirts of this once-great realm; most fled south, to the [Yuvanti Mountains](<../greater-dunmar/yuvanti-mountains.md>). [Stoneborn](<../../species/stoneborn.md>), however, are common in the southern [Sentinels](<../sentinel-range.md>), which they call the [Indalas](<../sentinel-range.md>), and they sometimes travel (or, more rarely, settle) along the [Aurbez Plateau](<./aurbez-plateau.md>). Halflings are a constant presence along the [Maseau - Dunmar Road](<./maseau-dunmar-road.md>). 


To the south, the free [orcs](<../../species/orcs.md>) who call themselves the [People of the Rainbow](<../../groups/orc-hordes/people-of-the-rainbow.md>) farm and herd cattle in the floodplains between the [Istaros](<../major-rivers/istaros-watershed/istaros.md>) and the [Kulthul](<../major-rivers/istaros-watershed/kulthul.md>), in the kingdom of [Xurkhaz](<xurkhaz/xurkhaz.md>). Their kingdom is protected from the dangers around them, and the ever-present threat of [Thark](<../../gods-and-religions/gods/embodied-gods/thark.md>)'s vengeance on orcs who escape his grasp, by the magic of the [Cloak of Rainbows](<../../things/artifacts-of-power/cloak-of-rainbows.md>). 




## Climate

{descriptive in world text about climate}



## Major Historical Eras
_See more: {links}_







