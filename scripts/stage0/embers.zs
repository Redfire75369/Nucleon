#loader crafttweaker reloadable
#priority -1

import scripts.common.ingots;
import scripts.common.nuggets;
import scripts.common.plates;
import scripts.common.rods;
import scripts.common.gears;

recipes.remove(<item:embers:tinker_hammer>);
recipes.addShaped("tinker_hammer", <item:embers:tinker_hammer>, [
	[null, ingots.iron, ingots.iron],
	[null, <ore:stickWood>, ingots.iron],
	[<ore:stickWood>, null, null],
]);

val blend = <item:embers:blend_caminite>;
val brick = <item:embers:brick_caminite>;
val plate = <item:embers:plate_caminite>;
val hammer = <item:embers:tinker_hammer>.reuse();

/* Crafting Materials */
recipes.addShaped("reinforced_stone_gear", <item:contenttweaker:reinforced_stone_gear>, [
	[null, <item:minecraft:stone>, null],
	[<item:minecraft:stone>, plates.iron, <item:minecraft:stone>],
	[null, <item:minecraft:stone>, null],
]);

recipes.addShapedMirrored("sealant", <item:contenttweaker:sealant>, [
	[<item:minecraft:rotten_flesh>, blend],
	[blend, <item:minecraft:rotten_flesh>],
]);

recipes.addShaped("mechanical_archaic_circuit", <item:contenttweaker:mech_archaic_circuit>, [
	[null, <item:embers:archaic_brick>, null],
	[<item:embers:archaic_brick>, gears.copper, <item:embers:archaic_brick>],
	[null, <item:embers:archaic_brick>, null],
]);

recipes.addShaped("shoddy_piston", <item:contenttweaker:shoddy_piston>, [
	[<item:minecraft:stone_slab>, <item:minecraft:stone_slab>, <item:minecraft:stone_slab>],
	[ingots.copper, <item:contenttweaker:copper_thread>, ingots.copper],
	[ingots.copper, plates.iron, ingots.copper],
]);

recipes.remove(<item:magneticraft:crafting:6>);
recipes.addShaped("fabric_mesh", <item:magneticraft:crafting:6>, [
	[<ore:string>, <ore:wool>, <ore:string>],
	[rods.iron, plate, rods.iron],
	[<ore:string>, <ore:wool>, <ore:string>],
]);

/* Generators */
recipes.remove(<item:embers:ember_activator>);
recipes.addShaped("ember_activator", <item:embers:ember_activator>, [
	[<item:embers:shard_ember>, <item:embers:crystal_ember>, <item:embers:shard_ember>],
	[plates.iron, plates.copper, plates.iron],
	[<item:embers:block_caminite_brick>, <item:minecraft:furnace>, <item:embers:block_caminite_brick>],
]);

/* Machines */
recipes.remove(<item:embers:ember_bore>);
recipes.addShaped("ember_bore", <item:embers:ember_bore>, [
	[<item:embers:block_caminite_brick>, <item:embers:mech_core>, <item:embers:block_caminite_brick>],
	[<item:embers:archaic_bricks>, <item:embers:ancient_motive_core>, <item:embers:archaic_bricks>],
	[<item:contenttweaker:grinding_head_iron>, <item:contenttweaker:grinding_head_iron>, <item:contenttweaker:grinding_head_iron>],
]);

recipes.remove(<item:embers:block_furnace>);
recipes.addShaped("melter", <item:embers:block_furnace>, [
	[brick, <item:contenttweaker:reinforced_stone_gear>, brick],
	[plate, plates.copper, plate],
	[plates.iron, <item:minecraft:furnace>, plates.iron],
]);

recipes.remove(<item:embers:stamper>);
recipes.addShaped("stamper", <item:embers:stamper>, [
	[<item:embers:block_caminite_brick>, plates.iron, <item:embers:block_caminite_brick>],
	[plates.copper, <item:contenttweaker:shoddy_piston>, plates.copper],
	[brick, null, brick],
]);

