#loader crafttweaker
#priority -0600

/*** JEI ***/
/*for meta in 0 to 8 {
	mods.jei.JEI.addItem(itemUtils.getItem("immersiveengineering:stone_device", meta));
}
for meta in 0 to 16 {
	mods.jei.JEI.addItem(itemUtils.getItem("immersiveengineering:metal_multiblock", meta));
}
for meta in 0 to 5 {
	mods.jei.JEI.addItem(itemUtils.getItem("immersivetech:metal_multiblock", meta));
}
for meta in [0, 1, 4, 5, 6, 8] as int[] {
	mods.jei.JEI.addItem(itemUtils.getItem("immersivetech:metal_multiblock", meta));
}*/

print("Testing");
oreDict["paper"].add(<contenttweaker:blue_paper>);
oreDict["wireRefinedIron"].add(<contenttweaker:wire_refined_iron>);

/*** Essential Materials ***/
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.addRecipe(<contenttweaker:medium_grade_charcoal>, 100, oreDict["logWood"], 200);
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6>, 100, <contenttweaker:medium_grade_charcoal>, 400);
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:stone_decoration:3>, 800, <contenttweaker:block_medium_grade_charcoal>, 3200);

mods.immersiveengineering.BlastFurnace.addRecipe(hashIngot["RefinedIron"].firstItem * 2, hashOre["Iron"], 800, <immersiveengineering:material:7> * 2);
mods.immersiveengineering.BlastFurnace.addRecipe(hashIngot["RefinedIron"].firstItem, hashIngot["Iron"], 600,<immersiveengineering:material:7>);

/* Redstone */
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:regolith>, 0.5, <minecraft:flint>, 0.05, hashGem["RedGarnet"].firstItem, 0.02, hashGem["Sapphire"].firstItem, 0.01, hashGem["YellowGarnet"].firstItem, true);
mods.techguns.ChargingStation.addRecipe(hashGem["RedGarnet"].firstItem, hashGem["ChargedRedGarnet"].firstItem, 10000);
mods.techguns.ChargingStation.addRecipe(hashGem["YellowGarnet"].firstItem, hashGem["ChargedYellowGarnet"].firstItem, 100000);
mods.techguns.ChargingStation.addRecipe(hashGem["Sapphire"].firstItem, hashGem["ChargedSapphire"].firstItem, 100000);
mods.rustichromia.Quern.add("redstone", [hashGem["ChargedRedGarnet"]], [hashDust["Redstone"].firstItem * 3], 12, 1.0/0, 500);
mods.immersiveengineering.Crusher.addRecipe(hashDust["Redstone"].firstItem * 8, hashGem["ChargedRedGarnet"], 40000);

/* Nickel */
mods.magneticraft.Sieve.addRecipe(<contenttweaker:regolith>, <contenttweaker:ore_chunk_magnetite>, 0.2, <contenttweaker:ore_chunk_pyrrhotite>, 0.15, <minecraft:flint>, 0.5, 0.5, true);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:compacted_ore_chunk_pyrrhotite>, <contenttweaker:ore_chunk_pyrrhotite>, <embers:stamp_flat>, 8000, 1);
mods.immersiveintelligence.ChemicalBath.addRecipe(<contenttweaker:compacted_ore_chunk_pyrrhotite>, <contenttweaker:purified_ore_chunk_pyrrhotite>, <liquid:distwater> * 1000, 12800, 400);
mods.immersiveengineering.Crusher.addRecipe(hashDust["Nickel"].firstItem, <contenttweaker:purified_ore_chunk_pyrrhotite>, 6400, hashDust["Iron"].firstItem, 0.50);
mods.immersiveengineering.BlastFurnace.addRecipe(hashIngot["Nickel"].firstItem, hashDust["Nickel"], 4000, <immersiveengineering:material:7> * 2);

