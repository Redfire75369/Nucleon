#loader crafttweaker
#priority -0203

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

/*
Ore Dictionary Types Removed due to lack of necessity:
Dirty Dusts
Clumps
Shards
Crystals
Clathrates
Small Dusts
Dense Plates
*/
/*** Declaring Arrays of Items to Have Ore Dictionary Removed ***/

val arrayRemoveDictOre = [
//SILK_SORTING: BEGIN@Ore
	<embers:ore_aluminum>,
	<embers:ore_copper>,
	<embers:ore_lead>,
	<embers:ore_nickel>,
	<embers:ore_quartz>,
	<embers:ore_silver>,
	<embers:ore_tin>,
	<immersiveengineering:ore>,
	<immersiveengineering:ore:1>,
	<immersiveengineering:ore:2>,
	<immersiveengineering:ore:3>,
	<immersiveengineering:ore:4>,
	<immersiveengineering:ore:5>,
	<immersiveintelligence:ore>,
	<immersiveintelligence:ore:1>,
	<immersiveintelligence:ore:2>,
	<immersive_energy:ore>,
	<immersive_energy:ore:1>,
	<libvulpes:ore0:4>,
	<libvulpes:ore0:5>,
	<libvulpes:ore0:9>,
	<libvulpes:ore0:10>,
	<magneticraft:ores>,
	<magneticraft:ores:1>,
	<magneticraft:ores:2>,
	<magneticraft:ores:3>,
	<magneticraft:ores:4>,
	<mekanism:oreblock:1>,
	<mekanism:oreblock:2>,
	<nuclearcraft:ore>,
	<nuclearcraft:ore:1>,
	<nuclearcraft:ore:2>,
	<soot:sulfur_ore>,
	<techguns:basicore>,
	<techguns:basicore:1>,
	<techguns:basicore:2>,
	<techguns:basicore:3>,
	<techguns:basicore:4>,
	<techguns:itemshared:78>,
	<techreborn:ore:1>,
	<techreborn:ore:12>,
	<techreborn:ore:13>,
	<techreborn:ore2>,
	<techreborn:ore2:1>
//SILK_SORTING: END@Ore
] as IItemStack[];

val arrayRemoveDictIngot = [
//SILK_SORTING: BEGIN@Ingot
	<embers:ingot_aluminum>,
	<embers:ingot_bronze>,
	<embers:ingot_copper>,
	<embers:ingot_electrum>,
	<embers:ingot_lead>,
	<embers:ingot_nickel>,
	<embers:ingot_silver>,
	<embers:ingot_tin>,
	<enderio:item_material:39>,
	<immersiveengineering:metal>,
	<immersiveengineering:metal:1>,
	<immersiveengineering:metal:2>,
	<immersiveengineering:metal:3>,
	<immersiveengineering:metal:4>,
	<immersiveengineering:metal:5>,
	<immersiveengineering:metal:6>,
	<immersiveengineering:metal:7>,
	<immersiveengineering:metal:8>,
	<immersiveintelligence:material_ingot:1>,
	<immersiveintelligence:material_ingot:2>,
	<immersiveintelligence:material_ingot:3>,
	<immersiveintelligence:material_ingot:4>,
	<immersiveintelligence:material_ingot:6>,
	<immersive_energy:metal>,
	<immersive_energy:metal:1>,
	<industrialrenewal:ingot_steel>,
	<libvulpes:productingot:3>,
	<libvulpes:productingot:4>,
	<libvulpes:productingot:5>,
	<libvulpes:productingot:6>,
	<libvulpes:productingot:7>,
	<libvulpes:productingot:9>,
	<libvulpes:productingot:10>,
	<magneticraft:ingots:2>,
	<magneticraft:ingots:3>,
	<magneticraft:ingots:4>,
	<magneticraft:ingots:5>,
	<magneticraft:ingots:6>,
	<magneticraft:ingots:7>,
	<magneticraft:ingots:9>,
	<magneticraft:ingots:10>,
	<magneticraft:ingots:11>,
	<magneticraft:ingots:12>,
	<magneticraft:ingots:13>,
	<magneticraft:ingots:14>,
	<mekanism:ingot:2>,
	<mekanism:ingot:4>,
	<mekanism:ingot:5>,
	<mekanism:ingot:6>,
	<nuclearcraft:alloy>,
	<nuclearcraft:alloy:5>,
	<nuclearcraft:ingot>,
	<nuclearcraft:ingot:1>,
	<nuclearcraft:ingot:2>,
	<nuclearcraft:ingot:12>,
	<nuclearcraft:ingot:13>,
	<techguns:itemshared:79>,
	<techguns:itemshared:80>,
	<techguns:itemshared:81>,
	<techguns:itemshared:82>,
	<techguns:itemshared:83>,
	<techguns:itemshared:85>,
	<techreborn:ingot>,
	<techreborn:ingot:2>,
	<techreborn:ingot:4>,
	<techreborn:ingot:5>,
	<techreborn:ingot:6>,
	<techreborn:ingot:7>,
	<techreborn:ingot:8>,
	<techreborn:ingot:9>,
	<techreborn:ingot:10>,
	<techreborn:ingot:11>,
	<techreborn:ingot:12>,
	<techreborn:ingot:13>,
	<techreborn:ingot:23>,
	<techreborn:ingot:24>,
	<qmd:ingot>,
	<qmd:ingot:2>,
	<qmd:ingot:3>,
	<qmd:ingot:5>,
	<qmd:ingot:7>,
	<qmd:ingot:8>,
	<qmd:ingot:9>,
	<qmd:ingot:10>
//SILK_SORTING: END@Ingot
] as IItemStack[];

