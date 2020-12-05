#loader crafttweaker
#priority -0702

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*** JEI ***/
mods.jei.JEI.removeAndHide(<magneticraft:stone_hammer>);
mods.jei.JEI.removeAndHide(<magneticraft:iron_gear>);
mods.jei.JEI.removeAndHide(<magneticraft:broken_gear>);
mods.jei.JEI.removeAndHide(<magneticraft:steel_gear>);
mods.jei.JEI.removeAndHide(<magneticraft:tungsten_gear>);

/*** Essential Materials/Items ***/
oreDict["chest"].add(<magneticraft:box>);

mods.magneticraft.CrushingTable.removeHammer(<magneticraft:stone_hammer>);

changeRecipeShapedMirrored("iron_hammer", <magneticraft:iron_hammer>, [
	[hashIngot["Iron"], hashIngot["Iron"], null],
	[hashIngot["Iron"], oreDict["stickTreatedWood"], hashIngot["RefinedIron"]],
	[null, oreDict["stickTreatedWood"], null]
]);
changeRecipeShapedMirrored("steel_hammer", <magneticraft:iron_hammer>, [
	[hashIngot["Steel"], hashIngot["Steel"], null],
	[hashIngot["Steel"], oreDict["stickTreatedWood"], hashIngot["Steel"]],
	[null, oreDict["stickTreatedWood"], null]
]);

changeRecipeShaped("magneticraft_wrench", <magneticraft:wrench>, [
	[null, oreDict["lightPlateIron"], hashIngot["Iron"]],
	[oreDict["dyeRed"], hashPlate["Iron"], oreDict["lightPlateIron"]],
	[hashIngot["Iron"], oreDict["dyeRed"], null]
]);

/*** Crafting Materials ***/
mods.techguns.ChargingStation.addRecipe(hashIngot["RefinedIron"].firstItem, hashIngot["ChargedIron"].firstItem, 40000);

mods.immersiveengineering.MetalPress.addRecipe(<minecraft:brick_block>, hashIngot["ingotBrick"], <immersiveengineering:mold:5>, 8192, 4);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:copper_thread> * 2, oreDict["wireCopper"], <immersiveengineering:mold:4>, 4096);

recipes.remove(<minecraft:brick_block>);
changeRecipeShapedMirrored("alternator", <magneticraft:crafting:1> * 2, [
	[hashIngot["RedstoneAlloy"], hashPlate["Lead"], null],
	[<magneticraft:crafting:4>, hashGear["Bronze"], hashRod["Iron"]],
	[hashIngot["RedstoneAlloy"], hashPlate["Lead"], null]
]);
changeRecipeShapedMirrored("motor", <magneticraft:crafting:2> * 2, [
	[hashIngot["RedstoneAlloy"], hashPlate["Lead"], null],
	[<magneticraft:crafting:3>, <magneticraft:crafting:4>, hashRod["Iron"]],
	[hashIngot["RedstoneAlloy"], hashPlate["Lead"], null]
]);
changeRecipeShaped("fine_copper_wire", <magneticraft:crafting:3>, [
	[<contenttweaker:copper_thread>, <contenttweaker:copper_thread>, <contenttweaker:copper_thread>],
	[<contenttweaker:copper_thread>, <contenttweaker:wood_coil>, <contenttweaker:copper_thread>],
	[<contenttweaker:copper_thread>, <contenttweaker:copper_thread>, <contenttweaker:copper_thread>]
]);
changeRecipeShaped("magnet", <magneticraft:crafting:4>, [
	[hashDust["Redstone"], hashIngot["ChargedIron"], hashDust["Redstone"]]
]);
changeRecipeShaped("iron_mesh", <magneticraft:crafting:5>, [
	[oreDict["fiberHemp"], oreDict["lightPlateIron"], oreDict["fiberHemp"]],
	[oreDict["fiberHemp"], <magneticraft:crafting:6>, oreDict["fiberHemp"]],
	[oreDict["fiberHemp"], oreDict["lightPlateIron"], oreDict["fiberHemp"]]
]);
changeRecipeShaped("rotor", <advancedliftingmethods:rotor>, [
	[null, hashPlate["Iron"], null],
	[hashPlate["Iron"], hashRod["RefinedIron"], hashPlate["Iron"]],
	[null, hashPlate["Iron"], null]
]);
/*** Computers ***/
changeRecipeShapedMirrored("computer", <magneticraft:computer>, [
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], hashPlate["Invar"]],
	[oreDict["lightPlateCopper"], hashBlock["RedstoneAlloy"], <glassential:glass_clear>],
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], hashPlate["Invar"]]
]);

