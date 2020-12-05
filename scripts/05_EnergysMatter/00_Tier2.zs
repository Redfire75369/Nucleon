#loader crafttweaker
#priority -0500

import mods.ematter.mad.MolecularAssemblerDevice;
import mods.ematter.mad.step.SteppingFunctions;
import net.thesilkminer.mc.boson.zen.naming.NameSpacedString;

recipes.remove(<immersiveengineering:wooden_device0:2>);

MolecularAssemblerDevice.registerShaped("crafttweaker:engineers_workbench" as NameSpacedString, "", [
	[hashIngot["RefinedIron"], <immersiveengineering:tool:3>.reuse(), <immersiveengineering:tool:1>.transformDamage(1), <immersiveengineering:tool:0>.transformDamage(1), null],
	[hashIngot["RefinedIron"], <contenttweaker:blue_paper>, <contenttweaker:blue_paper>, <contenttweaker:blue_paper>, oreDict["plankTreatedWood"]],
	[oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], oreDict["plankTreatedWood"]],
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], null, oreDict["workbench"], oreDict["fenceTreatedWood"]],
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], null, null, oreDict["fenceTreatedWood"]]
], <immersiveengineering:wooden_device0:2>, SteppingFunctions.constant(1000), true);

//MolecularAssemblerDevice.scheduleDump();