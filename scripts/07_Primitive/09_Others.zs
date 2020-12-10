#loader crafttweaker
#priority -0709

recipes.addShaped("torch", <minecraft:torch> * 3, [
	[<contenttweaker:low_grade_charcoal>],
	[oreDict["stickWood"]]
]);

/*** Temporary ***/
recipes.addShaped("plate_iron", hashPlate["Iron"].firstItem, [
	[<embers:tinker_hammer>.reuse()],
	[hashIngot["Iron"]],
	[hashIngot["Iron"]]
]);
recipes.addShaped("plate_copper", hashPlate["Copper"].firstItem, [
	[<embers:tinker_hammer>.reuse()],
	[hashIngot["Copper"]],
	[hashIngot["Copper"]]
]);
recipes.addShaped("plate_tin", hashPlate["Tin"].firstItem, [
	[<embers:tinker_hammer>.reuse()],
	[hashIngot["Tin"]],
	[hashIngot["Tin"]]
]);
recipes.addShaped("plate_lead", hashPlate["Lead"].firstItem, [
	[<embers:tinker_hammer>.reuse()],
	[hashIngot["Lead"]],
	[hashIngot["Lead"]]
]);

mods.embers.Stamper.remove(<embers:ingot_bronze>);
mods.embers.Stamper.remove(<embers:ingot_copper>);
mods.embers.Stamper.remove(<embers:ingot_lead>);
mods.embers.Stamper.remove(<embers:ingot_tin>);
mods.embers.Stamper.remove(<embers:plate_copper>);
mods.embers.Stamper.remove(<embers:plate_iron>);
mods.embers.Stamper.remove(<embers:plate_lead>);
mods.embers.Stamper.remove(<embers:plate_tin>);
mods.embers.Stamper.remove(<mystgears:gear_copper>);
mods.embers.Stamper.remove(<mysticalmechanics:gear_iron>);
mods.embers.Stamper.remove(<mystgears:gear_lead>);
mods.embers.Stamper.remove(<mystgears:gear_tin>);

mods.embers.Stamper.add(hashIngot["Bronze"].firstItem, <liquid:bronze> * 144 , <embers:stamp_bar>);
mods.embers.Stamper.add(hashIngot["Copper"].firstItem, <liquid:copper> * 144 , <embers:stamp_bar>);
mods.embers.Stamper.add(hashIngot["Lead"].firstItem, <liquid:lead> * 144 , <embers:stamp_bar>);
mods.embers.Stamper.add(hashIngot["Tin"].firstItem, <liquid:tin> * 144 , <embers:stamp_bar>);
mods.embers.Stamper.add(hashIngot["Terne"].firstItem, <liquid:terne> * 144 , <embers:stamp_bar>);
mods.embers.Stamper.add(hashPlate["Bronze"].firstItem, <liquid:bronze> * 288 , <embers:stamp_plate>);
mods.embers.Stamper.add(hashPlate["Copper"].firstItem, <liquid:copper> * 288 , <embers:stamp_plate>);
mods.embers.Stamper.add(hashPlate["Iron"].firstItem, <liquid:iron> * 288 , <embers:stamp_plate>);
mods.embers.Stamper.add(hashPlate["Lead"].firstItem, <liquid:lead> * 288 , <embers:stamp_plate>);
mods.embers.Stamper.add(hashPlate["Tin"].firstItem, <liquid:tin> * 288 , <embers:stamp_plate>);
mods.embers.Stamper.add(hashPlate["Terne"].firstItem, <liquid:terne> * 288 , <embers:stamp_plate>);
mods.embers.Stamper.add(hashGear["Bronze"].firstItem, <liquid:bronze> * 1728 , <embers:stamp_gear>);
mods.embers.Stamper.add(hashGear["Copper"].firstItem, <liquid:copper> * 1728 , <embers:stamp_gear>);
mods.embers.Stamper.add(hashGear["Iron"].firstItem, <liquid:iron> * 1728 , <embers:stamp_gear>);
mods.embers.Stamper.add(hashGear["Lead"].firstItem, <liquid:lead> * 1728 , <embers:stamp_gear>);
mods.embers.Stamper.add(hashGear["Tin"].firstItem, <liquid:tin> * 1728 , <embers:stamp_gear>);
mods.embers.Stamper.add(hashGear["Terne"].firstItem, <liquid:terne> * 1728 , <embers:stamp_gear>);