/* Silver */
// Alloy Kiln: Invar
mods.immersiveengineering.Crusher.addRecipe(hashDust["Invar"].firstItem, hashIngot["Invar"], 3200); // Temporary
// mods.magneticraft.Grinder.addRecipe(hashIngot["Invar"].firstItem, hashDust["Invar"].firstItem, <minecraft:stone>, 0.0, 30);
mods.immersiveintelligence.ChemicalBath.addRecipe(hashDust["Invar"].firstItem, <contenttweaker:purified_compound_invar>, <liquid:distwater> * 1200, 19200, 300);
mods.immersiveengineering.Mixer.addRecipe(<liquid:ethanoate_invar> * 250, <liquid:ethanoic_acid> * 250, [<contenttweaker:purified_compound_invar>], 8000);
addVacuumEvaporatorRecipe(<liquid:water> * 250, <contenttweaker:crystal_hydrated_silver>, <liquid:ethanoate_invar> * 250, 96000, 2400);
mods.industrialrenewal.lathe.addRecipe(hashIngot["Silver"].firstItem, <contenttweaker:crystal_hydrated_silver>, 120);

changeRecipeShapedMirrored("engineers_hammer", <immersiveengineering:tool>, [
	[null, hashIngot["Terne"], <immersiveengineering:material:4>],
	[null, oreDict["stickWood"], hashIngot["Terne"]],
	[oreDict["stickWood"], null, null]
]);
changeRecipeShapedMirrored("engineers_wirecutter", <immersiveengineering:tool:1>, [
	[<immersiveengineering:material>, hashPlate["Terne"]],
	[null, <immersiveengineering:material>]
]);

/*** Crafting Materials ***/
recipes.remove(<minecraft:hopper>);
recipes.addShapeless("hopper_convert", <minecraft:hopper>, [
	<pneumaticcraft:omnidirectional_hopper>
]);
recipes.addShapeless("omnidirectional_hopper_convert", <pneumaticcraft:omnidirectional_hopper>, [
	<minecraft:hopper>
]);
recipes.addShaped("omnidirectional_hopper", <pneumaticcraft:omnidirectional_hopper>, [
	[hashPlate["Iron"], <immersiveengineering:tool>.transformDamage(1), hashPlate["Iron"]],
	[hashIngot["Iron"], <minecraft:chest>, hashIngot["Iron"]],
	[null, hashIngot["Iron"], null]
]);
changeRecipeShaped("liquid_hopper", <pneumaticcraft:liquid_hopper>, [
	[hashPlate["Iron"], <immersiveengineering:tool>.transformDamage(1), hashPlate["Iron"]],
	[hashIngot["Iron"], <immersiveengineering:metal_device0:4>, hashIngot["Iron"]],
	[null, hashIngot["Iron"], null]
]);

changeRecipeShaped("piston", <minecraft:piston>, [
	[oreDict["plankWood"], oreDict["plankWood"], oreDict["plankWood"]],
	[<minecraft:stone>, <contenttweaker:shoddy_piston>, <minecraft:stone>],
	[<minecraft:stone>, hashIngot["RefinedIron"], <minecraft:stone>]
]);

