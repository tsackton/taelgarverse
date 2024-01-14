---
headerVersion: 2023.11.25
tags: [person]
campaignInfo:
- {campaign: clee, date: 1720-01-03}
name: Ames Benthey
born: 1675
species: human
ancestry: Sembaran
gender: male
affiliations:
- {org: Lord's Guard of Cleenseau, title: Captain}
- {org: Essfords, title: Guard Captain}
whereabouts:
- {type: home, location: Cleenseau}
- {type: away, start: 1720-01-04, end: 1720-01-19, location: travelling to Embry}
- {type: away, start: 1720-01-20, end: 9999, location: Embry}
title: Ames Benthey
hide: [toc]
---

# Ames Benthey
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
- :octicons-info-24:{ .lg .middle } __Biographical Information__

    A Sembaran [human](<../../species/humans/humans.md>) (he/him)  
    Born DR 1675 (74 years old)  
    Captain of the Lord's Guard of Cleenseau  
    Guard Captain of the Essfords  
    { .bio }

    Based in Cleenseau, the Manor of Cleenseau, the Barony of Aveil
</div>

:octicons-location-24:{ .lg .middle } Currently in Embry, Sembara



:octicons-location-24:{ .lg .middle } Seen by the Heroes of Cleenseau on January 3rd, 1720 in Cleenseau, the Manor of Cleenseau, the Barony of Aveil  


The captain of the household guard of Essford Manor, part of the Lord's Guard in Cleenseau. Likes to play dice with Celyn. Better at delegating than doing any actual work and enjoys his food. However, when push comes to shove, he is a competent fighter and captain. 


### Relationships
```dataviewjs
const { util } = customJS
dv.table(["Person", "Info", "Current Location", "Alive"], 
			dv.pages("#person or #organization or #item")
				.where(f => util.isLinkedToPerson(f.file, dv.current().file))
				.sort(f => util.s("<maintype:n>", f.file))
				.map(b => [util.s("<name> (<pronouns> <pronunciation>)", b.file), util.s("<ancestry> <maintype>", b.file), util.s("<lastknown:2> (<lastknowndate>)", b.file, dv.current().pageTargetDate), util.isAlive(b.file.frontmatter, dv.current().pageTargetDate)]))
```


