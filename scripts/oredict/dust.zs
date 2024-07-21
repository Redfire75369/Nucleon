#loader crafttweaker reloadable
#priority 2

import crafttweaker.item.IIngredient;
import mods.enderio.SagMill;
import mods.magneticraft.Grinder;
import mods.magneticraft.SluiceBox;
import mods.magneticraft.Sieve;
import mods.mekanism.crusher as Crusher;
import mods.mekanism.enrichment as Enrichment;
import mods.nuclearcraft.Manufactory;
import mods.rustichromia.Quern;
import mods.techreborn.grinder as TRGrinder;
import mods.threng.Centrifuge;
import scripts.common.dusts;
import scripts.common.ingot_plain_materials;

/* Aluminium */
<ore:dustAluminum>.removeItems([<item:magneticraft:dusts:7>, <item:nuclearcraft:dust:12>, <item:techreborn:dust:1>]);
<ore:dustAluminium>.removeItems([<item:magneticraft:dusts:7>, <item:nuclearcraft:dust:12>]);
<ore:dustAluminum>.add(<item:techreborn:dust:1>);

Grinder.removeRecipe(<item:magneticraft:ingots:7>);
// Mass Spectrometer

/* Brass */
SagMill.removeRecipe(<item:techreborn:ingot:1>);
SagMill.removeRecipe(<item:techreborn:storage:5>);

/* Bronze */
SagMill.removeRecipe(<item:mekanism:ingot:2>);
SagMill.removeRecipe(<item:mekanism:basicblock:1>);

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

Centrifuge.removeRecipe(<item:appliedenergistics2:material:46>);

/* Energetic Alloy */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:1>);
SagMill.removeRecipe(<item:enderio:block_alloy:1>);

/* Flour */
<ore:dustWheat>.removeItems([<item:appliedenergistics2:material:4>, <item:enderio:item_material:21>, <item:rustichromia:dust_flour>]);

Centrifuge.removeRecipe(<item:appliedenergistics2:material:4>);
Quern.remove("rustichromia:wheat_to_flour");

/* Fluix */
SagMill.removeRecipe(<item:appliedenergistics2:material:7>);

/* Gold */
<ore:dustGold>.removeItems([<item:appliedenergistics2:material:51>, <item:enderio:item_material:25>, <item:magneticraft:dusts:1>, <item:mekanism:dust:1>]);

SagMill.removeRecipe(<item:minecraft:gold_ingot>);
SagMill.removeRecipe(<item:minecraft:gold_block>);
Grinder.removeRecipe(<item:minecraft:gold_ingot>);

/* Graphite */
SagMill.removeRecipe(<item:nuclearcraft:ingot:8>);
SagMill.removeRecipe(<item:nuclearcraft:ingot_block:8>);

/* Invar */
SagMill.removeRecipe(<item:techreborn:ingot:6>);
SagMill.removeRecipe(<item:techreborn:storage:12>);

/* Iridium */
<ore:dustIridium>.remove(<item:qmd:dust:9>);

/* Iron */
<ore:dustIron>.removeItems([<item:appliedenergistics2:material:49>, <item:enderio:item_material:24>, <item:magneticraft:dusts:0>, <item:mekanism:dust:0>]);

SagMill.removeRecipe(<item:minecraft:iron_ingot>);
SagMill.removeRecipe(<item:minecraft:iron_block>);
Grinder.removeRecipe(<item:minecraft:iron_ingot>);

/* Lapis */
SagMill.removeRecipe(<item:minecraft:dye:4>);
SagMill.removeRecipe(<item:minecraft:lapis_block>);

/* Lead */
<ore:dustLead>.removeItems([<item:magneticraft:dusts:3>, <item:mekanism:dust:6>, <item:nuclearcraft:dust:2>]);

SagMill.removeRecipe(<item:magneticraft:ingots:3>);
SagMill.removeRecipe(<item:magneticraft:storage_blocks:1>);
Grinder.removeRecipe(<item:magneticraft:ingots:3>);

/* Lithium */
<ore:dustLithium>.remove(<item:mekanism:otherdust:4>);
// Chemical Crystallizer

/* Magnesium */
<ore:dustMagnesium>.remove(<item:nuclearcraft:dust:7>);

SagMill.removeRecipe(<item:nuclearcraft:ingot:7>);
SagMill.removeRecipe(<item:nuclearcraft:ingot_block:7>);

/* Manganese */
<ore:dustManganese>.remove(<item:nuclearcraft:dust:11>);

SagMill.removeRecipe(<item:nuclearcraft:ingot:11>);
SagMill.removeRecipe(<item:nuclearcraft:ingot_block:11>);

/* Mithril */
SagMill.removeRecipe(<item:magneticraft:ingots:9>);
SagMill.removeRecipe(itemUtils.getItem("jaopca:block.mithril"));
Grinder.removeRecipe(<item:magneticraft:ingots:9>);

/* Nether Quartz */
<ore:dustNetherQuartz>.removeItems([<item:appliedenergistics2:material:3>, <item:enderio:item_material:33>]);

SagMill.removeRecipe(<item:minecraft:quartz>);

/* Nickel */
<ore:dustNickel>.removeItems([<item:magneticraft:dusts:10>, <item:qmd:dust:5>]);

SagMill.removeRecipe(<item:magneticraft:ingots:10>);
SagMill.removeRecipe(<item:techreborn:storage:11>);
Grinder.removeRecipe(<item:magneticraft:ingots:10>);

