---
headerVersion: 2023.11.25
displayDefaults: {wOrigin: 'Home area: <origin>', ruledBy: '<affiliationtitle:t>: <name> <(of )primary>'}
tags: [item/boat, testcase]
ancestry: halfling
typeOf: vehicle
typeOfAlias: boat
whereabouts:
- {type: home, end: 1, location: Eastern Green Sea, startFilter: ''}
- {type: away, start: 1748-09-30, end: 1748-10-11, location: sailing to Wahacha, startFilter: '2'}
- {type: away, start: 1748-10-12, end: 1748-10-14, alias: main port of Wacahca, location: Wahacha, linkText: moored in, startFilter: '2'}
title: Wave Dancer
hide: [toc]
---

# The Wave Dancer
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
- :octicons-info-24:{ .lg .middle } __[Halfling](<../../species/children-of-the-embodied-gods/halflings/halflings.md>) Boat__  
   Home area: the Eastern Green Sea  
</div>

:octicons-location-24:{ .lg .middle } Last known location (as of October 14th, 1748): the main port of Wacahca, the Vermillion Isles


A halfling ship plying the trade routes of the eastern Green Sea, regularly visiting Praznitsky, Wahacha, Quanyi, and Medju.  
## Crew
[Wella Brightmoon](<../../people/halflings/wella-brightmoon.md>), captain and matriach of the family
[Rose Brightmoon](<../../people/halflings/rose-brightmoon.md>), musician and Wella's wife
[Pearl Brightmoon](<../../people/halflings/pearl-brightmoon.md>), first mate and captain of the guard
Corrin Wildheart, navigator
Lerry Wildheart, quartermaster


```dataviewjs
const { util } = customJS
dv.table(["Person", "Current", "Known to DuFr"], 
			dv.pages("#person")
				.where(f => util.inOrHomeLocation("Wave Dancer", f.file.frontmatter, false))
				.map(b => [util.getName(b.file.name), util.getLoc(b.file.frontmatter), util.isKnownToParty(b.file.name, b.file.frontmatter, "dufr", true, true)]))
```


![Wave Dancer 1](../../assets/wave-dancer-1.png){width="500"}

