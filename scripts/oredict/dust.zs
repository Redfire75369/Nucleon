#loader crafttweaker reloadable
#priority 2

import crafttweaker.item.IIngredient;
import mods.enderio.SagMill;
import mods.magneticraft.Grinder;
import mods.magneticraft.SluiceBox;
import mods.magneticraft.Sieve;
import mods.mekanism.crusher as Crusher;
import mods.nuclearcraft.Manufactory;
import mods.rustichromia.Quern;
import mods.techreborn.grinder as TRGrinder;
import mods.threng.Centrifuge;
import scripts.common.dusts;
import scripts.common.ingot_plain_materials;

/* Mekanism Crusher */
Crusher.removeAllRecipes();

Crusher.addRecipe(<ore:wool>, <item:minecraft:string> * 4);

Crusher.addRecipe(<ore:treeSapling>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:wheat_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:pumpkin_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:melon_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:beetroot_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:rustichromia:cotton_seed>, <item:mekanism:biofuel> * 2);

Crusher.addRecipe(<item:minecraft:wheat>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:potato>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:baked_potato>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:poisonous_potato>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:carrot>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:beetroot>, <item:mekanism:biofuel> * 4);

Crusher.addRecipe(<item:minecraft:apple>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:bread>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:melon>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:rotten_flesh>, <item:mekanism:biofuel> * 2);

Crusher.addRecipe(<item:minecraft:cactus>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:pumpkin>, <item:mekanism:biofuel> * 6);
Crusher.addRecipe(<ore:sugarcane>, <item:mekanism:biofuel> * 2);

Crusher.addRecipe(<item:minecraft:stonebrick:3>, <item:minecraft:stonebrick>);
Crusher.addRecipe(<item:minecraft:stonebrick>, <item:minecraft:stonebrick:2>);
Crusher.addRecipe(<item:minecraft:stonebrick:2>, <item:minecraft:stone>);
Crusher.addRecipe(<ore:stone>, <item:minecraft:cobblestone>);
Crusher.addRecipe(<ore:cobblestone>, <item:minecraft:gravel>);
Crusher.addRecipe(<ore:gravel>, <item:minecraft:sand>);

val sandstone as IIngredient = <item:minecraft:sandstone:*> | <item:chisel:sandstoneyellow:*> | <item:chisel:sandstoneyellow1:*> | <item:chisel:sandstoneyellow2:*> | itemUtils.getItem("chisel:sandstone-scribbles", 32767);
val sandstone_red as IIngredient = <item:minecraft:red_sandstone:*> | <item:chisel:sandstonered:*> | <item:chisel:sandstonered1:*> | <item:chisel:sandstonered2:*> | itemUtils.getItem("chisel:sandstonered-scribbles", 32767);

Crusher.addRecipe(sandstone, <item:minecraft:sand> * 2);
Crusher.addRecipe(sandstone_red, <item:minecraft:sand:1> * 2);

Crusher.addRecipe(<ore:itemFlint>, <item:minecraft:gunpowder>);
Crusher.addRecipe(<ore:sand>, <item:enderio:item_material:5>);

Crusher.addRecipe(<buildinggadgets:constructionblock_dense>, <buildinggadgets:construction_chunk_dense>);
Crusher.addRecipe(<buildinggadgets:construction_chunk_dense>, <buildinggadgets:constructionpaste>);

/* Nuclearcraft Manufactory */
Manufactory.removeAllRecipes();

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

Manufactory.addRecipe(<ore:itemBlazeRod>, <item:minecraft:blaze_powder> * 4, 1.0, 1.0);
Manufactory.addRecipe(<ore:bone>, <item:minecraft:dye:15> * 6, 0.5, 1.0);

for i in 0 .. 4 {
	val log = itemUtils.getItem("minecraft:log", i);
	val planks = itemUtils.getItem("minecraft:planks", i) * 6;
	Manufactory.addRecipe(log, planks, 0.5, 0.5);
}
Manufactory.addRecipe(<minecraft:log2>, <item:minecraft:planks:4> * 6, 0.5, 0.5);
Manufactory.addRecipe(<minecraft:log2:1>, <item:minecraft:planks:5> * 6, 0.5, 0.5);
Manufactory.addRecipe(<item:techreborn:rubber_log>, <item:techreborn:rubber_planks> * 6, 0.5, 0.5);
Manufactory.addRecipe(<ore:plankWood>, <item:minecraft:stick> * 4, 0.25, 0.5);

Manufactory.addRecipe(<ore:bouleSilicon>, <item:qmd:semiconductor:3>, 1.0, 1.0);

/* Tech Reborn Grinder */
TRGrinder.removeAll();

TRGrinder.addRecipe(<item:techreborn:dust:63>, <ore:stoneGranite>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:62>, <ore:stoneDiorite>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:61>, <ore:stoneAndesite>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:4>, <ore:stoneBasalt>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:32>, <ore:stoneMarble>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:33>, <ore:netherrack>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:21>, <ore:endstone>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:35> * 4, <ore:obsidian>, 300, 2);
TRGrinder.addRecipe(<item:minecraft:glowstone_dust> * 4, <item:minecraft:glowstone>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:12>, <ore:itemClay>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:20>, <ore:enderpearl>, 300, 2);
TRGrinder.addRecipe(<item:techreborn:dust:19>, <item:minecraft:ender_eye>, 300, 2);

