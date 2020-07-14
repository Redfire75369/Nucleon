#loader crafttweaker
#priority -0602

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*** JEI ***/
mods.jei.JEI.removeAndHide(<magneticraft:stone_hammer>);

/*** Essential Materials/Items ***/
mods.magneticraft.CrushingTable.removeHammer(<magneticraft:stone_hammer>);

changeRecipeShapedMirrored("iron_hammer", <magneticraft:iron_hammer>, [
	[hashIngot["Iron"], hashIngot["Iron"], null],
	[hashIngot["Iron"], oreDict["stickTreatedWood"], hashIngot["RefinedIron"]],
	[null, oreDict["stickTreatedWood"], null]
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

/*** Others ***/
changeRecipeShaped("water_generator", <magneticraft:water_generator>, [
	[hashPlate["RefinedIron"], oreDict["lightPlateCopper"], hashPlate["RefinedIron"]],
	[<minecraft:water_bucket>, <magneticraft:small_tank>.withTag({}), <minecraft:water_bucket>],
	[hashPlate["RefinedIron"], oreDict["lightPlateCopper"], hashPlate["RefinedIron"]]
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

/*** Transfer ***/
/****** Liquids ******/
changeRecipeShaped("iron_pipe", <magneticraft:iron_pipe>, [
	[hashIngot["Terne"], hashPlate["Iron"], hashPlate["Terne"]],
	[null, <contenttweaker:sealant>, null],
	[hashIngot["Terne"], hashPlate["Iron"], hashPlate["Terne"]]
]);

/*** Storage ***/
/****** Liquids ******/
changeRecipeShaped("small_tank", <magneticraft:small_tank>, [
	[oreDict["lightPlateIron"], oreDict["blockGlass"], oreDict["lightPlateIron"]],
	[oreDict["blockGlass"], <magneticraft:multiblock_parts:2>, oreDict["blockGlass"]],
	[<contenttweaker:sealant>, <immersiveengineering:metal_device0:4>, <contenttweaker:sealant>]
]);