---
headerVersion: 2023.11.25
tags: [dufr/background, person]
campaignInfo:
- {campaign: dufr, person: Wellby, date: 1748-10-12, type: met}
name: Makha
born: 1712
species: kenku
ancestry: Islander
gender: male
whereabouts: Wahacha
pronunciation: MAH-kah
title: Makha
hide: [toc]
---

# Makha
:speaker:{ .middle } *(MAH-kah)*  
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
- :octicons-info-24:{ .lg .middle } __Biographical Information__

    An Islander [kenku](<../../species/unusual-species/kenku/kenku.md>) (he/him)  
    Born DR 1712 (37 years old)  
    { .bio }

    Based in Wahacha, the Vermillion Isles, ~Eastern Islands~
</div>



:octicons-location-24:{ .lg .middle } Met by [Wellby](<../pcs/dunmar-fellowship/wellby.md>) on October 12th, 1748 in Wahacha, the Vermillion Isles, ~Eastern Islands~  


The port master and unofficial town spokesperson for the kenku settlement of Wahacha.  

![Makha](../../assets/makha.png){width="500"}

## Relationships:
Makha knows the people of Wahacha well, including:
- [Nahto](<./nahto.md>) and [Skoda](<./skoda.md>), a married couple, travelers and wanderers based out of Wahacha
- [Rufus](<../pcs/dunmar-fellowship/guests/rufus.md>), a monster hunter, who hunts down threats to the island in exchange for food and shelter from the islanders



### Relationships
```dataviewjs
const { util } = customJS
dv.table(["Person", "Info", "Current Location", "Alive"], 
			dv.pages("#person or #organization or #item")
				.where(f => util.isLinkedToPerson(f.file, dv.current().file))
				.sort(f => util.s("<maintype:n>", f.file))
				.map(b => [util.s("<name> (<pronouns> <pronunciation>)", b.file), util.s("<ancestry> <maintype>", b.file), util.s("<lastknown:2> (<lastknowndate>)", b.file, dv.current().pageTargetDate), util.isAlive(b.file.frontmatter, dv.current().pageTargetDate)]))
```