/*** Others ***/
changeRecipeShaped("water_generator", <magneticraft:water_generator>, [
	[hashPlate["RefinedIron"], oreDict["lightPlateCopper"], hashPlate["RefinedIron"]],
	[<minecraft:water_bucket>, <magneticraft:small_tank>.withTag({}), <minecraft:water_bucket>],
	[hashPlate["RefinedIron"], oreDict["lightPlateCopper"], hashPlate["RefinedIron"]]
]);
changeRecipeShaped("airlock", <magneticraft:airlock>, [
	[<glassential:glass_redstone>, <minecraft:bucket>, <glassential:glass_redstone>],
	[<minecraft:bucket>, <magneticraft:multiblock_parts>, <minecraft:bucket>],
	[<glassential:glass_redstone>, <minecraft:bucket>, <glassential:glass_redstone>]
]);
changeRecipeShaped("heat_sink", <magneticraft:heat_sink> * 2, [
	[hashRod["Copper"], hashRod["Copper"], hashRod["Copper"]],
	[oreDict["lightPlateCopper"], oreDict["lightPlateCopper"], oreDict["lightPlateCopper"]]
]);
changeRecipeShaped("feeding_trough", <magneticraft:feeding_trough>, [
	[oreDict["plankWood"], null, oreDict["plankWood"]],
	[oreDict["stickWood"], oreDict["plankWood"], oreDict["stickWood"]]
]);
changeRecipeShaped("tesla_tower", <magneticraft:tesla_tower>, [
	[<magneticraft:crafting:3>, oreDict["lightPlateIron"], <magneticraft:crafting:3>],
	[<immersiveengineering:metal_decoration0>, hashPlate["Tin"], <immersiveengineering:metal_decoration0>],
	[<magneticraft:crafting:3>, oreDict["lightPlateIron"], <magneticraft:crafting:3>]
]);

/*** Machines ***/
/****** Generators ******/
changeRecipeShapedMirrored("combustion_chamber", <magneticraft:combustion_chamber>, [
	[oreDict["ingotBrick"], oreDict["ingotBrick"], oreDict["ingotBrick"]],
	[<minecraft:brick_block>, <immersiveengineering:stone_decoration:3>, hashPlate["RefinedIron"]],
	[<minecraft:brick_block>, <minecraft:brick_block>, hashPlate["RefinedIron"]]
]);
changeRecipeShaped("boiler", <magneticraft:steam_boiler>, [
	[oreDict["lightPlateIron"], hashPlate["RefinedIron"], oreDict["lightPlateIron"]],
	[hashPlate["RefinedIron"], null, hashPlate["RefinedIron"]],
	[oreDict["lightPlateIron"], hashPlate["RefinedIron"], oreDict["lightPlateIron"]]
]);
changeRecipeShaped("wind_turbine", <magneticraft:wind_turbine>, [
	[<magneticraft:crafting:6>, <immersiveengineering:material:11>, <magneticraft:crafting:6>],
	[<immersiveengineering:material:11>, hashBlock["Copper"], <immersiveengineering:material:11>],
	[<magneticraft:crafting:6>, <immersiveengineering:material:11>, <magneticraft:crafting:6>]
]);

changeRecipeShaped("brick_furnace", <magneticraft:brick_furnace>, [
	[<minecraft:brick_block>, <magneticraft:heat_pipe>, <minecraft:brick_block>],
	[<minecraft:brick_block>, <immersiveengineering:stone_decoration:3>, <minecraft:brick_block>],
	[hashPlate["Lead"], oreDict["lightPlateCopper"], hashPlate["Lead"]]
]);
changeRecipeShaped("electric_furnace", <magneticraft:electric_furnace>, [
	[<magneticraft:energy_receiver>, <magneticraft:connector>, <magneticraft:energy_receiver>],
	[<magneticraft:crafting:3>, <magneticraft:brick_furnace>, <magneticraft:crafting:3>],
	[hashRod["Copper"], hashPlate["Copper"], hashRod["Copper"]]
]);

