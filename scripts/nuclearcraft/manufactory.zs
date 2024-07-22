#loader crafttweaker reloadable
#priority 0

import mods.nuclearcraft.Manufactory;

Manufactory.addRecipe(<ore:dustVilliaumite>, <item:nuclearcraft:compound:3>, 1.0, 1.0);
Manufactory.addRecipe(<ore:dustCarobbiite>, <item:nuclearcraft:compound:4>, 1.0, 1.0);
Manufactory.addRecipe(<ore:dustCoal>, <item:nuclearcraft:dust:8>, 0.25, 0.5);

Manufactory.addRecipe(<ore:endstone>, <item:techreborn:dust:21>, 1.0, 1.0);
Manufactory.addRecipe(<ore:obsidian>, <item:techreborn:dust:35> * 4, 2.0, 1.0);
Manufactory.addRecipe(<ore:itemClay>, <item:techreborn:dust:12> , 0.5, 1.0);
Manufactory.addRecipe(<ore:sandstone>, <item:techreborn:dust:44> * 2, 1.0, 1.0);
Manufactory.addRecipe(<ore:enderpearl>, <item:techreborn:dust:20>, 1.0, 1.0);
Manufactory.addRecipe(<ore:itemPrecientCrystal>, <item:enderio:item_material:34>, 1.0, 1.0);
Manufactory.addRecipe(<ore:itemVibrantCrystal>, <item:enderio:item_material:35>, 1.0, 1.0);
Manufactory.addRecipe(<ore:itemPulsatingCrystal>, <item:enderio:item_material:36>, 1.0, 1.0);
Manufactory.addRecipe(<ore:itemEnderCrystal>, <item:enderio:item_material:37>, 1.0, 1.0);

Manufactory.addRecipe(<ore:cobblestone>, <item:minecraft:sand>, 1.0, 1.0);
Manufactory.addRecipe(<ore:gravel>, <item:minecraft:flint>, 1.0, 1.0);

Manufactory.addRecipe(<ore:sand>, <item:enderio:item_material:5>, 1.0, 1.0);
Manufactory.addRecipe(<item:minecraft:rotten_flesh> * 4, <item:minecraft:leather>, 0.5, 1.0);
Manufactory.addRecipe(<ore:sugarcane>, <item:nuclearcraft:part:6>, 1.0, 0.5);
Manufactory.addRecipe(<ore:cropWheat>, <item:nuclearcraft:flour>, 0.25, 0.5);
Manufactory.addRecipe(<item:nuclearcraft:roasted_cocoa_beans>, <item:nuclearcraft:ground_cocoa_nibs>, 0.5, 0.5);
Manufactory.addRecipe(<item:minecraft:porkchop>, <item:nuclearcraft:gelatin> * 8, 0.5, 0.5);
Manufactory.addRecipe(<item:minecraft:fish:*>, <item:nuclearcraft:gelatin> * 4, 0.5, 0.5);

Manufactory.addRecipe(<ore:rodBlaze>, <item:minecraft:blaze_powder> * 4, 1.0, 1.0);
Manufactory.addRecipe(<ore:bone>, <item:minecraft:dye:15> * 6, 0.5, 1.0);

for i in 0 .. 4 {
	val log = itemUtils.getItem("minecraft:log", i);
	val planks = itemUtils.getItem("minecraft:planks", i) * 6;
	Manufactory.addRecipe(log, planks, 0.5, 0.5);
}
Manufactory.addRecipe(<item:minecraft:log2>, <item:minecraft:planks:4> * 6, 0.5, 0.5);
Manufactory.addRecipe(<item:minecraft:log2:1>, <item:minecraft:planks:5> * 6, 0.5, 0.5);
Manufactory.addRecipe(<item:techreborn:rubber_log>, <item:techreborn:rubber_planks> * 6, 0.5, 0.5);
Manufactory.addRecipe(<ore:plankWood>, <item:minecraft:stick> * 4, 0.25, 0.5);

Manufactory.addRecipe(<ore:bouleSilicon>, <item:qmd:semiconductor:3>, 1.0, 1.0);