recipes.remove(<item:embers:stamper_base>);
recipes.addShaped("stamp_base", <item:embers:stamper_base>, [
	[brick, null, brick],
	[plate, <item:minecraft:bucket>, plate],
	[<item:embers:block_caminite_brick>, plates.iron, <item:embers:block_caminite_brick>],
]);

recipes.remove(<item:embers:geo_separator>);
recipes.addShapedMirrored("geologic_separator", <item:embers:geo_separator>, [
	[<item:embers:archaic_brick>, <item:embers:archaic_brick>, plates.iron],
	[brick, <item:contenttweaker:mech_archaic_circuit>, plate],
]);

recipes.remove(<item:embers:cinder_plinth>);
recipes.addShaped("cinder_plinth", <item:embers:cinder_plinth>, [
	[null, plate, null],
	[plates.tin, ingots.copper, plates.tin],
	[<item:embers:archaic_brick>, <item:minecraft:furnace>, <item:embers:archaic_brick>],
]);

recipes.remove(<item:embers:mixer>);
recipes.addShaped("mixer_centrifuge", <item:embers:mixer>, [
	[plates.tin, <mysticalmechanics:axle_iron>, plates.tin],
	[<item:embers:block_caminite_brick>, gears.copper, <item:embers:block_caminite_brick>],
	[<item:minecraft:furnace>, gears.copper, <item:minecraft:furnace>],
]);

recipes.remove(<item:embers:breaker>);
recipes.addShaped("automatic_breaker", <item:embers:breaker>, [
	[plates.iron, gears.bronze, plates.iron],
	[ingots.lead, gears.iron, ingots.lead],
	[ingots.lead, null, ingots.lead],
]);

/* Stamps */
recipes.remove(<item:embers:stamp_flat_raw>);
recipes.remove(<item:embers:stamp_bar_raw>);
recipes.remove(<item:embers:stamp_plate_raw>);
recipes.remove(<item:embers:stamp_rod_raw>);
recipes.remove(<item:embers:stamp_gear_raw>);
recipes.remove(<item:embers:stamp_round_raw>);
recipes.remove(<item:soot:stamp_nugget_raw>);

recipes.addShaped("stamp_flat_raw", <item:embers:stamp_flat_raw>, [
	[blend, blend, blend],
	[blend, <item:embers:plate_caminite_raw>, blend],
	[blend, blend, blend],
]);

val raw_flat_stamp = <item:embers:stamp_flat_raw>;
recipes.addShaped("stamp_bar_raw", <item:embers:stamp_bar_raw>, [
	[null, hammer, null],
	[<item:embers:plate_caminite_raw>, ingots.iron, <item:embers:plate_caminite_raw>],
	[blend, raw_flat_stamp, blend],
]);
recipes.addShaped("stamp_plate_raw", <item:embers:stamp_plate_raw>, [
	[null, hammer, null],
	[<item:embers:plate_caminite_raw>, plates.iron, <item:embers:plate_caminite_raw>],
	[blend, raw_flat_stamp, blend],
]);
recipes.addShaped("stamp_rod_raw", <item:embers:stamp_rod_raw>, [
	[null, hammer, null],
	[<item:embers:plate_caminite_raw>, rods.iron, <item:embers:plate_caminite_raw>],
	[blend, raw_flat_stamp, blend],
]);
recipes.addShaped("stamp_gear_raw", <item:embers:stamp_gear_raw>, [
	[blend, hammer, blend],
	[null, gears.iron, null],
	[blend, raw_flat_stamp, blend],
]);
recipes.addShaped("stamp_round_raw", <item:embers:stamp_round_raw>, [
	[null, hammer, null],
	[null, <ore:ballConstructionAlloy>, null],
	[blend, raw_flat_stamp, blend],
]);
recipes.addShaped("stamp_nugget_raw", <soot:stamp_nugget_raw>, [
	[null, hammer, null],
	[null, nuggets.iron, null],
	[blend, raw_flat_stamp, blend],
]);