/****** Processors ******/
changeRecipeShaped("crushing_table", <magneticraft:crushing_table>, [
	[oreDict["slabStone"], hashPlate["Terne"], oreDict["slabStone"]],
	[oreDict["stickTreatedWood"], <rustichromia:plate_wood>, oreDict["stickTreatedWood"]],
	[<rustichromia:plate_wood>, <embers:archaic_bricks>, <rustichromia:plate_wood>]
]);
changeRecipeShapedMirrored("sluice_box", <magneticraft:sluice_box>, [
	[oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], null],
	[<magneticraft:crafting:5>, oreDict["lightPlateLead"], oreDict["stickTreatedWood"]],
	[oreDict["slabStone"], oreDict["lightPlateLead"], oreDict["slabStone"]]
]);

/*** Multiblock Components ***/
changeRecipeShaped("machine_block", <magneticraft:multiblock_parts> * 2, [
	[hashPlate["RefinedIron"], hashPlate["RefinedIron"], hashPlate["RefinedIron"]],
	[oreDict["lightPlateLead"], <immersiveengineering:metal_decoration0:4>, oreDict["lightPlateLead"]],
	[<magneticraft:crafting:2>, oreDict["lightPlateLead"], <magneticraft:crafting:2>]
]);
changeRecipeShaped("iron_grate_machine_block", <magneticraft:multiblock_parts:2> * 2, [
	[oreDict["barsIron"], hashPlate["RefinedIron"], oreDict["barsIron"]],
	[hashPlate["RefinedIron"], oreDict["lightPlateLead"], hashPlate["RefinedIron"]],
	[oreDict["barsIron"], hashPlate["RefinedIron"], oreDict["barsIron"]]
]);
changeRecipeShaped("copper_coil_machine_block", <magneticraft:multiblock_parts:4>, [
	[<magneticraft:crafting:3>, hashIngot["RefinedIron"], <magneticraft:crafting:3>],
	[oreDict["lightPlateLead"], <immersiveengineering:metal_decoration0>, oreDict["lightPlateLead"]],
	[<magneticraft:crafting:3>, hashIngot["RefinedIron"], <magneticraft:crafting:3>]
]);
changeRecipeShaped("corrugate_iron_machine_block", <magneticraft:multiblock_parts:5> * 4, [
	[null, oreDict["lightPlateIron"],null],
	[oreDict["lightPlateIron"], oreDict["blockSheetmetalIron"], oreDict["lightPlateIron"]],
	[null, oreDict["lightPlateIron"], null]
]);
changeRecipeShaped("support_column", <magneticraft:multiblock_column> * 2, [
	[hashIngot["Terne"], hashIngot["RefinedIron"], hashIngot["Terne"]],
	[oreDict["lightPlateLead"], oreDict["blockSheetmetalIron"], oreDict["lightPlateLead"]],
	[hashIngot["Terne"], hashIngot["RefinedIron"], hashIngot["Terne"]]
]);

/*** Informative Items ******/
changeRecipeShaped("thermometer", <magneticraft:thermometer>, [
	[oreDict["blockGlass"], hashDust["Redstone"], oreDict["blockGlass"]],
	[oreDict["blockGlass"], hashDust["Redstone"], oreDict["blockGlass"]],
	[oreDict["blockGlass"], <minecraft:glass_bottle>, oreDict["blockGlass"]],
]);
changeRecipeShaped("voltmeter", <magneticraft:voltmeter>, [
	[hashIngot["Terne"], oreDict["dyeWhite"], hashIngot["Terne"]],
	[hashIngot["Terne"], hashDust["Redstone"], hashIngot["Terne"]],
	[hashIngot["Terne"], <magneticraft:crafting:3>, hashIngot["Terne"]],
]);

/*** Transfer ***/
/****** Items ******/
changeRecipeShaped("conveyor_belt", <magneticraft:conveyor_belt> * 12, [
	[hashRod["Lead"], hashPlate["Iron"], hashRod["Lead"]],
	[hashRod["Iron"], <magneticraft:crafting:2>, hashRod["Iron"]]
]);

