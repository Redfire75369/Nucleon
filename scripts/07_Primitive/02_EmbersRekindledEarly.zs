#loader crafttweaker
#priority -0702

/*** Crafting Materials ***/
recipes.addShaped("reinforced_stone_gear", <contenttweaker:reinforced_stone_gear>, [
	[null, <minecraft:stone>, null],
	[<minecraft:stone>, hashPlate["Iron"], <minecraft:stone>],
	[null, <minecraft:stone>, null]
]);
recipes.addShapedMirrored("sealant", <contenttweaker:sealant>, [
	[<minecraft:rotten_flesh>, <embers:blend_caminite>],
	[<embers:blend_caminite>, <minecraft:rotten_flesh>]
]);
recipes.addShaped("mechanical_archaic_circuit", <contenttweaker:mech_archaic_circuit>, [
	[null, <embers:archaic_brick>, null],
	[<embers:archaic_brick>, hashGear["Copper"], <embers:archaic_brick>],
	[null, <embers:archaic_brick>, null]
]);
recipes.addShaped("shoddy_piston", <contenttweaker:shoddy_piston>, [
	[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>],
	[hashIngot["Copper"], oreDict["wireCopper"], hashIngot["Copper"]],
	[hashIngot["Copper"], hashPlate["Iron"], hashIngot["Copper"]]
]);
changeRecipeShaped("string_mesh", <magneticraft:crafting:6>, [
	[<minecraft:string>, <minecraft:string>, <minecraft:string>],
	[<minecraft:string>, <embers:plate_caminite>, <minecraft:string>],
	[<minecraft:string>, <minecraft:string>, <minecraft:string>]
]);

/*** Stamps ***/
changeRecipeShaped("stamp_flat_raw", <embers:stamp_flat_raw>, [
	[<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>],
	[<embers:blend_caminite>, <embers:plate_caminite_raw>, <embers:blend_caminite>],
	[<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>]
]);
changeRecipeShaped("stamp_bar_raw", <embers:stamp_bar_raw>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[<embers:plate_caminite_raw>, hashIngot["Iron"], <embers:plate_caminite_raw>],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);
changeRecipeShaped("stamp_gear_raw", <embers:stamp_gear_raw>, [
	[<embers:blend_caminite>, <embers:tinker_hammer>.reuse(), <embers:blend_caminite>],
	[null, hashPlate["Iron"], null],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);
changeRecipeShaped("stamp_plate_raw", <embers:stamp_plate_raw>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[<embers:plate_caminite_raw>, hashPlate["Iron"], <embers:plate_caminite_raw>],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);
changeRecipeShaped("stamp_nugget_raw", <soot:stamp_nugget_raw>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[null, hashNugget["Iron"], null],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);

/*** Informative Items ***/
changeRecipeShaped("atmospheric_gauge", <embers:ember_detector>, [
	[null, hashIngot["Iron"], null],
	[hashIngot["Copper"], <embers:tinker_hammer>.reuse(), hashIngot["Copper"]],
	[hashIngot["Copper"], hashPlate["Iron"], hashIngot["Copper"]]
]);
changeRecipeShapedMirrored("tinker_lens", <embers:tinker_lens>, [
	[hashIngot["Iron"], hashNugget["Iron"], null],
	[hashPlate["Iron"], oreDict["paneGlass"], hashNugget["Iron"]],
	[hashIngot["Iron"], hashNugget["Iron"], null]
]);
changeRecipeShaped("ember_dial", <embers:ember_gauge>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[hashIngot["Copper"], <embers:plate_caminite>, hashIngot["Copper"]],
	[null, hashIngot["Copper"], null]
]);
changeRecipeShaped("fluid_dial", <embers:fluid_gauge>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[hashIngot["Iron"], <embers:plate_caminite>, hashIngot["Iron"]],
	[null, hashIngot["Iron"], null]
]);

/*** Machines ***/
/****** Generators ******/
changeRecipeShaped("ember_activator", <embers:ember_activator>, [
	[<embers:shard_ember>, <embers:crystal_ember>, <embers:shard_ember>],
	[hashIngot["Iron"], hashPlate["Copper"], hashIngot["Iron"]],
	[<embers:block_caminite_brick>, <minecraft:furnace>, <embers:block_caminite_brick>]
]);

/****** Processors ******/
changeRecipeShaped("ember_bore", <embers:ember_bore>, [
	[<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>],
	[<embers:archaic_bricks>, <embers:ancient_motive_core>, <embers:archaic_bricks>],
	[<thermalfoundation:material:657>, <thermalfoundation:material:657>, <thermalfoundation:material:657>]
]);
changeRecipeShaped("melter", <embers:block_furnace>, [
	[<embers:brick_caminite>, <contenttweaker:reinforced_stone_gear>, <embers:brick_caminite>],
	[<embers:plate_caminite>, hashPlate["Copper"], <embers:plate_caminite>],
	[<contenttweaker:reinforced_stone_gear>, <minecraft:furnace>, <contenttweaker:reinforced_stone_gear>]
]);
changeRecipeShaped("stamper", <embers:stamper>, [
	[<embers:block_caminite_brick>, hashIngot["Iron"], <embers:block_caminite_brick>],
	[hashPlate["Copper"], hashPlate["Iron"], hashPlate["Copper"]],
	[<embers:brick_caminite>, <contenttweaker:shoddy_piston>, <embers:brick_caminite>],
]);
changeRecipeShaped("stamp_base", <embers:stamper_base>, [
	[<embers:brick_caminite>, null, <embers:brick_caminite>],
	[<embers:plate_caminite>, <minecraft:bucket>, <embers:plate_caminite>],
	[<embers:block_caminite_brick>, hashPlate["Iron"], <embers:block_caminite_brick>],
]);
changeRecipeShapedMirrored("geologic_separator", <embers:geo_separator>, [
	[<embers:archaic_brick>, <embers:archaic_brick>, hashPlate["Iron"]],
	[<embers:brick_caminite>, <contenttweaker:mech_archaic_circuit>, <embers:brick_caminite>]
]);
changeRecipeShaped("cinder_plinth", <embers:cinder_plinth>, [
	[null, hashPlate["Iron"], null],
	[hashPlate["Tin"], hashIngot["Copper"], hashPlate["Tin"]],
	[<embers:archaic_brick>, <minecraft:furnace>, <embers:archaic_brick>]
]);
changeRecipeShaped("mixer_centrifuge", <embers:mixer>, [
	[hashPlate["Tin"], <mysticalmechanics:axle_iron>, hashPlate["Tin"]],
	[<embers:block_caminite_brick>, hashGear["Copper"], <embers:block_caminite_brick>],
	[<embers:block_furnace>, hashGear["Copper"], <embers:block_furnace>],
]);

