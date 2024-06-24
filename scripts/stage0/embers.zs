#loader crafttweaker reloadable
#priority -1

import scripts.common.ingots;
import scripts.common.nuggets;
import scripts.common.plates;
import scripts.common.rods;

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
	[<item:embers:archaic_brick>, <ore:gearCopper>, <item:embers:archaic_brick>],
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
	[<item:contenttweaker:grinding_head_iron>, <contenttweaker:grinding_head_iron>, <contenttweaker:grinding_head_iron>],
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
	[<item:embers:block_caminite_brick>, <ore:gearCopper>, <item:embers:block_caminite_brick>],
	[<item:minecraft:furnace>, <ore:gearCopper>, <item:minecraft:furnace>],
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
	[null, <ore:gearIron>, null],
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

/* Others */
recipes.remove(<item: 	embers:ember_detector>);
recipes.addShaped("atmospheric_gauge", <item:embers:ember_detector>, [
	[null, ingots.iron, null],
	[ingots.copper, hammer, ingots.copper],
	[ingots.copper, plates.iron, ingots.copper],
]);

recipes.remove(<item:embers:tinker_lens>);
recipes.addShaped("tinker_lens", <item:embers:tinker_lens>, [
	[ingots.iron, nuggets.iron, null],
	[plates.iron, <ore:paneGlass>, nuggets.iron],
	[ingots.iron, nuggets.iron, null],
]);

recipes.remove(<item:embers:ember_gauge>);
recipes.remove(<item:embers:fluid_gauge>);
recipes.addShaped("ember_dial", <item:embers:ember_gauge>, [
	[null, hammer, null],
	[ingots.copper, plate, ingots.copper],
	[null, ingots.copper, null],
]);
recipes.addShaped("fluid_dial", <item:embers:fluid_gauge>, [
	[null, hammer, null],
	[ingots.iron, plate, ingots.iron],
	[null, ingots.iron, null],
]);
