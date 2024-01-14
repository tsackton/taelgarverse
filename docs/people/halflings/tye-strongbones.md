---
headerVersion: 2023.11.25
tags: [dufr/background, person]
campaignInfo:
- {campaign: dufr, date: 1748-06-30, type: met}
name: Tye Strongbones
born: 1731
species: halfling
ancestry:
gender: male
affiliations:
- {org: Strongbones, type: primary}
- {org: The Red Lily Inn, title: Cook}
whereabouts:
- {type: home, location: The Red Lily Inn}
title: Tye Strongbones
hide: [toc]
---

# Tye Strongbones
<div class="grid cards ext-narrow-margin ext-one-column" markdown>
- :octicons-info-24:{ .lg .middle } __Biographical Information__

    A [halfling](<../../species/children-of-the-embodied-gods/halflings/halflings.md>) (he/him), of the Strongbones  
    Born DR 1731 (18 years old)  
    Cook of [The Red Lily Inn](<../../gazetteer/greater-dunmar/realms/dunmar/central-dunmar/tokra/the-red-lily-inn.md>)  
    { .bio }

    Based in [The Red Lily Inn](<../../gazetteer/greater-dunmar/realms/dunmar/central-dunmar/tokra/the-red-lily-inn.md>), [Tokra](<../../gazetteer/greater-dunmar/realms/dunmar/central-dunmar/tokra/tokra.md>), [Dunmar](<../../gazetteer/greater-dunmar/realms/dunmar/dunmar.md>)
</div>



:octicons-location-24:{ .lg .middle } Met by the [Dunmar Fellowship](<../pcs/dunmar-fellowship/dunmar-fellowship.md>) on June 30th, 1748 in [The Red Lily Inn](<../../gazetteer/greater-dunmar/realms/dunmar/central-dunmar/tokra/the-red-lily-inn.md>), [Tokra](<../../gazetteer/greater-dunmar/realms/dunmar/central-dunmar/tokra/tokra.md>), [Dunmar](<../../gazetteer/greater-dunmar/realms/dunmar/dunmar.md>)  


## Relationships
- [Wes Strongbones](<./wes-strongbones.md>), father
- Cade Strongbones, twin brother

```dataview
TABLE WITHOUT ID choice(contains(file.tags,"organization"), "Organization", "Person") as Type, name as Name, choice(species, species, typeof) as Info, file.link as Link
FROM #person OR #organization 
WHERE contains(file.outlinks, this.file.link) OR contains(file.inlinks, this.file.link)
SORT choice(species, species, typeof)
```