changeRecipeShaped("waterwheel_segment", <immersiveengineering:material:10>, [
	[null, hashRod["RefinedIron"], null],
	[hashRod["RefinedIron"], oreDict["plankTreatedWood"], hashRod["RefinedIron"]],
	[oreDict["plankTreatedWood"], hashRod["RefinedIron"], oreDict["plankTreatedWood"]],
]);
changeRecipeShaped("windmill_blade", <immersiveengineering:material:11>, [
	[oreDict["plankTreatedWood"], oreDict["plankTreatedWood"], null],
	[oreDict["stickTreatedWood"], oreDict["stickTreatedWood"], hashRod["Terne"]],
	[oreDict["stickTreatedWood"], oreDict["stickTreatedWood"], null],
]);
changeRecipeShaped("lv_wire_coil_block", <immersiveengineering:metal_decoration0>, [
	[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
	[<immersiveengineering:wirecoil>, hashIngot["RefinedIron"], <immersiveengineering:wirecoil>],
	[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]
]);
changeRecipeShaped("coil", <techguns:itemshared:68>, [
	[null, oreDict["wireCopper"], hashIngot["RefinedIron"]],
	[oreDict["wireCopper"], hashIngot["RefinedIron"], oreDict["wireCopper"]],
	[hashIngot["RefinedIron"], oreDict["wireCopper"], null]
]);

changeRecipeShapeless("blue_paper", <contenttweaker:blue_paper>, [
	<minecraft:paper>, oreDict["dyeBlue"]
]);
recipes.addShaped("wooden_wire_spool", <contenttweaker:wood_coil> * 2, [
	[oreDict["plankTreatedWood"], null, oreDict["plankTreatedWood"]],
	[oreDict["stickTreatedWood"], oreDict["stickTreatedWood"], oreDict["stickTreatedWood"]],
	[oreDict["plankTreatedWood"], null, oreDict["plankTreatedWood"]]
]);


/*** Others ***/
changeRecipeShaped("jump_cushion", <immersiveengineering:cloth_device> * 3, [
	[oreDict["fabricHemp"], oreDict["blockWool"], oreDict["fabricHemp"]],
	[oreDict["blockWool"], null, oreDict["blockWool"]],
	[oreDict["fabricHemp"], oreDict["blockWool"], oreDict["fabricHemp"]]
]);
changeRecipeShaped("strip_curtains", <immersiveengineering:cloth_device:2> * 6, [
	[hashRod["Iron"], hashRod["Iron"], hashRod["Iron"]],
	[oreDict["fabricHemp"], oreDict["fabricHemp"], oreDict["fabricHemp"]],
	[oreDict["fabricHemp"], oreDict["fabricHemp"], oreDict["fabricHemp"]]
]);
changeRecipeShaped("lantern", <immersiveengineering:wooden_device0:6>, [
	[oreDict["plankTreatedWood"], hashIngot["RefinedIron"], oreDict["plankTreatedWood"]],
	[hashDust["Redstone"], <immersiveengineering:metal_decoration0>, hashDust["Redstone"]]
]);
changeRecipeShaped("lantern_powered", <immersiveengineering:metal_decoration2:4> * 2, [
	[null, hashPlate["Iron"], null],
	[oreDict["paneGlass"], oreDict["torch"], oreDict["paneGlass"]],
	[null, hashPlate["Iron"], null]
]);
changeRecipeShaped("razor_wire", <immersiveengineering:metal_decoration2:5> * 4, [
	[hashPlate["RefinedIron"], oreDict["wireRefinedIron"], hashPlate["RefinedIron"]],
	[oreDict["wireRefinedIron"], oreDict["wireRefinedIron"], oreDict["wireRefinedIron"]],
	[hashPlate["RefinedIron"], oreDict["wireRefinedIron"], hashPlate["RefinedIron"]]
]);
changeRecipeShaped("tesla_coil", <immersiveengineering:metal_device1:8>, [
	[hashRod["Copper"], <immersiveengineering:metal_decoration0>, hashRod["Copper"]],
	[hashPlate["RefinedIron"], hashRod["RefinedIron"], hashPlate["RefinedIron"]],
	[oreDict["plankTreatedWood"], <immersiveengineering:metal_device0>, oreDict["plankTreatedWood"]]
]);
changeRecipeShaped("flood_light", <immersiveengineering:metal_device1:9>, [
	[hashPlate["RefinedIron"], hashPlate["RedstoneAlloy"], hashPlate["RefinedIron"]],
	[<immersiveengineering:material:5>, hashBlock["Glowstone"], <immersiveengineering:metal_decoration0>],
	[hashPlate["RefinedIron"], hashPlate["RedstoneAlloy"], hashPlate["RefinedIron"]]
]);

/*** Machines ***/
/****** Generators ******/
changeRecipeShaped("waterwheel", <immersiveengineering:wooden_device1>, [
	[<immersiveengineering:material:10>, <immersiveengineering:material:10>, <immersiveengineering:material:10>],
	[<immersiveengineering:material:10>, hashGear["RefinedIron"], <immersiveengineering:material:10>],
	[<immersiveengineering:material:10>, <immersiveengineering:material:10>, <immersiveengineering:material:10>],
]);
changeRecipeShaped("windmill", <immersiveengineering:wooden_device1:1>, [
	[<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>],
	[<immersiveengineering:material:11>, hashGear["Terne"], <immersiveengineering:material:11>],
	[<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>],
]);
changeRecipeShaped("kinetic_dynamo", <immersiveengineering:metal_device1:2>, [
	[hashIngot["RefinedIron"], oreDict["wireCopper"], hashIngot["RefinedIron"]],
	[hashIngot["RedstoneAlloy"], <immersiveengineering:metal_decoration0>, hashIngot["RedstoneAlloy"]],
	[hashIngot["RefinedIron"], hashPlate["Terne"], hashIngot["RefinedIron"]]
]);
recipes.remove(<immersiveengineering:metal_device1:3>);

/****** Producers ******/
recipes.remove(<techguns:simplemachine:10>);
mods.rustichromia.Assembler.add("charging_station", 2, [<immersiveengineering:metal_decoration0>, <immersiveengineering:connector> * 2, <techguns:itemshared:68> * 2, hashPlate["Terne"] * 4], [<techguns:simplemachine:10>], 12, 1.0/0, 1000);

changeRecipeShaped("external_heater", <immersiveengineering:metal_device1:1>, [
	[hashPlate["RefinedIron"], oreDict["wireElectrum"], hashPlate["RefinedIron"]],
	[oreDict["wireElectrum"], <immersiveengineering:metal_decoration0>, oreDict["wireElectrum"]],
	[hashPlate["RefinedIron"], oreDict["wireElectrum"], hashPlate["RefinedIron"]]
]);
changeRecipeShaped("charging_station", <immersiveengineering:metal_device1:5>, [
	[hashPlate["Silver"], <immersiveengineering:connector:2>, hashPlate["Silver"]],
	[oreDict["blockGlass"], null, oreDict["blockGlass"]],
	[oreDict["plankTreatedWood"], <immersiveengineering:metal_device0>, oreDict["plankTreatedWood"]]
]);

/*** Multiblocks ***/
mods.multiblockstages.IEMultiBlockStages.addStage("IECokeOven", "IE:CokeOven");
mods.multiblockstages.IEMultiBlockStages.addStage("IEBlastFurnace", "IE:BlastFurnace");
mods.multiblockstages.IEMultiBlockStages.addStage("IEMetalPress", "IE:MetalPress");
mods.multiblockstages.IEMultiBlockStages.addStage("ITAdvancedCokeOven", "IT:CokeOvenAdvanced");
mods.multiblockstages.IEMultiBlockStages.addStage("IEAdvancedBlastFurnace", "IE:BlastFurnaceAdvanced");
mods.multiblockstages.IEMultiBlockStages.addStage("IEFermenter", "IE:Fermenter");
mods.multiblockstages.IEMultiBlockStages.addStage("IIChemicalBath", "II:ChemicalBath");
mods.multiblockstages.IEMultiBlockStages.addStage("IECrusher", "IE:Crusher");
mods.multiblockstages.IEMultiBlockStages.addStage("IEAlloyKiln", "IE:AlloySmelter");
mods.multiblockstages.IEMultiBlockStages.addStage("ITDistiller", "IT:Distiller");
mods.multiblockstages.IEMultiBlockStages.addStage("IEMixer", "IE:Mixer");
mods.multiblockstages.IEMultiBlockStages.addStage("IIElectrolyzer", "II:Electrolyzer");
mods.multiblockstages.IEMultiBlockStages.addStage("IEIndustrialSqueezer", "IE:Squeezer");

/*** Multiblock Construction Materials ***/
changeRecipeShaped("coke_brick", <immersiveengineering:stone_decoration> * 3, [
	[hashIngot["Terne"], <embers:archaic_brick>, hashIngot["Terne"]],
	[<embers:archaic_brick>, <contenttweaker:block_low_grade_charcoal>, <embers:archaic_brick>],
	[hashIngot["Terne"], <embers:archaic_brick>, hashIngot["Terne"]]
]);
changeRecipeShaped("blast_brick", <immersiveengineering:stone_decoration:1> * 3, [
	[hashIngot["Terne"], <immersiveengineering:stone_decoration>, hashIngot["Terne"]],
	[<immersiveengineering:stone_decoration>, <thermalfoundation:storage_resource:1>, <immersiveengineering:stone_decoration>],
	[hashIngot["Terne"], <immersiveengineering:stone_decoration>, hashIngot["Terne"]]
]);
changeRecipeShaped("reinforced_coke_brick", <immersivetech:stone_decoration>, [
	[hashPlate["RefinedIron"]],
	[<immersiveengineering:stone_decoration>],
	[<immersiveengineering:stone_decoration:5>]
]);
changeRecipeShaped("reinforced_blast_brick",<immersiveengineering:stone_decoration:2>, [
	[null, hashPlate["RefinedIron"], null],
	[hashRod["Terne"], <immersiveengineering:stone_decoration:1>, hashRod["Terne"]],
	[null, <immersiveengineering:stone_decoration:7>, null]
]);
recipes.remove(<immersiveengineering:stone_decoration:10>);

changeRecipeShaped("redstone_engineering_block_redstone", <immersiveengineering:metal_decoration0:3> * 2, [
	[hashIngot["RefinedIron"], hashDust["Redstone"], hashIngot["RefinedIron"]],
	[hashDust["Redstone"], hashGear["Bronze"], hashDust["Redstone"]],
	[hashIngot["RefinedIron"], hashDust["Redstone"], hashIngot["RefinedIron"]]
]);
changeRecipeShaped("light_engineering_block", <immersiveengineering:metal_decoration0:4>, [
	[hashIngot["RefinedIron"], <immersiveengineering:material:8>, hashIngot["RefinedIron"]],
	[hashIngot["Bronze"], hashIngot["Bronze"], hashIngot["Bronze"]],
	[hashIngot["RefinedIron"], <immersiveengineering:material:8>, hashIngot["RefinedIron"]]
]);
changeRecipeShaped("heavy_engineering_block", <immersiveengineering:metal_decoration0:5>, [
	[hashIngot["RefinedIron"], <immersiveengineering:material:9>, hashIngot["RefinedIron"]],
	[<minecraft:piston>, hashIngot["Bronze"], <minecraft:piston>],
	[hashIngot["RefinedIron"], <immersiveengineering:material:9>, hashIngot["RefinedIron"]]
]);
changeRecipeShaped("refined_iron_scaffolding", <immersiveengineering:metal_decoration1> * 6, [
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], hashIngot["RefinedIron"]],
	[null, hashRod["RefinedIron"], null],
	[hashRod["RefinedIron"], null, hashRod["RefinedIron"]]
]);
changeRecipeShaped("refined_iron_fence", <immersiveengineering:metal_decoration1:1> * 3, [
	[hashIngot["RefinedIron"], hashRod["RefinedIron"], hashIngot["RefinedIron"]],
	[hashIngot["RefinedIron"], hashRod["RefinedIron"], hashIngot["RefinedIron"]]
]);

