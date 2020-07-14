#loader crafttweaker
#priority -0502

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
recipes.remove(<magneticraft:crafting:6>);
recipes.addShaped("string_mesh", <magneticraft:crafting:6>, [
	[<minecraft:string>, <minecraft:string>, <minecraft:string>],
	[<minecraft:string>, <embers:plate_caminite>, <minecraft:string>],
	[<minecraft:string>, <minecraft:string>, <minecraft:string>]
]);

/*** Stone Variants ***/
recipes.remove(<minecraft:stone:1>);
recipes.remove(<minecraft:stone:3>);
recipes.remove(<minecraft:stone:5>);

mods.embers.Stamper.add(<minecraft:stone>, <liquid:stone> * 125, <embers:stamp_flat>);
mods.embers.Stamper.add(<minecraft:stone:1>, <liquid:stone> * 125, oreDict["dyeRed"]);
mods.embers.Stamper.add(<minecraft:stone:3>, <liquid:stone> * 125, oreDict["dyeWhite"]);
mods.embers.Stamper.add(<minecraft:stone:5>, <liquid:stone> * 125, oreDict["dyeGray"]);

mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone>);
mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone:1>, <liquid:copper> * 18);
mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone:3>, <liquid:iron> * 18);
mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone:5>, <liquid:tin> * 18);
mods.embers.Melter.add(<liquid:ashen_stone> * 125, <embers:ashen_stone>);

/*** Stamps ***/
recipes.remove(<embers:stamp_bar_raw>);
recipes.remove(<embers:stamp_flat_raw>);
recipes.remove(<embers:stamp_gear_raw>);
recipes.remove(<embers:stamp_plate_raw>);
recipes.remove(<soot:stamp_nugget_raw>);

recipes.addShaped("stamp_flat_raw", <embers:stamp_flat_raw>, [
	[<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>],
	[<embers:blend_caminite>, <embers:plate_caminite_raw>, <embers:blend_caminite>],
	[<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>]
]);
recipes.addShaped("stamp_bar_raw", <embers:stamp_bar_raw>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[<embers:plate_caminite_raw>, hashIngot["Iron"], <embers:plate_caminite_raw>],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);
recipes.addShaped("stamp_gear_raw", <embers:stamp_gear_raw>, [
	[<embers:blend_caminite>, <embers:tinker_hammer>.reuse(), <embers:blend_caminite>],
	[null, hashPlate["Iron"], null],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);
recipes.addShaped("stamp_plate_raw", <embers:stamp_plate_raw>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[<embers:plate_caminite_raw>, hashPlate["Iron"], <embers:plate_caminite_raw>],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);
recipes.addShaped("stamp_nugget_raw", <soot:stamp_nugget_raw>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[null, hashNugget["Iron"], null],
	[<embers:blend_caminite>, <embers:stamp_flat_raw>, <embers:blend_caminite>]
]);

/*** Informative Items ***/
recipes.remove(<embers:ember_detector>);
recipes.addShaped("atmospheric_gauge", <embers:ember_detector>, [
	[null, hashIngot["Iron"], null],
	[hashIngot["Copper"], <embers:tinker_hammer>.reuse(), hashIngot["Copper"]],
	[hashIngot["Copper"], hashPlate["Iron"], hashIngot["Copper"]]
]);
recipes.remove(<embers:tinker_lens>);
recipes.addShaped("tinker_lens", <embers:tinker_lens>, [
	[hashIngot["Iron"], hashNugget["Iron"], null],
	[hashPlate["Iron"], oreDict["paneGlass"], hashNugget["Iron"]],
	[hashIngot["Iron"], hashNugget["Iron"], null]
]);
recipes.remove(<embers:ember_gauge>);
recipes.addShaped("ember_dial", <embers:ember_gauge>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[hashIngot["Copper"], <embers:plate_caminite>, hashIngot["Copper"]],
	[null, hashIngot["Copper"], null]
]);
recipes.remove(<embers:fluid_gauge>);
recipes.addShaped("fluid_dial", <embers:fluid_gauge>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[hashIngot["Iron"], <embers:plate_caminite>, hashIngot["Iron"]],
	[null, hashIngot["Iron"], null]
]);
recipes.remove(<mystgears:mechanical_dial>);
recipes.addShaped("mechanical_dial", <mystgears:mechanical_dial>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[hashIngot["Gold"], <embers:plate_caminite>, hashIngot["Gold"]],
	[null, hashIngot["Gold"], null]
]);
recipes.remove(<soot:alchemy_gauge>);
recipes.addShaped("alchemical_dial", <soot:alchemy_gauge>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[hashIngot["Antimony"], <embers:plate_caminite>, hashIngot["Antimony"]],
	[null, hashIngot["Antimony"], null]
]);

