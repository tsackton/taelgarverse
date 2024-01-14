---
headerVersion: 2023.11.25
tags: [person]
campaignInfo:
- {campaign: Clee, date: 1719-12-04, type: met}
name: Abigail Moss
born: 1698
species: human
ancestry: Sembaran
gender: female
whereabouts: Taviose
title: Abigail Moss
hide: [toc]
---

# Abigail Moss
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
- :octicons-info-24:{ .lg .middle } __Biographical Information__

    A Sembaran [human](<../../species/humans/humans.md>) (she/her)  
    Born DR 1698 (51 years old)  
    { .bio }

    Based in Taviose, the Manor of Cleenseau, the Barony of Aveil
</div>



:octicons-location-24:{ .lg .middle } Met by the Heroes of Cleenseau on December 4th, 1719 in Taviose, the Manor of Cleenseau, the Barony of Aveil  


Abigail is a somewhat shy farmer whose orchard was infected with the remains of the giant spiders that plagued Taviose. Robin was able to disinfect it with his lay on hands ability. Her family was killed in the spider attacks, and she has struggled to maintain the family orchard, which is mostly walnuts and chestnuts and hugs the edge of Cleenseau Wood.

Her family holds the orchard and several buildings in Taviose as freeholders, and her two uncles are successful pig farmers.


She has a potentially budding romance with Odo Cordwaner, and a clear crush on Robin. 



### Relationships
```dataviewjs
const { util } = customJS
dv.table(["Person", "Info", "Current Location", "Alive"], 
			dv.pages("#person or #organization or #item")
				.where(f => util.isLinkedToPerson(f.file, dv.current().file))
				.sort(f => util.s("<maintype:n>", f.file))
				.map(b => [util.s("<name> (<pronouns> <pronunciation>)", b.file), util.s("<ancestry> <maintype>", b.file), util.s("<lastknown:2> (<lastknowndate>)", b.file, dv.current().pageTargetDate), util.isAlive(b.file.frontmatter, dv.current().pageTargetDate)]))
```