/****** Utilities ******/
changeRecipeShaped("machine_accessor", <embers:mech_accessor>, [
	[<embers:brick_caminite>, null, <embers:brick_caminite>],
	[null, <contenttweaker:reinforced_stone_gear>,  null],
	[<embers:brick_caminite>, null, <embers:brick_caminite>]
]);
changeRecipeShaped("mechanical_core", <embers:mech_core>, [
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[null, <contenttweaker:reinforced_stone_gear>,  null],
	[<embers:archaic_brick>, null, <embers:archaic_brick>]
]);

/*** Transport ***/
/****** Items ******/
changeRecipeShaped("item_pipe", <embers:item_pipe> * 12, [
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]],
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]]
]);
changeRecipeShaped("item_extractor", <embers:item_pump>, [
	[null, <minecraft:stone_button>, null],
	[<embers:item_pipe>, <contenttweaker:reinforced_stone_gear>, <embers:item_pipe>],
	[null, <minecraft:stone_button>, null]
]);
changeRecipeShaped("item_transfer", <embers:item_transfer>, [
	[<embers:item_pipe>, hashIngot["Iron"], <embers:item_pipe>],
	[hashPlate["Lead"], <magneticraft:crafting:6>, hashPlate["Lead"]],
	[hashIngot["Iron"], null, hashIngot["Iron"]]
]);
changeRecipeShaped("item_vacuum", <embers:vacuum>, [
	[hashPlate["Iron"], <minecraft:hopper>, hashPlate["Iron"]],
	[hashPlate["Iron"], <embers:item_transfer>, hashPlate["Iron"]],
	[<minecraft:ender_pearl>, <embers:item_pipe>, <minecraft:ender_pearl>]
]);
recipes.remove(<embers:item_dropper>);

/****** Fluids ******/
changeRecipeShaped("fluid_pipe", <embers:pipe> * 12, [
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]],
	[null, <contenttweaker:sealant>, null],
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]]
]);
changeRecipeShaped("fluid_extractor", <embers:pump>, [
	[null, <minecraft:stone_button>, null],
	[<embers:pipe>, <contenttweaker:reinforced_stone_gear>, <embers:pipe>],
	[null, <minecraft:stone_button>, null]
]);
changeRecipeShaped("fluid_transfer", <embers:fluid_transfer>, [
	[<embers:pipe>, hashIngot["Lead"], <embers:pipe>],
	[hashPlate["Lead"], <magneticraft:crafting:6>, hashPlate["Lead"]],
	[hashIngot["Iron"], <contenttweaker:sealant>, hashIngot["Iron"]]
]);

/****** Ember ******/
changeRecipeShaped("ember_emitter", <embers:ember_emitter>, [
	[null, hashIngot["Copper"], null],
	[null, hashIngot["Copper"], null],
	[hashGear["Stone"], <embers:archaic_circuit>, hashGear["Stone"]]
]);
changeRecipeShaped("ember_receptor", <embers:ember_receiver>, [
	[hashGear["Stone"], null, hashGear["Stone"]],
	[hashIngot["Copper"], <embers:archaic_circuit>, hashIngot["Copper"]]
]);
changeRecipeShaped("ember_relay", <embers:ember_relay> * 4, [
	[null, hashIngot["Copper"], null],
	[<embers:archaic_brick>, hashGear["Stone"], <embers:archaic_brick>],
	[null, hashIngot["Copper"], null]
]);

/*** Storage ***/
/****** Items ******/
changeRecipeShaped("bin", <embers:bin>, [
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[hashPlate["Iron"], hashPlate["Iron"], hashPlate["Iron"]]
]);

/****** Fluids ******/ 
recipes.remove(<embers:block_tank>);
recipes.addShaped("fluid_vessel", <embers:block_tank>, [
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[hashPlate["Iron"], <minecraft:bucket>, hashPlate["Iron"]]
]);
recipes.remove(<embers:large_tank>);
recipes.addShaped("reservoir", <embers:large_tank>, [
	[<embers:block_caminite_brick>, <embers:block_tank>, <embers:block_caminite_brick>],
	[hashPlate["Lead"], null, hashPlate["Lead"]],
	[<embers:block_caminite_brick>, <embers:block_tank>, <embers:block_caminite_brick>]
]);

/****** Ember ******/
recipes.remove(<embers:copper_cell>);
recipes.addShaped("copper_cell", <embers:copper_cell>, [
	[<embers:block_caminite_brick>, hashPlate["Copper"], <embers:block_caminite_brick>],
	[hashPlate["Copper"], <embers:ancient_motive_core>, hashPlate["Copper"]],
	[<embers:block_caminite_brick>, hashPlate["Copper"], <embers:block_caminite_brick>]
]);