recipes.remove(<magneticraft:inserter>);
recipes.addShapedMirrored("inserter", <magneticraft:inserter> * 2, [
	[hashIngot["Bronze"], hashRod["Copper"], null],
	[null, hashRod["Copper"], null],
	[hashIngot["RefinedIron"], <magneticraft:crafting:2>, hashIngot["RefinedIron"]]
]);
changeRecipeShaped("inserter_speed_upgrade", <magneticraft:inserter_upgrade>, [
	[hashDust["Redstone"], hashPlate["RefinedIron"], hashDust["Redstone"]],
	[hashPlate["Terne"], hashDust["Sugar"], hashPlate["Terne"]],
	[hashDust["Redstone"], hashPlate["RefinedIron"], hashDust["Redstone"]]
]);
changeRecipeShaped("inserter_stack_upgrade", <magneticraft:inserter_upgrade:1>, [
	[oreDict["lightPlateCopper"], <magneticraft:inserter_upgrade>, oreDict["lightPlateCopper"]],
	[oreDict["lightPlateLead"], oreDict["chest"], oreDict["lightPlateLead"]],
	[oreDict["lightPlateCopper"], <magneticraft:inserter_upgrade>, oreDict["lightPlateCopper"]]
]);

changeRecipeShaped("pneumatic_tube", <magneticraft:pneumatic_tube> * 6, [
	[null, oreDict["lightPlateCopper"], null],
	[<glassential:glass_clear>, <glassential:glass_clear>, <glassential:glass_clear>],
	[null, oreDict["lightPlateCopper"], null]
]);
changeRecipeShaped("restriction_pneumatic_tube", <magneticraft:pneumatic_restriction_tube>, [
	[hashIngot["Tin"], <magneticraft:pneumatic_tube>, hashIngot["Tin"]]
]);
changeRecipeShaped("pneumatic_relay", <magneticraft:relay>, [
	[hashIngot["Bronze"], hashIngot["Copper"], hashIngot["Bronze"]],
	[hashPlate["Lead"], oreDict["lightPlateIron"], hashPlate["Lead"]],
	[oreDict["cobblestone"], hashIngot["RedstoneAlloy"],oreDict["cobblestone"]]
]);
changeRecipeShaped("pneumatic_filter", <magneticraft:filter>, [
	[hashIngot["Bronze"], hashIngot["Copper"], hashIngot["Bronze"]],
	[hashPlate["Lead"], <magneticraft:crafting:5>, hashPlate["Lead"]],
	[oreDict["cobblestone"], hashIngot["RedstoneAlloy"],oreDict["cobblestone"]]
]);
changeRecipeShaped("pneumatic_transposer", <magneticraft:transposer>, [
	[hashIngot["Bronze"], hashIngot["Copper"], hashIngot["Bronze"]],
	[hashPlate["Lead"], <magneticraft:crafting:2>, hashPlate["Lead"]],
	[oreDict["cobblestone"], hashIngot["RedstoneAlloy"],oreDict["cobblestone"]]
]);

/****** Liquids ******/
changeRecipeShaped("iron_pipe", <magneticraft:iron_pipe>, [
	[hashIngot["Terne"], hashPlate["Iron"], hashPlate["Terne"]],
	[null, <contenttweaker:sealant>, null],
	[hashIngot["Terne"], hashPlate["Iron"], hashPlate["Terne"]]
]);

/****** Electricity ******/
changeRecipeShaped("copper_coil", <magneticraft:copper_coil>, [
	[<magneticraft:crafting:3>, <contenttweaker:wood_coil>, <magneticraft:crafting:3>]
]);
changeRecipeShaped("electric_cable", <magneticraft:electric_cable> * 6, [
	[oreDict["itemRubber"], oreDict["itemRubber"], oreDict["itemRubber"]],
	[hashIngot["Copper"], hashIngot["Copper"], hashIngot["Copper"]],
	[oreDict["itemRubber"], oreDict["itemRubber"], oreDict["itemRubber"]]
]);
changeRecipeShaped("connector", <magneticraft:connector> * 3, [
	[null, hashIngot["Iron"], null],
	[<minecraft:hardened_clay>, hashIngot["Bronze"], <minecraft:hardened_clay>],
]);
recipes.remove(<magneticraft:energy_receiver>);
recipes.addShaped("energy_receiver", <magneticraft:energy_receiver> * 3, [
	[null, <magneticraft:crafting:3>, null],
	[<magneticraft:crafting:3>, hashIngot["Copper"], <magneticraft:crafting:3>],
	[null, <magneticraft:electric_cable>, null]
]);

