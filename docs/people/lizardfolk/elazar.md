---
headerVersion: 2023.11.25
tags: [dufr/met_one, person, dufr/minor]
campaignInfo:
- {campaign: dufr, person: Kenzo, date: 1748-09-30, type: met}
- {campaign: dufr, person: Kenzo, date: 1748-11-04, type: last seen}
name: Elazar
born: 1665
species: lizardfolk
ancestry:
gender: male
whereabouts: Bedez
title: Elazar
hide: [toc]
---

# Elazar
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
- :octicons-info-24:{ .lg .middle } __Biographical Information__

    A [lizardfolk](<../../species/children-of-the-embodied-gods/lizardfolk/lizardfolk.md>) (he/him)  
    Born DR 1665 (84 years old)  
    { .bio }

    Based in Bedez, Orekatu, the South Region
</div>



:octicons-location-24:{ .lg .middle } Met by [Kenzo](<../pcs/dunmar-fellowship/kenzo.md>) on September 30th, 1748 in Bedez, Orekatu, the South Region  



:octicons-location-24:{ .lg .middle } Last seen by [Kenzo](<../pcs/dunmar-fellowship/kenzo.md>) on November 4th, 1748 in Bedez, Orekatu, the South Region  


A lizardfolk man in the prime of his life, a prophet, seer, and spirit guide who has deeply felt visions and exceptional perception into the spirit realms. A bit of an outcast in his village, seen as someone who sees trouble in everything.

![Elazar Portrait](../../assets/elazar-portrait.png){width="500"}

- (DR:: 1748). Elazar began to acquire a reputation as far-sighted and wise, after he warned of the troubles of the Azta Lekua. 
- (DR:: 1748-09-30). Elazar met [Kenzo](<../pcs/dunmar-fellowship/kenzo.md>) when [Kenzo](<../pcs/dunmar-fellowship/kenzo.md>) appeared in Orekatu. Taught [Kenzo](<../pcs/dunmar-fellowship/kenzo.md>) the lizardfolk language and introduced him to lizardfolk spiritual practices over the next month.


## Relationships
```dataview
TABLE WITHOUT ID choice(contains(file.tags,"organization"), "Organization", "Person") as Type, name as Name, choice(species, species, typeof) as Info, file.link as Link FROM #person OR #organization  
WHERE contains(file.outlinks, this.file.link) OR contains(file.inlinks, this.file.link) 
SORT choice(contains(file.tags,"organization"), "Organization", "Person"), choice(species, species, typeof)
```