/*** Machines ***/
/****** Generators ******/
recipes.remove(<embers:ember_activator>);
recipes.addShaped("ember_activator", <embers:ember_activator>, [
	[<embers:shard_ember>, <embers:crystal_ember>, <embers:shard_ember>],
	[hashIngot["Iron"], hashPlate["Copper"], hashIngot["Iron"]],
	[<embers:block_caminite_brick>, <minecraft:furnace>, <embers:block_caminite_brick>]
]);

/****** Producers ******/
recipes.remove(<embers:ember_bore>);
recipes.addShaped("ember_bore", <embers:ember_bore>, [
	[<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>],
	[<embers:archaic_bricks>, <embers:ancient_motive_core>, <embers:archaic_bricks>],
	[<contenttweaker:reinforced_stone_gear>, <contenttweaker:reinforced_stone_gear>, <contenttweaker:reinforced_stone_gear>]
]);
recipes.remove(<embers:block_furnace>);
recipes.addShaped("melter", <embers:block_furnace>, [
	[<embers:brick_caminite>, <contenttweaker:reinforced_stone_gear>, <embers:brick_caminite>],
	[<embers:plate_caminite>, hashPlate["Copper"], <embers:plate_caminite>],
	[<contenttweaker:reinforced_stone_gear>, <minecraft:furnace>, <contenttweaker:reinforced_stone_gear>]
]);
recipes.remove(<embers:stamper>);
recipes.addShaped("stamper", <embers:stamper>, [
	[<embers:block_caminite_brick>, hashIngot["Iron"], <embers:block_caminite_brick>],
	[hashPlate["Copper"], hashPlate["Iron"], hashPlate["Copper"]],
	[<embers:brick_caminite>, <contenttweaker:shoddy_piston>, <embers:brick_caminite>],
]);
recipes.remove(<embers:stamper_base>);
recipes.addShaped("stamp_base", <embers:stamper_base>, [
	[<embers:brick_caminite>, null, <embers:brick_caminite>],
	[<embers:plate_caminite>, <minecraft:bucket>, <embers:plate_caminite>],
	[<embers:block_caminite_brick>, hashPlate["Iron"], <embers:block_caminite_brick>],
]);
recipes.remove(<embers:geo_separator>);
recipes.addShaped("geologic_separator", <embers:geo_separator>, [
	[<embers:archaic_brick>, <embers:archaic_brick>, hashPlate["Iron"]],
	[<embers:brick_caminite>, <contenttweaker:mech_archaic_circuit>, <embers:brick_caminite>]
]);
recipes.remove(<embers:cinder_plinth>);
recipes.addShaped("cinder_plinth", <embers:cinder_plinth>, [
	[null, hashPlate["Iron"], null],
	[hashPlate["Tin"], hashIngot["Copper"], hashPlate["Tin"]],
	[<embers:archaic_brick>, <minecraft:furnace>, <embers:archaic_brick>]
]);
recipes.remove(<embers:mixer>);
recipes.addShaped("mixer_centrifuge", <embers:mixer>, [
	[hashPlate["Tin"], <mysticalmechanics:axle_iron>, hashPlate["Tin"]],
	[<embers:block_caminite_brick>, hashGear["Copper"], <embers:block_caminite_brick>],
	[<embers:block_furnace>, hashGear["Copper"], <embers:block_furnace>],
]);

