#loader crafttweaker
#priority -0500

/*** Essential Materials ***/
recipes.remove(<embers:tinker_hammer>);
recipes.addShaped("tinker_hammer", <embers:tinker_hammer>, [
	[null, hashIngot["Iron"], hashIngot["Iron"]],
	[null, oreDict["stickWood"], hashIngot["Iron"]],
	[oreDict["stickWood"], null, null],
]);
recipes.remove(<minecraft:bucket>);
recipes.addShaped("bucket", <minecraft:bucket>, [
	[hashPlate["Iron"], <embers:tinker_hammer>.reuse(), hashPlate["Iron"]],
	[null, hashPlate["Iron"], null]
]); 
recipes.addShaped("copper_ingot", hashIngot["Copper"].firstItem, [
	[<embers:shard_ember>, <embers:tinker_hammer>.reuse(), <embers:shard_ember>],
	[<embers:shard_ember>, hashIngot["Iron"], <embers:shard_ember>],
	[<embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>]
]);

mods.embers.Mixer.add(<liquid:lead> * 18, [<liquid:tin> * 18, <liquid:ashen_stone> * 250]); 
mods.embers.Mixer.add(<liquid:terne> * 5, [<liquid:lead> * 4, <liquid:tin> * 1]); 

/*** Crafting Materials ***/
mods.rustichromia.Quern.remove("rustichromia:log_to_dust");
mods.rustichromia.Quern.remove("rustichromia:plank_to_dust");
mods.rustichromia.Quern.remove("rustichromia:slab_to_dust");
mods.rustichromia.Quern.remove("rustichromia:cobblestone_to_gravel");
mods.rustichromia.Quern.remove("rustichromia:gravel_to_sand");

mods.rustichromia.Quern.add("sawdust", [oreDict["logWood"]], [hashDust["Wood"].firstItem * 4], 2, 1.0/0, 100); 
mods.rustichromia.Quern.add("gravel", [oreDict["cobblestone"]], [<minecraft:gravel>], 0, 1.0/0, 100);
mods.rustichromia.Quern.add("sand", [oreDict["gravel"]], [<minecraft:sand>], 3, 1.0/0, 100); 

mods.rustichromia.Gin.add("copper_wire", [hashIngot["Copper"]], [oreDict["wireCopper"].firstItem], [hashNugget["Copper"].firstItem], 8, 1.0/0, 200);

mods.rustichromia.Assembler.remove("rustichromia:axle_iron");
mods.rustichromia.Assembler.remove("rustichromia:axle_wood");
mods.rustichromia.Assembler.remove("rustichromia:gear_iron");
mods.rustichromia.Assembler.remove("rustichromia:gear_wood");
mods.rustichromia.Assembler.remove("rustichromia:hay_compactor");
mods.rustichromia.Assembler.remove("rustichromia:stick_wood");

mods.rustichromia.Assembler.add("axle_iron", 1, [hashIngot["Iron"] * 3], [<mysticalmechanics:axle_iron> * 2], 10, 1.0/0, 400);
mods.rustichromia.Assembler.add("gearbox_frame", 1, [hashIngot["Iron"] * 4, <embers:archaic_brick> * 4], [<mysticalmechanics:gearbox_frame>], 10, 1.0/0, 400);
mods.rustichromia.Assembler.add("windmill_big", 1, [<rustichromia:windmill_blade> * 8, <contenttweaker:reinforced_stone_gear>], [<rustichromia:windmill_big>], 8, 1.0/0, 300);

recipes.remove(<thermalfoundation:material:657>);
recipes.addShaped("iron_grinding_head", <thermalfoundation:material:657>, [
	[null, hashIngot["Iron"], null],
	[hashIngot["Iron"], hashGear["Stone"], hashIngot["Iron"]],
	[null, hashIngot["Iron"], null]
]);
recipes.remove(<rustichromia:plate_wood>);
recipes.addShaped("plywood", <rustichromia:plate_wood> * 2, [
	[hashDust["Wood"], hashDust["Wood"]]
]);
recipes.remove(<rustichromia:windmill_blade>);
recipes.addShaped("windmill_blade_rustichromia", <rustichromia:windmill_blade>, [
	[<rustichromia:plate_wood>, <rustichromia:plate_wood>],
	[<rustichromia:plate_wood>, <rustichromia:plate_wood>],
	[null, oreDict["stickWood"]]
]);
recipes.remove(<rustichromia:gear_wood>);
recipes.addShaped("plywood_gear", <rustichromia:gear_wood>, [
	[null, <rustichromia:plate_wood>, null],
	[<rustichromia:plate_wood>, oreDict["stickWood"], <rustichromia:plate_wood>],
	[null, <rustichromia:plate_wood>, null]
]);

/*** Machines ***/
/****** Generators ******/
recipes.remove(<rustichromia:windmill>);
recipes.addShaped("windmill_rustichromia", <rustichromia:windmill>, [
	[<rustichromia:windmill_blade>, null, <rustichromia:windmill_blade>],
	[null, hashGear["Stone"], null],
	[<rustichromia:windmill_blade>, null, <rustichromia:windmill_blade>]
]);
recipes.remove(<rustichromia:windmill_big>);

/****** Producers ******/
recipes.remove(<rustichromia:quern>);
recipes.addShaped("quern", <rustichromia:quern>, [
	[null, <rustichromia:axle_wood>, null],
	[<minecraft:stone>, <thermalfoundation:material:657>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);
recipes.remove(<minecraft:furnace>);
recipes.addShaped("furnace", <minecraft:furnace>, [
	[<minecraft:stone>, <contenttweaker:reinforced_stone_gear>, <minecraft:stone>],
	[<embers:brick_caminite>, <contenttweaker:block_low_grade_charcoal>, <embers:brick_caminite>],
	[<minecraft:stone>, <contenttweaker:reinforced_stone_gear>, <minecraft:stone>]
]);
recipes.remove(<rustichromia:gin>);
recipes.addShaped("gin", <rustichromia:gin>, [
	[oreDict["plankWood"], oreDict["blockGlass"], oreDict["plankWood"]],
	[<rustichromia:axle_wood>, <thermalfoundation:material:657>, <rustichromia:axle_wood>],
	[oreDict["logWood"], <rustichromia:thatch_block>, oreDict["logWood"]]
]);
recipes.remove(<rustichromia:assembler1>);
recipes.addShaped("single_assembler", <rustichromia:assembler1>, [
	[<embers:ashen_stone>, <rustichromia:gear_wood>, <embers:ashen_stone>],
	[<minecraft:crafting_table>, hashGear["Tin"], <minecraft:crafting_table>],
	[<embers:ashen_stone>, <rustichromia:gear_wood>, <embers:ashen_stone>]
]);