val arrayRemoveDictGem = [
//SILK_SORTING: BEGIN@Gem
	
//SILK_SORTING: END@Gem
] as IItemStack[];

val arrayRemoveDictNugget = [
//SILK_SORTING: BEGIN@Nugget
	<embers:nugget_aluminum>,
	<embers:nugget_bronze>,
	<embers:nugget_copper>,
	<embers:nugget_electrum>,
	<embers:nugget_lead>,
	<embers:nugget_nickel>,
	<embers:nugget_silver>,
	<embers:nugget_tin>,
	<enderio:item_material:28>,
	<extendedcrafting:material:128>,
	<extendedcrafting:material:129>,
	<immersiveengineering:metal:20>,
	<immersiveengineering:metal:21>,
	<immersiveengineering:metal:22>,
	<immersiveengineering:metal:23>,
	<immersiveengineering:metal:24>,
	<immersiveengineering:metal:25>,
	<immersiveengineering:metal:26>,
	<immersiveengineering:metal:27>,
	<immersiveengineering:metal:28>,
	<immersiveengineering:metal:29>,
	<immersiveintelligence:material_nugget:1>,
	<immersiveintelligence:material_nugget:2>,
	<immersiveintelligence:material_nugget:3>,
	<immersiveintelligence:material_nugget:4>,
	<immersiveintelligence:material_nugget:5>,
	<immersive_energy:metal:4>,
	<immersive_energy:metal:5>,
	<libvulpes:productnugget:4>,
	<libvulpes:productnugget:5>,
	<libvulpes:productnugget:6>,
	<libvulpes:productnugget:7>,
	<libvulpes:productnugget:9>,
	<libvulpes:productnugget:10>,
	<magneticraft:nuggets:2>,
	<magneticraft:nuggets:3>,
	<magneticraft:nuggets:4>,
	<magneticraft:nuggets:5>,
	<magneticraft:nuggets:6>,
	<magneticraft:nuggets:7>,
	<magneticraft:nuggets:9>,
	<magneticraft:nuggets:10>,
	<magneticraft:nuggets:11>,
	<magneticraft:nuggets:12>,
	<magneticraft:nuggets:13>,
	<magneticraft:nuggets:14>,
	<mekanism:nugget:2>,
	<mekanism:nugget:4>,
	<mekanism:nugget:5>,
	<mekanism:nugget:6>,
	<techguns:itemshared:86>,
	<techguns:itemshared:87>,
	<techguns:itemshared:88>,
	<techreborn:nuggets>,
	<techreborn:nuggets:2>,
	<techreborn:nuggets:4>,
	<techreborn:nuggets:5>,
	<techreborn:nuggets:6>,
	<techreborn:nuggets:7>,
	<techreborn:nuggets:8>,
	<techreborn:nuggets:9>,
	<techreborn:nuggets:10>,
	<techreborn:nuggets:11>,
	<techreborn:nuggets:12>,
	<techreborn:nuggets:13>,
	<techreborn:nuggets:24>
//SILK_SORTING: END@Nugget
] as IItemStack[];