/*** Transfer ***/
/****** Items ******/
changeRecipeShaped("item_router", <immersiveengineering:wooden_device0:3>, [
	[oreDict["plankTreatedWood"], hashIngot["RedstoneAlloy"], oreDict["plankTreatedWood"]],
	[hashGear["Copper"], <embers:item_transfer>, hashGear["Copper"]],
	[hashIngot["RefinedIron"], <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), hashIngot["RefinedIron"]]
]);

/****** Liquids ******/
changeRecipeShaped("fluid_pipe_ie", <immersiveengineering:metal_device1:6> * 4, [
	[hashPlate["Iron"], hashPlate["RefinedIron"], hashPlate["Iron"]],
	[null, null, null],
	[hashPlate["Iron"], hashPlate["RefinedIron"], hashPlate["Iron"]]
]);
changeRecipeShaped("fluid_pump", <immersiveengineering:metal_device0:5>, [
	[null, hashPlate["RefinedIron"], null],
	[hashPlate["RefinedIron"], <immersiveengineering:material:8>, hashPlate["RefinedIron"]],
	[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]
]);
changeRecipeShaped("fluid_outlet", <immersiveengineering:metal_device0:6>, [
	[hashPlate["RefinedIron"], <immersiveengineering:metal_device1:6>, hashPlate["RefinedIron"]],
	[oreDict["barsIron"], <immersiveengineering:metal_device1:6>, oreDict["barsIron"]],
	[hashPlate["RefinedIron"], <immersiveengineering:metal_device1:6>, hashPlate["RefinedIron"]]
]);
changeRecipeShaped("fluid_router", <immersiveengineering:wooden_device0:7>, [
	[oreDict["plankTreatedWood"], hashIngot["RedstoneAlloy"], oreDict["plankTreatedWood"]],
	[hashGear["Copper"], <embers:fluid_transfer>, hashGear["Copper"]],
	[hashIngot["RefinedIron"], <immersiveengineering:metal_device1:6>, hashIngot["RefinedIron"]]
]);

