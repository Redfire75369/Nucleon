#loader crafttweaker reloadable
#priority 2

import mods.embers.DawnstoneAnvil;
import mods.embers.Stamper;
import mods.enderio.SagMill;
import mods.magneticraft.Grinder;
import mods.magneticraft.SluiceBox;
import mods.magneticraft.Sieve;
import mods.mekanism.chemical.crystallizer as Crystallizer;
import mods.mekanism.chemical.injection as Injection;
import mods.mekanism.crusher as Crusher;
import mods.mekanism.enrichment as Enrichment;
import mods.mekanism.reaction as Reaction;
import mods.nuclearcraft.Manufactory;
import mods.rustichromia.Quern;
import mods.techreborn.grinder as TRGrinder;
import mods.threng.Centrifuge;
import scripts.common.dusts;
import scripts.common.ingot_plain_materials;

Crusher.removeAllRecipes();
Enrichment.removeAllRecipes();
Manufactory.removeAllRecipes();
TRGrinder.removeAll();

/* Aluminium */
<ore:dustAluminium>.removeItems([<item:magneticraft:dusts:7>, <item:nuclearcraft:dust:12>]);
<ore:dustAluminum>.removeItems([<item:magneticraft:dusts:7>, <item:nuclearcraft:dust:12>, <item:techreborn:dust:1>]);

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
<ore:dustChrome>.remove(<item:qmd:dust:2>);
<ore:dustChromium>.remove(<item:qmd:dust:2>);

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

Crystallizer.removeRecipe(<item:mekanism:otherdust:4>);

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
<ore:dustSalt>.remove(<item:mekanism:salt>);
<ore:itemSalt>.remove(<item:mekanism:salt>);
<ore:foodSalt>.remove(<item:mekanism:salt>);

Crystallizer.removeRecipe(<item:mekanism:salt>);

/* Saltpeter */
<ore:dustNiter>.remove(<item:qmd:chemical_dust:2>);
<ore:dustSaltpeter>.remove(<item:qmd:chemical_dust:2>);
<ore:dustSodiumNitrate>.remove(<item:qmd:chemical_dust:2>);

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
DawnstoneAnvil.blacklistBreakdown(<item:soot:eitr>);
Grinder.removeRecipe(<item:minecraft:blaze_rod>);
Reaction.removeRecipe(<item:mekanism:otherdust:3>, <gas:hydrogen>);
Injection.removeRecipe(<item:mekanism:otherdust:3>);

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