val arrayRemoveDictDust = [
//SILK_SORTING: BEGIN@Dust
	<appliedenergistics2:material:3>,
	<appliedenergistics2:material:4>,
	<appliedenergistics2:material:46>,
	<appliedenergistics2:material:49>,
	<appliedenergistics2:material:51>,
	<enderio:item_material:20>,
	<enderio:item_material:21>,
	<enderio:item_material:23>,
	<enderio:item_material:24>,
	<enderio:item_material:25>,
	<enderio:item_material:26>,
	<enderio:item_material:27>,
	<enderio:item_material:29>,
	<enderio:item_material:30>,
	<enderio:item_material:31>,
	<enderio:item_material:32>,
	<enderio:item_material:33>,
	<immersiveengineering:metal:9>,
	<immersiveengineering:metal:10>,
	<immersiveengineering:metal:11>,
	<immersiveengineering:metal:12>,
	<immersiveengineering:metal:13>,
	<immersiveengineering:metal:14>,
	<immersiveengineering:metal:15>,
	<immersiveengineering:metal:16>,
	<immersiveengineering:metal:17>,
	<immersiveengineering:metal:18>,
	<immersiveengineering:metal:19>,
	<immersiveengineering:metal:24>,
	<immersiveengineering:metal:25>,
	<immersiveengineering:material:17>,
	<immersiveintelligence:material:19>,
	<immersiveintelligence:material:22>,
	<immersiveintelligence:material_dust:1>,
	<immersiveintelligence:material_dust:2>,
	<immersiveintelligence:material_dust:3>,
	<immersiveintelligence:material_dust:4>,
	//<immersiveintelligence:material_dust:6>,
	<immersiveintelligence:material_dust:7>,
	//<immersiveintelligence:material_dust:9>,
	<immersive_energy:metal:2>,
	<immersive_energy:metal:3>,
	<libvulpes:productdust:1>,
	<libvulpes:productdust:2>,
	<libvulpes:productdust:3>,
	<libvulpes:productdust:4>,
	<libvulpes:productdust:5>,
	<libvulpes:productdust:6>,
	<libvulpes:productdust:7>,
	<libvulpes:productdust:9>,
	<libvulpes:productdust:10>,
	<magneticraft:crafting>,
	<magneticraft:dusts>,
	<magneticraft:dusts:1>,
	<magneticraft:dusts:2>,
	<magneticraft:dusts:3>,
	<magneticraft:dusts:4>,
	<magneticraft:dusts:5>,
	<magneticraft:dusts:6>,
	<magneticraft:dusts:7>,
	<magneticraft:dusts:9>,
	<magneticraft:dusts:10>,
	<magneticraft:dusts:11>,
	<magneticraft:dusts:12>,
	<magneticraft:dusts:13>,
	<magneticraft:dusts:14>,
	<mekanism:dust>,
	<mekanism:dust:1>,
	<mekanism:dust:3>,
	<mekanism:dust:4>,
	<mekanism:dust:6>,
	<mekanism:otherdust>,
	<mekanism:otherdust:1>,
	<mekanism:otherdust:3>,
	<mekanism:otherdust:4>,
	<mekanism:otherdust:6>,
	<nuclearcraft:dust>,
	<nuclearcraft:dust:1>,
	<nuclearcraft:dust:2>,
	<nuclearcraft:dust:12>,
	<nuclearcraft:dust:13>,
	<nuclearcraft:gem_dust>,
	<nuclearcraft:gem_dust:3>,
	<nuclearcraft:gem_dust:6>,
	<nuclearcraft:gem_dust:7>,
	<nuclearcraft:gem_dust:11>,
	<soot:sulfur>,
	<techreborn:dust:3>,
	<thermalfoundation:material:64>,
	<thermalfoundation:material:65>,
	<thermalfoundation:material:66>,
	<thermalfoundation:material:67>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:69>,
	<thermalfoundation:material:70>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:96>,
	<thermalfoundation:material:97>,
	<thermalfoundation:material:98>,
	<thermalfoundation:material:99>,
	<thermalfoundation:material:771>,
	<thermalfoundation:material:772>,
	<threng:material:3>,
	<qmd:chemical_dust:3>,
	<qmd:dust>,
	<qmd:dust:2>,
	<qmd:dust:3>,
	<qmd:dust:5>,
	<qmd:dust:7>,
	<qmd:dust:8>,
	<qmd:dust:9>,
	<qmd:dust:10>,
	<rustichromia:dust_wood>
//SILK_SORTING: END@Dust
] as IItemStack[];

