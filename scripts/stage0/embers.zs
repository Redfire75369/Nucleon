#loader crafttweaker reloadable
#priority -0401

import scripts.common.ingots;
import scripts.common.plates;

recipes.remove(<embers:tinker_hammer>);
recipes.addShaped("tinker_hammer", <embers:tinker_hammer>, [
	[null, ingots.iron, ingots.iron],
	[null, <ore:stickWood>, ingots.iron],
	[<ore:stickWood>, null, null],
]);

/* Crafting Materials */
recipes.addShaped("reinforced_stone_gear", <item:contenttweaker:reinforced_stone_gear>, [
	[null, <item:minecraft:stone>, null],
	[<item:minecraft:stone>, plates.iron, <item:minecraft:stone>],
	[null, <item:minecraft:stone>, null]
]);

recipes.addShapedMirrored("sealant", <item:contenttweaker:sealant>, [
	[<item:minecraft:rotten_flesh>, <item:embers:blend_caminite>],
	[<item:embers:blend_caminite>, <item:minecraft:rotten_flesh>]
]);

recipes.addShaped("mechanical_archaic_circuit", <item:contenttweaker:mech_archaic_circuit>, [
	[null, <item:embers:archaic_brick>, null],
	[<item:embers:archaic_brick>, <ore:gearCopper>, <item:embers:archaic_brick>],
	[null, <item:embers:archaic_brick>, null]
]);

recipes.addShaped("shoddy_piston", <contenttweaker:shoddy_piston>, [
	[<item:minecraft:stone_slab>, <item:minecraft:stone_slab>, <item:minecraft:stone_slab>],
	[ingots.copper, <item:contenttweaker:copper_thread>, ingots.copper],
	[ingots.copper, plates.iron, ingots.copper]
]);

recipes.remove(<item:magneticraft:crafting:6>);
recipes.addShaped("string_mesh", <item:magneticraft:crafting:6>, [
	[<item:minecraft:string>, <item:minecraft:string>, <item:minecraft:string>],
	[<item:minecraft:string>, <item:embers:plate_caminite>, <item:minecraft:string>],
	[<item:minecraft:string>, <item:minecraft:string>, <item:minecraft:string>]
]);
