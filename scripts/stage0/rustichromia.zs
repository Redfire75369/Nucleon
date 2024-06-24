#loader crafttweaker reloadable
#priority -1

import mods.rustichromia.Assembler;
import mods.rustichromia.Gin;
import mods.rustichromia.Quern;
import scripts.common.ingots;

/* Crafting Materials */
Quern.remove("rustichromia:log_to_dust");
Quern.remove("rustichromia:plank_to_dust");
Quern.remove("rustichromia:slab_to_dust");
Quern.remove("rustichromia:cobblestone_to_gravel");
Quern.remove("rustichromia:gravel_to_sand");

Quern.add("sawdust", [<ore:logWood>], [<ore:dustWood>.firstItem * 4], 2, 1.0/0, 100);
Quern.add("gravel", [<ore:cobblestone>], [<item:minecraft:gravel>], 0, 1.0/0, 100);
Quern.add("sand", [<ore:gravel>], [<item:minecraft:sand>], 3, 1.0/0, 100);
Quern.add("regolith", [<item:embers:ashen_stone>], [<item:contenttweaker:regolith>], 8, 1.0/0, 100);

Gin.add("copper_wire", [<ore:IngotCopper>], [<item:contenttweaker:copper_thread>], [<ore:nuggetCopper>.firstItem], 8, 1.0/0, 200);

Assembler.remove("rustichromia:gear_iron");
Assembler.remove("rustichromia:stick_wood");

recipes.remove(<item:rustichromia:plate_wood>);
Assembler.remove("rustichromia:plate_wood");
recipes.addShaped("plywood", <item:rustichromia:plate_wood> * 2, [
	[<ore:dustWood>, <ore:dustWood>],
	[<ore:dustWood>, <ore:dustWood>],
]);
Assembler.add("plywood", 0, [<ore:dustWood>], [<item:rustichromia:plate_wood>], 3, 18, 100);

recipes.remove(<item:rustichromia:gear_wood>);
Assembler.remove("rustichromia:gear_wood");
recipes.addShaped("plywood_gear", <item:rustichromia:gear_wood>, [
	[null, <item:rustichromia:plate_wood>, null],
	[<item:rustichromia:plate_wood>, <ore:stickWood>, <item:rustichromia:plate_wood>],
	[null, <item:rustichromia:plate_wood>, null],
]);
Assembler.add("plywood_gear", 0, [<item:rustichromia:plate_wood> * 4], [<item:rustichromia:gear_wood>], 3, 30, 100);

recipes.remove(<item:rustichromia:windmill_blade>);
recipes.addShapedMirrored("windmill_blade_rustichromia", <rustichromia:windmill_blade>, [
	[<item:rustichromia:plate_wood>, <item:rustichromia:plate_wood>],
	[<item:rustichromia:plate_wood>, <item:rustichromia:plate_wood>],
	[null, <ore:stickWood>],
]);

recipes.addShaped("iron_grinding_head", <contenttweaker:grinding_head_iron>, [
	[null, ingots.iron, null],
	[ingots.iron, <ore:gearStone>, ingots.iron],
	[null, ingots.iron, null],
]);

/* Generators */
recipes.remove(<item:rustichromia:windmill>);
recipes.addShaped("windmill_rc", <rustichromia:windmill>, [
	[<item:rustichromia:windmill_blade>, null, <item:rustichromia:windmill_blade>],
	[null, <ore:gearStone>, null],
	[<item:rustichromia:windmill_blade>, null, <item:rustichromia:windmill_blade>],
]);

recipes.remove(<item:rustichromia:windmill_big>);
Assembler.add("windmill_big", 1, [<item:rustichromia:windmill_blade> * 8, <item:contenttweaker:reinforced_stone_gear>], [<item:rustichromia:windmill_big>], 8, 1.0/0, 300);

/* Machines */
recipes.remove(<item:rustichromia:quern>);
recipes.addShaped("quern", <rustichromia:quern>, [
	[null, <rustichromia:axle_wood>, null],
	[<minecraft:stone>, <contenttweaker:grinding_head_iron>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
]);

recipes.remove(<item:rustichromia:gin>);
recipes.addShaped("gin", <item:rustichromia:gin>, [
	[<ore:plankWood>, <ore:blockGlass>, <ore:plankWood>],
	[<item:rustichromia:axle_wood>, <item:contenttweaker:grinding_head_iron>, <item:rustichromia:axle_wood>],
	[<ore:logWood>, <item:rustichromia:thatch_block>, <ore:logWood>],
]);

recipes.remove(<item:rustichromia:assembler1>);
recipes.addShaped("single_assembler", <item:rustichromia:assembler1>, [
	[<item:embers:ashen_stone>, <item:rustichromia:gear_wood>, <item:embers:ashen_stone>],
	[<item:minecraft:crafting_table>, <ore:gearTin>, <item:minecraft:crafting_table>],
	[<item:embers:ashen_stone>, <item:rustichromia:gear_wood>, <item:embers:ashen_stone>],
]);
