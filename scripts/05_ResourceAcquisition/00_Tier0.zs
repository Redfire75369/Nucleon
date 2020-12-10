#loader crafttweaker
#priority -0500

/* Iron */
furnace.addRecipe(hashIngot["Iron"].firstItem, hashOre["Iron"], 0.05); // Temporary

mods.embers.Stamper.add(<minecraft:stone:3>, <liquid:stone> * 125, oreDict["dyeWhite"]);
mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone:3>, <liquid:iron> * 18);


/* Copper */
recipes.addShaped("copper_ingot", hashIngot["Copper"].firstItem, [
	[<embers:shard_ember>, <embers:tinker_hammer>.reuse(), <embers:shard_ember>],
	[<embers:shard_ember>, hashIngot["Iron"], <embers:shard_ember>],
	[<embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>]
]);

mods.embers.Stamper.add(<minecraft:stone:1>, <liquid:stone> * 125, oreDict["dyeRed"]);
mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone:1>, <liquid:copper> * 18);


/* Tin */
mods.embers.Stamper.add(<minecraft:stone:5>, <liquid:stone> * 125, oreDict["dyeGray"]);
mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone:5>, <liquid:tin> * 18);

/* Lead */
mods.embers.Melter.add(<liquid:ashen_stone> * 125, <embers:ashen_stone>);
mods.embers.Mixer.add(<liquid:lead> * 9, [<liquid:tin> * 9, <liquid:ashen_stone> * 125]); 


/* Terne Alloy */
mods.embers.Mixer.add(<liquid:terne> * 5, [<liquid:lead> * 4, <liquid:tin> * 1]); 
mods.embers.Melter.add(<liquid:terne> * 144, hashIngot["Terne"].firstItem); // Temporary


/*** Stone Variants ***/
recipes.remove(<minecraft:stone:1>);
recipes.remove(<minecraft:stone:3>);
recipes.remove(<minecraft:stone:5>);

mods.embers.Stamper.add(<minecraft:stone>, <liquid:stone> * 125, <embers:stamp_flat>);
mods.embers.Melter.add(<liquid:stone> * 125, <minecraft:stone>);