/* Obsidian */
<ore:dustObsidian>.removeItems([<item:enderio:item_material:29>, <item:mekanism:otherdust:6>, <item:nuclearcraft:gem_dust:3>]);
// Enrichment Chamber

/* Osmium */
<ore:dustOsmium>.removeItems([<item:magneticraft:dusts:11>, <item:mekanism:dust:2>]);

SagMill.removeRecipe(<item:magneticraft:ingots:11>);
SagMill.removeRecipe(<item:mekanism:basicblock:0>);

/* Platinum */
<ore:dustPlatinum>.remove(<item:qmd:dust:10>);

SagMill.removeRecipe(<item:qmd:ingot:10>);
SagMill.removeRecipe(<item:techreborn:storage:9>);

/* Pulsating Iron */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:5>);
SagMill.removeRecipe(<item:enderio:block_alloy:5>);

/* Redstone Alloy */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:3>);
SagMill.removeRecipe(<item:enderio:block_alloy:3>);

/* Salt */
// Chemical Crystallizer
// Chemical Oxidiser

/* Saltpeter */
<ore:dustNiter>.remove(<item:qmd:chemical_dust:2>);
<ore:dustSaltpeter>.remove(<item:qmd:chemical_dust:2>);
<ore:dustSodiumNitrate>.remove(<item:qmd:chemical_dust:2>);
<ore:dustNiter>.add(<item:techreborn:dust:44>);
<ore:dustSodiumNitrate>.add(<item:techreborn:dust:44>);

/* Silver */
<ore:dustSilver>.removeItems([<item:magneticraft:dusts:12>, <item:mekanism:dust:5>, <item:nuclearcraft:dust:13>]);

SagMill.removeRecipe(<item:magneticraft:ingots:12>);
SagMill.removeRecipe(<item:nuclearcraft:ingot_block:13>);
Grinder.removeRecipe(<item:magneticraft:ingots:12>);

/* Soularium */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:7>);
SagMill.removeRecipe(<item:enderio:block_alloy:7>);

/* Sulfur */
<ore:dustSulfur>.removeItems([<item:magneticraft:crafting>, <item:mekanism:otherdust:3>, <item:nuclearcraft:gem_dust:6>, <item:soot:sulfur>]);

recipes.remove(<item:magneticraft:crafting>);
Grinder.removeRecipe(<item:minecraft:blaze_rod>);
// PRC, Chemical Injection Chamber
// Stamper, Dawnstone Anvil

/* Steel */
<ore:dustSteel>.removeItems([<item:magneticraft:dusts:6>, <item:mekanism:otherdust:1>]);

SagMill.removeRecipe(<item:industrialrenewal:ingot_steel>);
SagMill.removeRecipe(<item:industrialrenewal:block_steel>);
Grinder.removeRecipe(<item:magneticraft:ingots:6>);

/* Thorium */
<ore:dustThorium>.remove(<item:techreborn:dust:65>);

/* Tin */
<ore:dustTin>.removeItems([<item:enderio:item_material:27>, <item:magneticraft:dusts:13>, <item:mekanism:dust:4>, <item:nuclearcraft:dust:1>]);

SagMill.removeRecipe(<item:magneticraft:ingots:13>);
SagMill.removeRecipe(<item:techreborn:storage2:9>);
Grinder.removeRecipe(<item:magneticraft:ingots:13>);

/* Titanium */
<ore:dustTitanium>.remove(<item:qmd:dust:3>);

SagMill.removeRecipe(<item:qmd:ingot:3>);
SagMill.removeRecipe(<item:techreborn:storage:2>);

/* Tungsten */
<ore:dustTungsten>.removeItems([<item:magneticraft:dusts:5>, <item:qmd:dust:0>]);

SagMill.removeRecipe(<item:magneticraft:ingots:5>);
SagMill.removeRecipe(<item:magneticraft:storage_blocks:3>);
Grinder.removeRecipe(<item:magneticraft:ingots:5>);

/* Uranium */
<ore:dustUranium>.remove(<item:techreborn:dust:66>);

SagMill.removeRecipe(<item:nuclearcraft:ingot:4>);
SagMill.removeRecipe(<item:nuclearcraft:ingot_block:4>);

/* Vibrant Alloy */
SagMill.removeRecipe(<item:enderio:item_alloy_ingot:2>);
SagMill.removeRecipe(<item:enderio:block_alloy:2>);

/* Zinc */
<ore:dustZinc>.removeItems([<item:magneticraft:dusts:14>, <item:qmd:dust:7>]);

SagMill.removeRecipe(<item:magneticraft:ingots:14>);
SagMill.removeRecipe(<item:techreborn:storage:8>);
Grinder.removeRecipe(<item:magneticraft:ingots:14>);

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

Crusher.addRecipe(<ore:itemFlint>, <item:minecraft:gunpowder>);
Crusher.addRecipe(<ore:sand>, <item:enderio:item_material:5>);

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

Crusher.addRecipe(<item:buildinggadgets:constructionblock_dense>, <item:buildinggadgets:construction_chunk_dense>);
Crusher.addRecipe(<item:buildinggadgets:construction_chunk_dense>, <item:buildinggadgets:constructionpaste>);

/* Mekanism Enrichment Chamber */
Enrichment.removeAllRecipes();

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
