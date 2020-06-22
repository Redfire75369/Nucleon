#loader crafttweaker
#priority -0204
#norun

/*** Ores ***/
for key, dictOre in hashOre {
	if (hashGem has key) {
		mods.mekanism.combiner.addRecipe(hashGem[key] * 16, <minecraft:cobblestone>, dictOre.firstItem);
	} else if (hashDust has key) {
		mods.mekanism.combiner.addRecipe(hashDust[key] * 16, <minecraft:cobblestone>, dictOre.firstItem);
	}
}

/*Clathrate Ores */
// Will be Hardcoded since different Clathrate Ores have different base blocks

/*** Chunks ***/
for key, dictChunk in hashChunk {
}

/*** Rocky Chunks ***/
for key, dictChunkRocky in hashChunkRocky {
}

/*** Dirty Dusts ***/
for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.enrichment.addRecipe(hashClump[key], dictDustDirty.firstItem);
	}
}

/*** Clumps ***/
for key, dictClump in hashClump {
	if (hashShard has key) {
		mods.mekanism.purification.addRecipe(hashShard[key], hashGas["Oxygen"], dictClump.firstItem);
	}
	if (hashOre has key) {
		mods.mekanism.purification.addRecipe(hashOre[key], hashGas["Oxygen"], dictClump.firstItem * 3);
	}
}

/*** Shards ***/
for key, dictShard in hashShard {
	if (hashCrystal has key) {
		mods.mekanism.purification.addRecipe(hashCrystal[key], hashGas["HydrogenChloride"], dictShard.firstItem);
	}
	if (hashOre has key) {
		mods.mekanism.purification.addRecipe(hashOre[key], hashGas["HydrogenChloride"], dictShard.firstItem * 4);
	}
}

/*** Crystals ***/
for key, dictCrystal in hashCrystal {
	if (hashSlurryClean has key) {
		mods.mekanism.purification.addRecipe(hashSlurryClean[key], dictCrystal.firstItem);
	}
}

/*** Ingots ***/
var tier1Ingots = [] as string[];
var tier2Ingots = [] as string[];
var tier3Ingots = [] as string[];

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		furnace.addRecipe(dictIngot.firstItem, hashOre[key], 0.05);
	}
	if (hashDust has key) {
		furnace.addRecipe(dictIngot.firstItem, hashDust[key], 0);
	}
}

/*** Gems ***/
for key, dictGem in hashGem {
	if (hashOre has key) {
		mods.appliedenergistics2.Grinder.addRecipe(dictGem.firstItem, hashOre[key].firstItem, 8, dictGem.firstItem, 0.4);
		mods.immersiveengineering.Crusher.addRecipe(dictGem.firstItem * 2, hashOre[key], 10240, <appliedenergistics2:material:45>, 0.02);
		mods.mekanism.enrichment.addRecipe(hashOre[key], dictGem.firstItem * 4);
		mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 4);
		mods.techreborn.grinder.addRecipe(dictGem.firstItem * 2, hashOre[key], 40, 192);
		mods.techreborn.industrialGrinder.addRecipe(dictGem.firstItem * 3, <techreborn:smalldust:62>, <techreborn:smalldust:48>, null, <liquid:water> * 2400, hashOre[key], <minecraft:dye:4> * 8);
	}
	if (hashDust has key) {
		mods.techreborn.implosionCompressor.addRecipe(dictGem.firstItem * 3, <techreborn:dust:15>, hashDust[key] * 4, <appliedenergistics2:tiny_tnt> * 2, 200, 2048);
	}
}