val arrayRemoveDictPlate = [
//SILK_SORTING: BEGIN@Plate
	<embers:plate_aluminum>,
	<embers:plate_bronze>,
	<embers:plate_copper>,
	<embers:plate_electrum>,
	<embers:plate_gold>,
	<embers:plate_iron>,
	<embers:plate_lead>,
	<embers:plate_nickel>,
	<embers:plate_silver>,
	<embers:plate_tin>,
	<immersiveengineering:metal:30>,
	<immersiveengineering:metal:31>,
	<immersiveengineering:metal:32>,
	<immersiveengineering:metal:33>,
	<immersiveengineering:metal:34>,
	<immersiveengineering:metal:35>,
	<immersiveengineering:metal:36>,
	<immersiveengineering:metal:37>,
	<immersiveengineering:metal:38>,
	<immersiveengineering:metal:39>,
	<immersiveengineering:metal:40>,
	<immersiveintelligence:material_plate:1>,
	<immersiveintelligence:material_plate:2>,
	<immersiveintelligence:material_plate:3>,
	<immersiveintelligence:material_plate:4>,
	<immersive_energy:metal:6>,
	<immersive_energy:metal:7>,
	<libvulpes:productplate:1>,
	<libvulpes:productplate:2>,
	<libvulpes:productplate:3>,
	<libvulpes:productplate:4>,
	<libvulpes:productplate:5>,
	<libvulpes:productplate:6>,
	<libvulpes:productplate:7>,
	<libvulpes:productplate:9>,
	<libvulpes:productplate:10>,
	<techguns:itemshared:46>,
	<techguns:itemshared:47>,
	<techguns:itemshared:48>,
	<techguns:itemshared:49>,
	<techguns:itemshared:50>,
	<techguns:itemshared:52>,
	<techguns:itemshared:53>,
	<techguns:itemshared:54>,
	<thermalfoundation:material:32>,
	<thermalfoundation:material:33>,
	<thermalfoundation:material:320>,
	<thermalfoundation:material:321>,
	<thermalfoundation:material:322>,
	<thermalfoundation:material:323>,
	<thermalfoundation:material:324>,
	<thermalfoundation:material:325>,
	<thermalfoundation:material:326>,
	<thermalfoundation:material:327>,
	<thermalfoundation:material:352>,
	<thermalfoundation:material:353>,
	<thermalfoundation:material:354>,
	<thermalfoundation:material:355>
//SILK_SORTING: END@Plate
] as IItemStack[];