/****** Energy ******/
changeRecipeShapedMirrored("wooden_post", <immersiveengineering:wooden_device1:3>, [
	[oreDict["fenceTreatedWood"], <immersiveengineering:wooden_device1:4>],
	[oreDict["fenceTreatedWood"], null],
	[oreDict["bricksStone"], null]
]);
changeRecipeShapedMirrored("refined_iron_post", <immersiveengineering:metal_decoration2>, [
	[oreDict["fenceSteel"], <immersiveengineering:metal_decoration2:1>],
	[oreDict["fenceSteel"], null],
	[oreDict["bricksStone"], null]
]);
changeRecipeShapedMirrored("aluminium_post", <immersiveengineering:metal_decoration2:2>, [
	[oreDict["fenceAluminium"], <immersiveengineering:metal_decoration2:3>],
	[oreDict["fenceAluminium"], null],
	[oreDict["bricksStone"], null]
]);
changeRecipeShaped("lv_wire_coil", <immersiveengineering:wirecoil>, [
	[null, oreDict["wireCopper"], null],
	[oreDict["wireCopper"], <contenttweaker:wood_coil>, oreDict["wireCopper"]],
	[null, oreDict["wireCopper"], null]
]);
changeRecipeShaped("lv_connector", <immersiveengineering:connector> * 2, [
	[null, hashPlate["Copper"], null],
	[<minecraft:hardened_clay:*>, oreDict["wireCopper"], <minecraft:hardened_clay:*>],
	[<minecraft:hardened_clay:*>, oreDict["wireCopper"], <minecraft:hardened_clay:*>]
]);
changeRecipeShaped("lv_relay", <immersiveengineering:connector:1> * 3, [
	[null, hashIngot["Copper"], null],
	[<minecraft:hardened_clay:*>, oreDict["wireCopper"], <minecraft:hardened_clay:*>]
]);