/*** Dusts ***/
for key, dictDust in hashDust {
	if (hashOre has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_dust_from_ore_petrotheum", dictDust.firstItem * 2, [
			hashOre[key], hashDust["Petrotheum"]
		]);
		
		mods.appliedenergistics2.Grinder.addRecipe(dictDust.firstItem, hashOre[key].firstItem, 8, dictDust.firstItem, 0.5);
		mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem * 2, hashOre[key], 1024, <techreborn:smalldust:37>, 0.25);
		mods.mekanism.enrichment.addRecipe(hashOre[key], dictDust.firstItem * 4);
		mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 4);
		mods.techreborn.grinder.addRecipe(dictDust.firstItem * 3, hashOre[key], 10, 64);
		mods.techreborn.industrialGrinder.addRecipe(dictGem.firstItem * 3, <techreborn:dust:37>, <techreborn:smalldust:56>, null, <liquid:water> * 1200, hashOre[key], <minecraft:dye:4> * 8);
	}
	if (hashIngot has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_dust_from_ingot_petrotheum", dictDust.firstItem, [
			hashIngot[key], hashDust["Petrotheum"]
		]);
		
		mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashIngot[key], 1024);
		mods.mekanism.crusher.addRecipe(hashIngot[key], dictDust.firstItem);
		mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 10, 64);
	}
	if (hashGem has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_dust_from_gem_petrotheum", dictDust.firstItem, [
			hashGem[key], hashDust["Petrotheum"]
		]);
		
		mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashGem[key], 1024);
		mods.mekanism.crusher.addRecipe(hashGem[key], dictDust.firstItem);
		mods.nuclearcraft.Manufactory.addRecipe(hashGem[key], dictDust.firstItem);
		mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashGem[key], 10, 64);
	}
	if (hashDustDirty has key) {
		mods.mekanism.enrichment.addRecipe(dictDust.firstItem, hashDustDirty[key]);
	}
	if (hashDustSmall has key) {
		recipes.addShaped(key.toLowerCase() ~ "_dust_from_smalldust", dictDust.firstItem, [
			[hashDustSmall[key], hashDustSmall[key]],
			[hashDustSmall[key], hashDustSmall[key]]
		]);
	}
}

/*** Small Dusts ***/
for key, dictDustSmall in hashDustSmall {
	if (hashDust has key) {
		recipes.addShapeless(key ~ "_smalldust_from_dust", dictDustSmall.firstItem, [
			hashDust[key]
		);
	}
}

/*** Plates ***/
var tier1Plates = [] as string[];
var tier2Plates = [] as string[];
var tier3Plates = [] as string[];

for key, dictPlate in hashPlate {
	if (hashIngot has key) {
		if (!(tier3Plates has key || tier2Plates has key || tier1Plates has key)) {
			recipes.addShapeless(key ~ "_plate_from_ingot_embers", dictPlate.firstItem,[
				hashIngot[key], hashIngot[key], <embers:tinker_hammer>
			]);
			recipes.addShapeless(key ~ "_plate_from_ingot_immersivengineering", dictPlate.firstItem,[
				hashIngot[key], hashIngot[key], <immersiveengineering:tool>.transformDamage(1);
			]);
		}
		if (tier1Plates has key) {
			mods.immersiveengineering.MetalPress(dictPlate.firstItem * 2, hashIngot[key] * 3, <immersiveengineering:mold>, 512);
			mods.techreborn.plateBendingMachine.addRecipe(dictPlate.firstItem * 2, hashIngot[key] * 3, 10, 32);
			mods.nuclearcraft.Pressurizer.addRecipe(hashIngot[key], dictPlate.firstItem);
		}
		if (tier2Plates has key || tier1Plates has key) {
			mods.nuclearcraft.Pressurizer.addRecipe(hashIngot[key] * 3, dictPlate.firstItem * 2);
		}
		if (tier3Plates has key || tier2Plates has key || tier1Plates has key) {
			
		}
	}
	if (hashGem has key) {
		if (!(tier3Plates has key || tier2Plates has key || tier1Plates has key)) {
			
		}
		if (tier1Plates has key) {
			mods.immersiveengineering.MetalPress(dictPlate.firstItem * 2, hashGem[key] * 3, <immersiveengineering:mold>, 512);
			mods.techreborn.plateBendingMachine.addRecipe(dictPlate.firstItem * 2, hashGem[key] * 3, 10, 32);
		}
		if (tier2Plates has key || tier1Plates has key) {
			mods.nuclearcraft.Pressurizer.addRecipe(hashGem[key], dictPlate.firstItem);
		}
		if (tier3Plates has key || tier2Plates has key || tier1Plates has key) {
		
		}
	}
}