/****** Heat ******/
changeRecipeShaped("heat_pipe", <magneticraft:heat_pipe> * 4, [
	[hashIngot["Copper"], hashPlate["Copper"], hashIngot["Copper"]],
	[null, null, null],
	[hashIngot["Copper"], hashPlate["Copper"], hashIngot["Copper"]]
]);
changeRecipeShaped("insulated_heat_pipe", <magneticraft:insulated_heat_pipe> * 4, [
	[hashIngot["Copper"], hashPlate["Copper"], hashIngot["Copper"]],
	[oreDict["ingotBrick"], oreDict["ingotBrick"], oreDict["ingotBrick"]],
	[hashIngot["Copper"], hashPlate["Copper"], hashIngot["Copper"]]
]);
changeRecipeShaped("insulated_heat_pipe_upgrade", <magneticraft:insulated_heat_pipe> * 4, [
	[<magneticraft:heat_pipe>, null, <magneticraft:heat_pipe>],
	[oreDict["ingotBrick"], oreDict["ingotBrick"], oreDict["ingotBrick"]],
	[<magneticraft:heat_pipe>, null, <magneticraft:heat_pipe>]
]);

/*** Storage ***/
/****** Items ******/
changeRecipeShaped("wooden_box", <magneticraft:box>, [
	[oreDict["stickWood"], null, oreDict["stickWood"]],
	[null, <minecraft:chest>, null],
	[oreDict["stickWood"], null, oreDict["stickWood"]]
]);
/****** Liquids ******/
changeRecipeShaped("small_tank", <magneticraft:small_tank>, [
	[oreDict["lightPlateIron"], oreDict["blockGlass"], oreDict["lightPlateIron"]],
	[oreDict["blockGlass"], <magneticraft:multiblock_parts:2>, oreDict["blockGlass"]],
	[<contenttweaker:sealant>, <immersiveengineering:metal_device0:4>, <contenttweaker:sealant>]
]);

/****** Electricity ******/
recipes.remove(<magneticraft:battery_item_low>);
recipes.remove(<magneticraft:battery_item_medium>);

recipes.addShaped("electric_battery_small", <magneticraft:battery_item_low>.withTag({}), [
	[<contenttweaker:copper_thread>, hashIngot["Terne"], <contenttweaker:copper_thread>],
	[hashIngot["Lead"], hashDust["Sulphur"], hashIngot["Lead"]],
	[hashIngot["Lead"], hashDust["Sulphur"], hashIngot["Lead"]]
]);
recipes.addShaped("electric_battery_medium", <magneticraft:battery_item_medium>.withTag({}), [
	[hashIngot["Copper"], hashPlate["Terne"], hashIngot["Copper"]],
	[<magneticraft:battery_item_low>, oreDict["lightPlateLead"], <magneticraft:battery_item_low>],
	[<magneticraft:battery_item_low>, oreDict["lightPlateLead"], <magneticraft:battery_item_low>]
]);
	
changeRecipeShaped("battery_block", <magneticraft:battery>, [
	[<magneticraft:battery_item_low>, <magneticraft:battery_item_low>, <magneticraft:battery_item_low>],
	[oreDict["lightPlateIron"], <magneticraft:multiblock_parts:2>, oreDict["lightPlateIron"]],
	[hashPlate["Terne"], hashIngot["RedstoneAlloy"], hashPlate["Terne"]]
]);

/*** Compatibility ***/
changeRecipeShaped("electric_engine", <magneticraft:electric_engine>, [
	[hashIngot["Tin"], hashIngot["Copper"], hashIngot["Tin"]],
	[hashPlate["Invar"], <glassential:glass_redstone>, hashPlate["Invar"]],
	[<magneticraft:crafting:2>, hashIngot["RefinedIron"],<magneticraft:crafting:2>]
]);
changeRecipeShaped("electric_transformer", <magneticraft:rf_transformer>, [
	[hashIngot["Tin"], hashIngot["Copper"], hashIngot["Tin"]],
	[hashPlate["Invar"], <glassential:glass_redstone>, hashPlate["Invar"]],
	[<magneticraft:crafting:2>, hashIngot["RefinedIron"],<magneticraft:crafting:2>]
]);
