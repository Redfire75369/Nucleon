#loader crafttweaker reloadable
#priority 0

import mods.mekanism.enrichment as Enrichment;

Enrichment.addRecipe(<ore:dustCharcoal>, <item:minecraft:coal:1>);
Enrichment.addRecipe(<ore:dustCoal>, <item:minecraft:coal>);
Enrichment.addRecipe(<ore:dustQuartz>, <item:appliedenergistics2:material:10>);
Enrichment.addRecipe(<ore:dustCertusQuartz>, <item:appliedenergistics2:material:10>);
Enrichment.addRecipe(<ore:dustFluix>, <item:appliedenergistics2:material:12>);

Enrichment.addRecipe(<ore:dustSulfur>, <item:minecraft:gunpowder>);
Enrichment.addRecipe(<ore:dustSaltpeter>, <item:minecraft:gunpowder>);
Enrichment.addRecipe(<ore:gunpowder>, <item:minecraft:flint>);
Enrichment.addRecipe(<ore:dustWood> * 8, <item:minecraft:coal:1>);
Enrichment.addRecipe(<item:mekanism:polyethene> * 3, <item:mekanism:polyethene:2>);

Enrichment.addRecipe(<ore:obsidian>, <item:techreborn:dust:35> * 4);
Enrichment.addRecipe(<item:minecraft:glowstone>, <item:minecraft:glowstone_dust> * 4);
Enrichment.addRecipe(<item:minecraft:clay>, <item:minecraft:clay_ball> * 4);
Enrichment.addRecipe(<item:mekanism:saltblock>, <item:qmd:chemical_dust:3> * 4);

Enrichment.addRecipe(<item:minecraft:stonebrick:1>, <item:minecraft:stonebrick>);
Enrichment.addRecipe(<item:minecraft:stonebrick:2>, <item:minecraft:stonebrick>);
Enrichment.addRecipe(<item:minecraft:stonebrick>, <item:minecraft:stonebrick:3>);
Enrichment.addRecipe(<item:minecraft:stone>, <item:minecraft:stonebrick:2>);
Enrichment.addRecipe(<ore:gravel>, <item:minecraft:cobblestone>);

for i in 0 .. 16 {
	Enrichment.addRecipe(itemUtils.getItem("mekanism:plasticblock", i), itemUtils.getItem("mekanism:slickplasticblock", i));
}
