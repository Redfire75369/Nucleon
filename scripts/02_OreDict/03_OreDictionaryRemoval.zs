#loader crafttweaker
#priority -0203

import crafttweaker.item.IItemStack;

/***** Declaring Arrays of Items to Have Ore Dictionary Removed *****/

val arrayRemoveDictOre = [
//SILK_SORTING: BEGIN@Ore
	
//SILK_SORTING: END@Ore
] as IItemStack[];

val arrayRemoveDictDustDirty = [
//SILK_SORTING: BEGIN@DustDirty

//SILK_SORTING: END@DustDirty
] as IItemStack[];

val arrayRemoveDictClump = [
//SILK_SORTING: BEGIN@Clump

//SILK_SORTING: END@Clump
] as IItemStack[];

val arrayRemoveDictShard = [
//SILK_SORTING: BEGIN@Shard

//SILK_SORTING: END@Shard
] as IItemStack[];

val arrayRemoveDictCrystal = [
//SILK_SORTING: BEGIN@Crystal

//SILK_SORTING: END@Crystal
] as IItemStack[];

val arrayRemoveDictIngot = [
//SILK_SORTING: BEGIN@Ingot
	
//SILK_SORTING: END@Ingot
] as IItemStack[];

val arrayRemoveDictGem = [
//SILK_SORTING: BEGIN@Gem
	
//SILK_SORTING: END@Gem
] as IItemStack[];

val arrayRemoveDictClathrate = [
//SILK_SORTING: BEGIN@Clathrate

//SILK_SORTING: END@Clathrate
] as IItemStack[];

val arrayRemoveDictNugget = [
//SILK_SORTING: BEGIN@Nugget
	
//SILK_SORTING: END@Nugget
] as IItemStack[];

val arrayRemoveDictDust = [
//SILK_SORTING: BEGIN@Dust
	
//SILK_SORTING: END@Dust
] as IItemStack[];

val arrayRemoveDictDustSmall = [
//SILK_SORTING: BEGIN@DustSmall

//SILK_SORTING: END@DustSmall
] as IItemStack[];

val arrayRemoveDictPlate = [
//SILK_SORTING: BEGIN@Plate
	
//SILK_SORTING: END@Plate
] as IItemStack[];

val arrayRemoveDictPlateDense = [
//SILK_SORTING: BEGIN@PlateDense

//SILK_SORTING: END@PlateDense
] as IItemStack[];

val arrayRemoveDictRod = [
//SILK_SORTING: BEGIN@Rod
	
//SILK_SORTING: END@Rod
] as IItemStack[];

val arrayRemoveDictGear = [
//SILK_SORTING: BEGIN@Gear
	
//SILK_SORTING: END@Gear
] as IItemStack[];

val arrayRemoveDictBlock = [
//SILK_SORTING: BEGIN@Block
	
//SILK_SORTING: END@Block
] as IItemStack[];

/***** Removing Ore Dictionaries *****/
if (arrayRemoveDictOre.length != 0) {
	for ore in arrayRemoveDictOre {
		for dict in ore.ores {
			dict.remove(ore);
		}
	}
}
if (arrayRemoveDictDustDirty.length != 0) {
	for dustDirty in arrayRemoveDictDustDirty {
		for dict in dustDirty.ores {
			dict.remove(dustDirty);
		}
	}
}
if (arrayRemoveDictClump.length != 0) {
	for clump in arrayRemoveDictClump {
		for dict in clump.ores {
			dict.remove(clump);
		}
	}
}
if (arrayRemoveDictShard.length != 0) {
	for shard in arrayRemoveDictShard {
		for dict in shard.ores {
			dict.remove(shard);
		}
	}
}
if (arrayRemoveDictCrystal.length != 0) {
	for crystal in arrayRemoveDictCrystal {
		for dict in crystal.ores {
			dict.remove(crystal);
		}
	}
}
if (arrayRemoveDictIngot.length != 0) {
	for ingot in arrayRemoveDictIngot {
		for dict in ingot.ores {
			dict.remove(ingot);
		}
	}
}
if (arrayRemoveDictGem.length != 0) {
	for gem in arrayRemoveDictGem {
		for dict in gem.ores {
			dict.remove(gem);
		}
	}
}
if (arrayRemoveDictClathrate.length != 0) {
	for clathrate in arrayRemoveDictClathrate {
		for dict in clathrate.ores {
			dict.remove(clathrate);
		}
	}
}
if (arrayRemoveDictNugget.length != 0) {
	for nugget in arrayRemoveDictNugget {
		for dict in nugget.ores {
			dict.remove(nugget);
		}
	}
}
if (arrayRemoveDictDust.length != 0) {
	for dust in arrayRemoveDictDust {
		for dict in dust.ores {
			dict.remove(dust);
		}
	}
}
if (arrayRemoveDictDustSmall.length != 0) {
	for dustSmall in arrayRemoveDictDustSmall {
		for dict in dustSmall.ores {
			dict.remove(dustSmall);
		}
	}
}
if (arrayRemoveDictPlate.length != 0) {
	for plate in arrayRemoveDictPlate {
		for dict in plate.ores {
			dict.remove(plate);
		}
	}
}
if (arrayRemoveDictPlateDense.length != 0) {
	for plateDense in arrayRemoveDictPlateDense {
		for dict in plateDense.ores {
			dict.remove(plateDense);
		}
	}
}
if (arrayRemoveDictRod.length != 0) {
	for rod in arrayRemoveDictRod {
		for dict in rod.ores {
			dict.remove(rod);
		}
	}
}
if (arrayRemoveDictGear.length != 0) {
	for gear in arrayRemoveDictGear {
		for dict in gear.ores {
			dict.remove(gear);
		}
	}
}
if (arrayRemoveDictBlock.length != 0) {
	for block in arrayRemoveDictBlock {
		for dict in block.ores {
			dict.remove(block);
		}
	}
}
