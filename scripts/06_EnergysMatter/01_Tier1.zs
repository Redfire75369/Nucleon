#loader crafttweaker
#priority -0601

import mods.ematter.mad.MolecularAssemblerDevice;
import mods.ematter.mad.step.SteppingFunctions;
import net.thesilkminer.mc.boson.zen.naming.NameSpacedString;

/* Immersive Engineering */
recipes.remove(<immersiveengineering:wooden_device0:2>);

MolecularAssemblerDevice.registerShaped("crafttweaker:engineers_workbench" as NameSpacedString, "", [
	[hashIngot["RefinedIron"], <immersiveengineering:tool:3>.reuse(), <immersiveengineering:tool:1>.transformDamage(1), <immersiveengineering:tool:0>.transformDamage(1), null],
	[hashIngot["RefinedIron"], <contenttweaker:blue_paper>, <contenttweaker:blue_paper>, <contenttweaker:blue_paper>, oreDict["plankTreatedWood"]],
	[oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], oreDict["plankTreatedWood"]],
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], null, oreDict["workbench"], oreDict["fenceTreatedWood"]],
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], null, null, oreDict["fenceTreatedWood"]]
], <immersiveengineering:wooden_device0:2>, SteppingFunctions.constant(1000), true);

// MolecularAssemblerDevice.scheduleDump();

/* Magneticraft */
recipes.remove(<magneticraft:steam_engine>);
recipes.remove(<magneticraft:sieve>);
recipes.remove(<magneticraft:grinder>);
recipes.remove(<magneticraft:solar_panel>);

MolecularAssemblerDevice.registerShaped("crafttweaker:small_steam_engine" as NameSpacedString, "", [
	[oreDict["lightPlateLead"], <magneticraft:connector>, <contenttweaker:blue_paper>, <magneticraft:connector>, oreDict["lightPlateLead"]],
	[<magneticraft:heat_sink>, <techguns:itemshared:45>, <magneticraft:multiblock_parts>, <techguns:itemshared:45>, <magneticraft:heat_sink>],
	[<magneticraft:heat_pipe>, <techguns:itemshared:45>, <magneticraft:multiblock_parts:4>, <techguns:itemshared:45>, <magneticraft:heat_pipe>],
	[<mysticalmechanics:axle_iron>, <techguns:itemshared:45>, <techguns:itemshared:45>, <techguns:itemshared:45>, <mysticalmechanics:axle_iron>],
	[<magneticraft:crafting:1>, <advancedliftingmethods:rotor>, <advancedliftingmethods:rotor>, <advancedliftingmethods:rotor>, <magneticraft:crafting:1>]
], <magneticraft:steam_engine>, SteppingFunctions.constant(1000), true);

MolecularAssemblerDevice.registerShaped("crafttweaker:sieve" as NameSpacedString, "", [
	[hashPlate["RefinedIron"], <magneticraft:connector>, <contenttweaker:blue_paper>, <magneticraft:connector>, hashPlate["RefinedIron"]],
	[hashPlate["RefinedIron"], <magneticraft:crafting:5>, <magneticraft:crafting:5>, <magneticraft:crafting:5>, hashPlate["RefinedIron"]],
	[<magneticraft:crafting:2>, <magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>, <magneticraft:crafting:2>],
	[hashGear["Terne"], <magneticraft:multiblock_parts>, <magneticraft:multiblock_parts>, <magneticraft:multiblock_parts>, hashGear["Terne"]],
	[<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:5>]
], <magneticraft:sieve>, SteppingFunctions.constant(1000), true);

MolecularAssemblerDevice.registerShaped("crafttweaker:grinder" as NameSpacedString, "", [
	[hashPlate["Invar"], <magneticraft:connector>, <contenttweaker:blue_paper>, <magneticraft:connector>, hashPlate["Invar"]],
	[hashPlate["Invar"], <magneticraft:multiblock_parts>, <magneticraft:multiblock_parts>, <magneticraft:multiblock_parts>, hashPlate["Invar"]],
	[<magneticraft:crafting:2>, <contenttweaker:grinding_head_refined_iron>, <contenttweaker:grinding_head_refined_iron>, <contenttweaker:grinding_head_refined_iron>, <magneticraft:crafting:2>],
	[hashGear["Terne"], <magneticraft:multiblock_parts>, <magneticraft:multiblock_parts>, <magneticraft:multiblock_parts>, hashGear["Terne"]],
	[<immersiveengineering:metal_decoration1_slab:5>, <immersiveengineering:metal_decoration1_slab:5>, <immersiveengineering:metal_decoration1_slab:5>, <immersiveengineering:metal_decoration1_slab:5>, <immersiveengineering:metal_decoration1_slab:5>]
], <magneticraft:sieve>, SteppingFunctions.constant(1000), true);