val arrayRemoveDictRod = [
//SILK_SORTING: BEGIN@Rod
	<libvulpes:productrod:1>,
	<libvulpes:productrod:6>,
	<industrialrenewal:stick_iron>,
	<industrialrenewal:stick_steel>
//SILK_SORTING: END@Rod
] as IItemStack[];

val arrayRemoveDictGear = [
//SILK_SORTING: BEGIN@Gear
	<appliedenergistics2:material:40>,
	<enderio:item_material:9>,
	<enderio:item_material:10>,
	<immersiveintelligence:motor_gear>,
	<immersiveintelligence:motor_gear:1>,
	<immersiveintelligence:motor_gear:2>,
	<immersiveintelligence:motor_gear:3>,
	<immersiveintelligence:motor_gear:4>,
	<mystgears:gear_aluminium>,
	<mystgears:gear_bronze>,
	<mystgears:gear_copper>,
	<mystgears:gear_diamond>,
	<mystgears:gear_electrum>,
	<mystgears:gear_lead>,
	<mystgears:gear_nickel>,
	<mystgears:gear_silver>,
	<mystgears:gear_stone>,
	<mystgears:gear_tin>,
	<mystgears:gear_wood>,
	<mysticalmechanics:gear_gold>,
	<mysticalmechanics:gear_iron>
//SILK_SORTING: END@Gear
] as IItemStack[];

val arrayRemoveDictBlock = [
//SILK_SORTING: BEGIN@Block
	<immersiveintelligence:storage>,
	<immersiveintelligence:storage:1>,
	<immersiveintelligence:storage:2>,
	<immersiveintelligence:storage:3>,
//SILK_SORTING: END@Block
] as IItemStack[];

val arrayRemoveDictOther = [
//SILK_SORTING: BEGIN@Other
	<techguns:itemshared:62>
//SILK_SORTING: END@Other
] as IItemStack[];

/***** Removing Ore Dictionaries *****/
if (arrayRemoveDictOre.length != 0) {
	for ore in arrayRemoveDictOre {
		for dict in ore.ores {
			dict.remove(ore);
		}
		JEI.removeAndHide(ore);
	}
}
if (arrayRemoveDictIngot.length != 0) {
	for ingot in arrayRemoveDictIngot {
		for dict in ingot.ores {
			dict.remove(ingot);
		}
		JEI.removeAndHide(ingot);
	}
}
if (arrayRemoveDictGem.length != 0) {
	for gem in arrayRemoveDictGem {
		for dict in gem.ores {
			dict.remove(gem);
		}
		JEI.removeAndHide(gem);
	}
}
if (arrayRemoveDictNugget.length != 0) {
	for nugget in arrayRemoveDictNugget {
		for dict in nugget.ores {
			dict.remove(nugget);
		}
		JEI.removeAndHide(nugget);
	}
}
if (arrayRemoveDictDust.length != 0) {
	for dust in arrayRemoveDictDust {
		for dict in dust.ores {
			dict.remove(dust);
		}
		JEI.removeAndHide(dust);
	}
}
if (arrayRemoveDictPlate.length != 0) {
	for plate in arrayRemoveDictPlate {
		for dict in plate.ores {
			dict.remove(plate);
		}
		JEI.removeAndHide(plate);
	}
}
if (arrayRemoveDictRod.length != 0) {
	for rod in arrayRemoveDictRod {
		for dict in rod.ores {
			dict.remove(rod);
		}
		JEI.removeAndHide(rod);
	}
}
if (arrayRemoveDictGear.length != 0) {
	for gear in arrayRemoveDictGear {
		for dict in gear.ores {
			dict.remove(gear);
		}
		JEI.removeAndHide(gear);
	}
}
if (arrayRemoveDictBlock.length != 0) {
	for block in arrayRemoveDictBlock {
		for dict in block.ores {
			dict.remove(block);
		}
		JEI.removeAndHide(block);
	}
}

if (arrayRemoveDictOther.length != 0) {
	for other in arrayRemoveDictOther {
		for dict in other.ores {
			dict.remove(other);
		}
		JEI.removeAndHide(other);
	}
}