/* Transport */
/** Items **/
recipes.remove(<item:embers:item_pipe>);
recipes.remove(<item:embers:item_pump>);

recipes.addShaped("item_pipe", <item:embers:item_pipe> * 12, [
	[ingots.iron, ingots.iron, ingots.iron],
	[<item:embers:archaic_brick>, null, <item:embers:archaic_brick>],
	[ingots.iron, ingots.iron, ingots.iron],
]);
recipes.addShaped("item_extractor", <item:embers:item_pump>, [
	[null, plate, null],
	[<item:embers:item_pipe>, <item:contenttweaker:reinforced_stone_gear>, <item:embers:item_pipe>],
	[null, plate, null],
]);

recipes.remove(<item:embers:item_transfer>);
recipes.remove(<item:embers:vacuum>);
recipes.remove(<item:embers:item_dropper>);

recipes.addShaped("item_transfer", <item:embers:item_transfer>, [
	[<item:embers:item_pipe>, plates.lead, <item:embers:item_pipe>],
	[plates.lead, <item:magneticraft:crafting:6>, plates.lead],
	[ingots.iron, null, ingots.iron],
]);
recipes.addShaped("item_vacuum", <item:embers:vacuum>, [
	[plates.iron, <ore:blockHopper>, plates.iron],
	[plates.iron, <item:embers:item_transfer>, plates.iron],
	[<ore:enderpearl>, <item:embers:item_pipe>, <ore:enderpearl>],
]);
recipes.addShaped("item_dropper", <item:embers:item_dropper>, [
	[null, <item:embers:item_pipe>, null],
	[plates.iron, <item:embers:item_transfer>, plates.iron],
]);

/** Fluids **/
recipes.remove(<item:embers:pipe>);
recipes.remove(<item:embers:pump>);
recipes.addShaped("fluid_pipe", <item:embers:pipe> * 12, [
	[ingots.iron, ingots.iron, ingots.iron],
	[null, <item:contenttweaker:sealant>, null],
	[ingots.iron, ingots.iron, ingots.iron]
]);
recipes.addShaped("fluid_extractor", <item:embers:pump>, [
	[null, <item:contenttweaker:sealant>, null],
	[<item:embers:pipe>, <item:contenttweaker:reinforced_stone_gear>, <item:embers:pipe>],
	[null, plate, null]
]);

recipes.remove(<item:embers:fluid_transfer>);
recipes.remove(<item:embers:fluid_dropper>);
recipes.addShaped("fluid_transfer", <item:embers:fluid_transfer>, [
	[<item:embers:pipe>, ingots.lead, <item:embers:pipe>],
	[plates.lead, <Item:magneticraft:crafting:6>, plates.lead],
	[ingots.iron, <item:contenttweaker:sealant>, ingots.iron]
]);
recipes.addShaped("fluid_dropper", <item:embers:fluid_dropper>, [
	[<item:contenttweaker:sealant>, <item:embers:pipe>, <item:contenttweaker:sealant>],
	[plates.lead, <item:embers:item_transfer>, plates.lead],
]);

/** Ember **/
recipes.remove(<item:embers:ember_emitter>);
recipes.remove(<item:embers:ember_receiver>);
recipes.remove(<item:embers:ember_relay>);

recipes.addShaped("ember_emitter", <item:embers:ember_emitter> * 2, [
	[null, ingots.copper, null],
	[null, ingots.copper, null],
	[brick, gears.iron, brick],
]);
recipes.addShaped("ember_receptor", <item:embers:ember_receiver> * 2, [
	[gears.stone, null, gears.stone],
	[ingots.copper, <item:embers:archaic_circuit>, ingots.copper],
]);
recipes.addShaped("ember_relay", <item:embers:ember_relay> * 2, [
	[null, ingots.copper, null],
	[<item:embers:archaic_brick>, gears.stone, <item:embers:archaic_brick>],
	[null, ingots.copper, null],
]);
recipes.addShaped("ember_relay_combination", <item:embers:ember_relay> * 8, [
	[null, <item:embers:ember_emitter>, null],
	[<item:embers:ember_receiver>, gears.stone, <item:embers:ember_receiver>],
	[null, <item:embers:ember_emitter>, null],
]);

