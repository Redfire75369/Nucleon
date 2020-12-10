#loader crafttweaker
#priority -0700

/*** Essential Materials ***/
changeRecipeShaped("tinker_hammer", <embers:tinker_hammer>, [
	[null, hashIngot["Iron"], hashIngot["Iron"]],
	[null, oreDict["stickWood"], hashIngot["Iron"]],
	[oreDict["stickWood"], null, null],
]);
changeRecipeShaped("bucket", <minecraft:bucket>, [
	[hashPlate["Iron"], <embers:tinker_hammer>.reuse(), hashPlate["Iron"]],
	[null, hashPlate["Iron"], null]
]); 


/*** Crafting Materials ***/
mods.rustichromia.Quern.remove("rustichromia:log_to_dust");
mods.rustichromia.Quern.remove("rustichromia:plank_to_dust");
mods.rustichromia.Quern.remove("rustichromia:slab_to_dust");
mods.rustichromia.Quern.remove("rustichromia:cobblestone_to_gravel");
mods.rustichromia.Quern.remove("rustichromia:gravel_to_sand");

mods.rustichromia.Quern.add("sawdust", [oreDict["logWood"]], [hashDust["Wood"].firstItem * 4], 2, 1.0/0, 100); 
mods.rustichromia.Quern.add("gravel", [oreDict["cobblestone"]], [<minecraft:gravel>], 0, 1.0/0, 100);
mods.rustichromia.Quern.add("sand", [oreDict["gravel"]], [<minecraft:sand>], 3, 1.0/0, 100); 
mods.rustichromia.Quern.add("regolith", [<embers:ashen_stone>], [<contenttweaker:regolith>], 8, 1.0/0, 100); 

mods.rustichromia.Gin.add("copper_wire", [hashIngot["Copper"]], [oreDict["wireCopper"].firstItem], [hashNugget["Copper"].firstItem], 8, 1.0/0, 200);

mods.rustichromia.Assembler.remove("rustichromia:gear_iron");
mods.rustichromia.Assembler.remove("rustichromia:gear_wood");
mods.rustichromia.Assembler.remove("rustichromia:hay_compactor");
mods.rustichromia.Assembler.remove("rustichromia:stick_wood");

mods.rustichromia.Assembler.add("windmill_big", 1, [<rustichromia:windmill_blade> * 8, <contenttweaker:reinforced_stone_gear>], [<rustichromia:windmill_big>], 8, 1.0/0, 300);

changeRecipeShaped("iron_grinding_head", <contenttweaker:grinding_head_iron>, [
	[null, hashIngot["Iron"], null],
	[hashIngot["Iron"], hashGear["Stone"], hashIngot["Iron"]],
	[null, hashIngot["Iron"], null]
]);
changeRecipeShaped("plywood", <rustichromia:plate_wood> * 2, [
	[hashDust["Wood"], hashDust["Wood"]]
]);
changeRecipeShaped("windmill_blade_rustichromia", <rustichromia:windmill_blade>, [
	[<rustichromia:plate_wood>, <rustichromia:plate_wood>],
	[<rustichromia:plate_wood>, <rustichromia:plate_wood>],
	[null, oreDict["stickWood"]]
]);
changeRecipeShaped("plywood_gear", <rustichromia:gear_wood>, [
	[null, <rustichromia:plate_wood>, null],
	[<rustichromia:plate_wood>, oreDict["stickWood"], <rustichromia:plate_wood>],
	[null, <rustichromia:plate_wood>, null]
]);

/*** Machines ***/
/****** Generators ******/
changeRecipeShaped("windmill_rustichromia", <rustichromia:windmill>, [
	[<rustichromia:windmill_blade>, null, <rustichromia:windmill_blade>],
	[null, hashGear["Stone"], null],
	[<rustichromia:windmill_blade>, null, <rustichromia:windmill_blade>]
]);
recipes.remove(<rustichromia:windmill_big>);

/****** Producers ******/
changeRecipeShaped("quern", <rustichromia:quern>, [
	[null, <rustichromia:axle_wood>, null],
	[<minecraft:stone>, <contenttweaker:grinding_head_iron>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);
changeRecipeShaped("furnace", <minecraft:furnace>, [
	[<minecraft:stone>, <contenttweaker:reinforced_stone_gear>, <minecraft:stone>],
	[<embers:brick_caminite>, <contenttweaker:block_low_grade_charcoal>, <embers:brick_caminite>],
	[<minecraft:stone>, <contenttweaker:reinforced_stone_gear>, <minecraft:stone>]
]);
changeRecipeShaped("gin", <rustichromia:gin>, [
	[oreDict["plankWood"], oreDict["blockGlass"], oreDict["plankWood"]],
	[<rustichromia:axle_wood>, <contenttweaker:grinding_head_iron>, <rustichromia:axle_wood>],
	[oreDict["logWood"], <rustichromia:thatch_block>, oreDict["logWood"]]
]);
changeRecipeShaped("single_assembler", <rustichromia:assembler1>, [
	[<embers:ashen_stone>, <rustichromia:gear_wood>, <embers:ashen_stone>],
	[<minecraft:crafting_table>, hashGear["Tin"], <minecraft:crafting_table>],
	[<embers:ashen_stone>, <rustichromia:gear_wood>, <embers:ashen_stone>]
]);