TRGrinder.addRecipe(<item:minecraft:sand>, <ore:cobblestone>, 300, 2);
TRGrinder.addRecipe(<item:minecraft:flint>, <ore:gravel>, 300, 2);
TRGrinder.addRecipe(<item:minecraft:dirt>, <item:techreborn:part:44>, 300, 2);

TRGrinder.addRecipe(<item:minecraft:magma_cream> * 4, <item:minecraft:magma>, 300, 2);
TRGrinder.addRecipe(<item:minecraft:blaze_powder> * 4, <ore:itemBlazeRod>, 300, 2);
TRGrinder.addRecipe(<item:minecraft:dye:15> * 6, <ore:bone>, 300, 2);

/* Aluminium */
<ore:dustAluminum>.removeItems([<item:magneticraft:dusts:7>, <item:nuclearcraft:dust:12>, <item:techreborn:dust:1>]);
<ore:dustAluminium>.removeItems([<item:magneticraft:dusts:7>, <item:nuclearcraft:dust:12>]);
<ore:dustAluminium>.add(<item:techreborn:dust:1>);

SagMill.removeRecipe(<item:magneticraft:ingots:7>);
SagMill.removeRecipe(<item:nuclearcraft:ingot_block:12>);
Grinder.removeRecipe(<item:magneticraft:ingots:7>);

/* Brass */
SagMill.removeRecipe(<item:techreborn:ingot:1>);
SagMill.removeRecipe(<item:techreborn:storage:5>);

/* Certus Quartz */
SagMill.removeRecipe(<item:appliedenergistics2:material:0>);
SagMill.removeRecipe(<item:appliedenergistics2:material:1>);

/* Charcoal */
SagMill.removeRecipe(<item:minecraft:coal:1>);
SagMill.removeRecipe(<item:mekanism:basicblock:3>);

/* Chrome */
<ore:dustChromium>.remove(<item:qmd:dust:2>);
<ore:dustChromium>.add(<item:techreborn:dust:10>);

/* Coal */
<ore:dustCoal>.removeItems([<item:enderio:item_material:23>, <item:nuclearcraft:gem_dust:7>, <item:threng:material:3>]);

SagMill.removeRecipe(<item:minecraft:coal>);
SagMill.removeRecipe(<item:minecraft:coal_block>);

/* Cobalt */
<ore:dustCobalt>.removeItems([<item:enderio:item_material:31>, <item:magneticraft:dusts:4>]);

SagMill.removeRecipe(<item:magneticraft:ingots:4>);
SagMill.removeRecipe(<item:magneticraft:storage_blocks:2>);
Grinder.removeRecipe(<item:magneticraft:ingots:4>);

/* Conductive Iron */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:4>);
SagMill.removeRecipe(<item:enderio:block_alloy:4>);

/* Copper */
<ore:dustCopper>.removeItems([<item:enderio:item_material:26>, <item:magneticraft:dusts:2>, <item:mekanism:dust:3>, <item:nuclearcraft:dust:0>]);

SagMill.removeRecipe(<item:magneticraft:ingots:2>);
SagMill.removeRecipe(<item:magneticraft:storage_blocks:0>);
Grinder.removeRecipe(<item:magneticraft:ingots:2>);

/* Dark Steel */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:6>);
SagMill.removeRecipe(<item:enderio:block_alloy:6>);

/* Diamond */
<ore:dustDiamond>.removeItems([<item:mekanism:otherdust:0>, <item:nuclearcraft:gem_dust:0>]);

SagMill.removeRecipe(<item:minecraft:diamond>);

/* Electrical Steel */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:0>);
SagMill.removeRecipe(<item:enderio:block_alloy:0>);

/* Electrum */
SagMill.removeRecipe(<item:techreborn:ingot:5>);
SagMill.removeRecipe(<item:techreborn:storage:7>);

/* Emerald */
SagMill.removeRecipe(<item:minecraft:emerald>);

/* Ender Pearl */
<ore:dustEnder>.remove(<item:appliedenergistics2:material:46>);
<ore:dustEnderPearl>.remove(<item:appliedenergistics2:material:46>);

Centrifuge.removeRecipe(<item:minecraft:ender_pearl>);

/* Energetic Alloy */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:1>);
SagMill.removeRecipe(<item:enderio:block_alloy:1>);

/* Flour */
<ore:dustWheat>.removeItems([<item:appliedenergistics2:material:4>, <item:enderio:item_material:21>, <item:rustichromia:dust_flour>]);

Centrifuge.removeRecipe(<item:minecraft:wheat>);
Quern.remove("rustichromia:wheat_to_flour");

/* Fluix */
SagMill.removeRecipe(<item:appliedenergistics2:material:7>);