/* Storage */
/** Items **/
recipes.remove(<item:embers:bin>);
recipes.addShaped("bin", <item:embers:bin>, [
	[<item:embers:archaic_brick>, null, <item:embers:archaic_brick>],
	[<item:embers:archaic_brick>, null, <item:embers:archaic_brick>],
	[plates.iron, plates.iron, plates.iron],
]);

/** Fluids **/
recipes.remove(<item:embers:block_tank>);
recipes.addShaped("fluid_vessel", <item:embers:block_tank>, [
	[brick, null, brick],
	[<item:embers:archaic_brick>, null, <item:embers:archaic_brick>],
	[plates.iron, <item:minecraft:bucket>, plates.iron],
]);

recipes.remove(<item:embers:large_tank>);
recipes.remove(<item:embers:stone_edge>);
recipes.addShaped("reservoir", <item:embers:large_tank>, [
	[<item:embers:block_caminite_brick>, <item:embers:block_tank>, <item:embers:block_caminite_brick>],
	[plates.lead, <item:embers:mech_core>, plates.lead],
	[<item:embers:block_caminite_brick>, <item:embers:block_tank>, <item:embers:block_caminite_brick>]
]);
recipes.addShaped("caminite_ring", <item:embers:stone_edge>, [
	[<item:embers:wall_caminite_brick>, <item:embers:wall_caminite_brick>, <item:embers:wall_caminite_brick>],
	[plate, <item:minecraft:bucket>, plate],
	[<item:embers:wall_caminite_brick>, <item:embers:wall_caminite_brick>, <item:embers:wall_caminite_brick>],
]);
recipes.addShaped("caminite_valve", <item:embers:stone_valve>, [
	[<item:embers:pump>, <item:embers:stone_edge>, <item:embers:pump>],
]);

/** Ember **/
recipes.remove(<item:embers:copper_cell>);
recipes.addShaped("copper_cell", <item:embers:copper_cell>, [
	[<item:embers:block_caminite_brick>, plates.copper, <item:embers:block_caminite_brick>],
	[plates.copper, <item:embers:ancient_motive_core>, plates.copper],
	[<item:embers:block_caminite_brick>, plates.copper, <item:embers:block_caminite_brick>],
]);

/* Others */
recipes.remove(<item:embers:ember_detector>);
recipes.addShaped("atmospheric_gauge", <item:embers:ember_detector>, [
	[null, ingots.iron, null],
	[ingots.copper, hammer, ingots.copper],
	[ingots.copper, plates.iron, ingots.copper],
]);

recipes.remove(<item:embers:tinker_lens>);
recipes.addShaped("tinker_lens", <item:embers:tinker_lens>, [
	[ingots.iron, nuggets.iron, null],
	[plates.copper, <ore:paneGlass>, nuggets.iron],
	[ingots.iron, nuggets.iron, null],
]);

recipes.remove(<item:embers:ember_gauge>);
recipes.remove(<item:embers:fluid_gauge>);

recipes.addShaped("item_dial", <item:embers:item_gauge>, [
	[null, hammer, null],
	[ingots.lead, plate, ingots.lead],
	[null, ingots.lead, null],
]);
recipes.addShaped("fluid_dial", <item:embers:fluid_gauge>, [
	[null, hammer, null],
	[ingots.iron, plate, ingots.iron],
	[null, ingots.iron, null],
]);
recipes.addShaped("ember_dial", <item:embers:ember_gauge>, [
	[null, hammer, null],
	[ingots.copper, plate, ingots.copper],
	[null, ingots.copper, null],
]);