/*** Storage ***/
/****** Items ******/
changeRecipeShaped("wooden_crate", <immersiveengineering:wooden_device0>, [
	[<immersiveengineering:material>, oreDict["plankTreatedWood"], <immersiveengineering:material>],
	[oreDict["plankTreatedWood"], oreDict["chest"], oreDict["plankTreatedWood"]],
	[<immersiveengineering:material>, oreDict["plankTreatedWood"], <immersiveengineering:material>]
]);
changeRecipeShaped("reinforced_wooden_crate", <immersiveengineering:wooden_device0:5>, [
	[hashRod["Terne"], hashPlate["RefinedIron"], hashRod["Terne"]],
	[hashPlate["RefinedIron"], <immersiveengineering:wooden_device0>, hashPlate["RefinedIron"]],
	[hashRod["Terne"], hashPlate["RefinedIron"], hashRod["Terne"]]
]);

/****** Liquids ******/
changeRecipeShapedMirrored("jerrycan", <immersiveengineering:jerrycan>, [
	[null, hashPlate["RefinedIron"], hashPlate["RefinedIron"]],
	[hashPlate["RefinedIron"], <minecraft:bucket>, <minecraft:bucket>],
	[hashPlate["RefinedIron"], <minecraft:bucket>, <minecraft:bucket>]
]);
changeRecipeShaped("wooden_barrel", <immersiveengineering:wooden_device0:1>, [
	[<immersiveengineering:material>, oreDict["plankTreatedWood"], <immersiveengineering:material>],
	[oreDict["plankTreatedWood"], <embers:block_tank>, oreDict["plankTreatedWood"]],
	[<immersiveengineering:material>, oreDict["plankTreatedWood"], <immersiveengineering:material>]
]);
changeRecipeShaped("metal_barrel", <immersiveengineering:metal_device0:4>, [
	[hashRod["Terne"], hashPlate["RefinedIron"], hashRod["Terne"]],
	[hashPlate["RefinedIron"], <immersiveengineering:wooden_device0:1>, hashPlate["RefinedIron"]],
	[hashRod["Terne"], hashPlate["RefinedIron"], hashRod["Terne"]]
]);

/****** Energy ******/
changeRecipeShaped("lv_capacitor", <immersiveengineering:metal_device0>, [
	[hashIngot["RefinedIron"], hashIngot["RefinedIron"], hashIngot["RefinedIron"]],
	[hashIngot["RedstoneAlloy"], <immersiveengineering:metal_device0>, hashIngot["RedstoneAlloy"]],
	[oreDict["plankTreatedWood"], hashBlock["Bronze"], oreDict["plankTreatedWood"]]
]);
