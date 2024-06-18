#loader crafttweaker reloadable
#priority -1

import scripts.common.plates;

recipes.remove(<item:minecraft:bucket>);
recipes.addShaped("bucket", <item:minecraft:bucket>, [
	[plates.iron, <item:embers:tinker_hammer>.reuse(), plates.iron],
	[null, plates.iron, null]
]);

recipes.remove(<item:minecraft:furnace>);
recipes.addShaped("furnace", <item:minecraft:furnace>, [
	[<item:minecraft:stone>, <item:contenttweaker:reinforced_stone_gear>, <item:minecraft:stone>],
	[<item:embers:brick_caminite>, <item:contenttweaker:block_poor_charcoal>, <item:embers:brick_caminite>],
	[<item:minecraft:stone>, <item:contenttweaker:reinforced_stone_gear>, <item:minecraft:stone>]
]);