/****** Utilities ******/
recipes.remove(<embers:mech_accessor>);
recipes.addShaped("machine_accessor", <embers:mech_accessor>, [
	[<embers:brick_caminite>, null, <embers:brick_caminite>],
	[null, <contenttweaker:reinforced_stone_gear>,  null],
	[<embers:brick_caminite>, null, <embers:brick_caminite>]
]);
recipes.remove(<embers:mech_core>);
recipes.addShaped("mechanical_core", <embers:mech_core>, [
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[null, <contenttweaker:reinforced_stone_gear>,  null],
	[<embers:archaic_brick>, null, <embers:archaic_brick>]
]);

/*** Transport ***/
/****** Items ******/
recipes.remove(<embers:item_pipe>);
recipes.addShaped("item_pipe", <embers:item_pipe> * 12, [
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]],
	[<embers:archaic_brick>, null, <embers:archaic_brick>],
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]]
]);
recipes.remove(<embers:item_pump>);
recipes.addShaped("item_extractor", <embers:item_pump>, [
	[null, <minecraft:stone_button>, null],
	[<embers:item_pipe>, <contenttweaker:reinforced_stone_gear>, <embers:item_pipe>],
	[null, <minecraft:stone_button>, null]
]);
recipes.remove(<embers:item_transfer>);
recipes.addShaped("item_transfer", <embers:item_transfer>, [
	[<embers:item_pipe>, hashIngot["Iron"], <embers:item_pipe>],
	[hashPlate["Lead"], <magneticraft:crafting:6>, hashPlate["Lead"]],
	[hashIngot["Iron"], null, hashIngot["Iron"]]
]);
recipes.remove(<embers:vacuum>);
recipes.addShaped("item_vacuum", <embers:vacuum>, [
	[hashPlate["Iron"], <minecraft:hopper>, hashPlate["Iron"]],
	[hashPlate["Iron"], <embers:item_transfer>, hashPlate["Iron"]],
	[<minecraft:ender_pearl>, <embers:item_pipe>, <minecraft:ender_pearl>]
]);
recipes.remove(<embers:item_dropper>);

/****** Fluids ******/
recipes.remove(<embers:pipe>);
recipes.addShaped("fluid_pipe", <embers:pipe> * 12, [
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]],
	[null, <contenttweaker:sealant>, null],
	[hashIngot["Iron"], hashIngot["Iron"], hashIngot["Iron"]]
]);
recipes.remove(<embers:pump>);
recipes.addShaped("fluid_extractor", <embers:pump>, [
	[null, <minecraft:stone_button>, null],
	[<embers:pipe>, <contenttweaker:reinforced_stone_gear>, <embers:pipe>],
	[null, <minecraft:stone_button>, null]
]);
recipes.remove(<embers:fluid_transfer>);
recipes.addShaped("fluid_transfer", <embers:fluid_transfer>, [
	[<embers:pipe>, hashIngot["Lead"], <embers:pipe>],
	[hashPlate["Lead"], <magneticraft:crafting:6>, hashPlate["Lead"]],
	[hashIngot["Iron"], <contenttweaker:sealant>, hashIngot["Iron"]]
]);

/****** Ember ******/
recipes.remove(<embers:ember_emitter>);
recipes.addShaped("ember_emitter", <embers:ember_emitter>, [
	[null, hashIngot["Copper"], null],
	[null, hashIngot["Copper"], null],
	[hashGear["Stone"], <embers:archaic_circuit>, hashGear["Stone"]]
]);
recipes.remove(<embers:ember_receiver>);
recipes.addShaped("ember_receptor", <embers:ember_receiver>, [
	[hashGear["Stone"], null, hashGear["Stone"]],
	[hashIngot["Copper"], <embers:archaic_circuit>, hashIngot["Copper"]]
]);
recipes.remove(<embers:ember_relay>);
recipes.addShaped("ember_relay", <embers:ember_relay> * 4, [
	[null, hashIngot["Copper"], null],
	[<embers:archaic_brick>, hashGear["Stone"], <embers:archaic_brick>],
	[null, hashIngot["Copper"], null]
]);

/*** Mechanical Power ***/
recipes.remove(<mysticalmechanics:axle_iron>);
recipes.remove(<mysticalmechanics:gearbox_frame>);
recipes.remove(<mysticalmechanics:mergebox_frame>);

/*** Storage ***/
/****** Items ******/
recipes.remove(<embers:bin>);
recipes.addShaped("bin", <embers:bin>, [
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