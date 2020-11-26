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
val tier1Ingots = [
	"Iron",
	"Copper",
	"Tin",
	"Lead",
	"Bronze",
	"Terne",
	"RedstoneAlloy"
] as string[];
val tier2Ingots = [] as string[];
val tier3Ingots = [] as string[];

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		if (tier1Ingots has key) {
			furnace.addRecipe(dictIngot.firstItem, hashOre[key], 0.05);
		} else if (tier2Ingots has key) {
			
		} else if (tier3Ingots has key) {
			
		} else {
			print("Ingot (Ore) without assigned Tier: " ~ key);
		}
	}
	if (hashDust has key) {
		if (tier1Ingots has key) {
			furnace.addRecipe(dictIngot.firstItem, hashDust[key], 0);
		} else if (tier2Ingots has key) {
			
		} else if (tier3Ingots has key) {
			
		} else {
			print("Ingot (Dust) without assigned Tier: " ~ key);
		}
	}
}

/*** Gems ***/
val tier1Gems = [
	"Coal",
	"Lapis"
] as string[];
val tier2Gems = [] as string[];
val tier3Gems = [] as string[];
val tier4Gems = [] as string[];

for key, dictGem in hashGem {
	/*if (hashOre has key) {
		if (tier1Gems has key) {
			mods.appliedenergistics2.Grinder.addRecipe(dictGem.firstItem, hashOre[key].firstItem, 8, dictGem.firstItem, 0.4);
			mods.immersiveengineering.Crusher.addRecipe(dictGem.firstItem * 3, hashOre[key], 20480, <appliedenergistics2:material:45>, 0.01);
			mods.magneticraft.Grinder.addRecipe(hashOre[key].firstItem, dictGem.firstItem * 3, <appliedenergistics2:material:45>, 0.0125, 80);
			mods.techreborn.grinder.addRecipe(dictGem.firstItem * 4, hashOre[key], 40, 512);
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictGem.firstItem * 5);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 5);
		} else if (tier2Gems has key) {
			mods.immersiveengineering.Crusher.addRecipe(dictGem.firstItem * 2, hashOre[key], 40960, <appliedenergistics2:material:45>, 0.02);
			mods.magneticraft.Grinder.addRecipe(hashOre[key].firstItem, dictGem.firstItem * 2, <appliedenergistics2:material:45>, 0.025, 160);
			mods.techreborn.grinder.addRecipe(dictGem.firstItem * 3, hashOre[key], 80, 1024);
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictGem.firstItem * 4);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 4);
		} else if (tier3Gems has key) {
			mods.techreborn.grinder.addRecipe(dictGem.firstItem * 2, hashOre[key], 160, 2048);
			//mods.techreborn.industrialGrinder.addRecipe(dictGem.firstItem * 3, <techreborn:smalldust:62>, <techreborn:smalldust:48>, null, <liquid:water> * 2400, hashOre[key], <minecraft:dye:4> * 8);
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictGem.firstItem * 3);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 3);
		} else if (tier4Gems has key) {
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictGem.firstItem * 4);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 4);
		} else {
			print("Gem (Ore) without assigned Tier: " ~ key);
		}
	}*/
	if (hashDust has key) {
		mods.techreborn.implosionCompressor.addRecipe(dictGem.firstItem * 3, <techreborn:dust:15>, hashDust[key] * 4, <appliedenergistics2:tiny_tnt> * 2, 200, 2048);
	}
}

/*** Dusts ***/
val tier1Dusts = [] as string[];
val tier2Dusts = [] as string[];
val tier3Dusts = [] as string[];
val tier4Dusts = [] as string[];

for key, dictDust in hashDust {
	if (hashOre has key) {
		recipes.addShapeless(key.toLowerCase() ~ "_dust_from_ore_petrotheum", dictDust.firstItem * 2, [
			hashOre[key], hashDust["Petrotheum"]
		]);
		if (tier1Dusts has key) {
			mods.appliedenergistics2.Grinder.addRecipe(dictDust.firstItem, hashOre[key].firstItem, 8, dictDust.firstItem, 0.8);
			mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem * 3, hashOre[key], 10240, <techreborn:smalldust:37>, 0.025);
			mods.magneticraft.Grinder.addRecipe(hashOre[key].firstItem, dictDust.firstItem * 3, <techreborn:smalldust:37>, 0.03125, 80);
			mods.techreborn.grinder.addRecipe(dictDust.firstItem * 4, hashOre[key], 30, 102r);
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictDust.firstItem * 5);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 5);
		} else if (tier2Dusts has key) {
			mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem * 2, hashOre[key], 40960, <techreborn:smalldust:37>, 0.05);
			mods.magneticraft.Grinder.addRecipe(hashOre[key].firstItem, dictDust.firstItem * 2, <techreborn:smalldust:37>, 0.0625, 160);
			mods.techreborn.grinder.addRecipe(dictDust.firstItem * 3, hashOre[key], 60, 2048);
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictDust.firstItem * 4);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 4);
		} else if (tier3Dusts has key) {
			mods.techreborn.grinder.addRecipe(dictDust.firstItem * 2, hashOre[key], 120, 4096);
			//mods.techreborn.industrialGrinder.addRecipe(dictDust.firstItem * 3, hashDust[oreByproducts[key][0]], <techreborn:smalldust:56>, null, <liquid:water> * 1200, hashOre[key], <minecraft:dye:4> * 8);
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictDust.firstItem * 3);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 3);
		} else if (tier4Dusts has key) {
			mods.mekanism.enrichment.addRecipe(hashOre[key], dictDust.firstItem * 2);
			mods.nuclearcraft.Manufactory.addRecipe(hashOre[key], dictDust.firstItem * 2);
		} else {
			print("Dust (Ore) without assigned Tier: " ~ key);
		}
	}
	if (hashIngot has key) {
		if (tier1Dusts has key) {
			mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashIngot[key], 10240);
			mods.magneticraft.Grinder.addRecipe(hashIngot[key].firstItem, dictDust.firstItem, <techreborn:smalldust:37>, 0.0, 60, true);
			mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 20, 1024);
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else if (tier2Dusts has key) {
			mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashIngot[key], 20480, <techreborn:smalldust:37>, 0.05);
			mods.magneticraft.Grinder.addRecipe(hashIngot[key].firstItem, dictDust.firstItem, <techreborn:smalldust:37>, 0.0, 120, true);
			mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 40, 2048);
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else if (tier3Dusts has key) {
			mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 80, 4096);
			//mods.techreborn.industrialGrinder.addRecipe(dictGem.firstItem * 3, <techreborn:dust:37>, <techreborn:smalldust:56>, null, <liquid:water> * 1200, hashIngot[key], <minecraft:dye:4> * 8);
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else if (tier4Dusts has key) {
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else {
			print("Dust (Ingot) without assigned Tier: " ~ key);
		}
	}
	if (hashGem has key) {
		if (tier1Dusts has key) {
			mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashIngot[key], 10240);
			mods.magneticraft.Grinder.addRecipe(hashIngot[key].firstItem, dictDust.firstItem, <techreborn:smalldust:37>, 0.0, 60, true);
			mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 20, 1024);
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else if (tier2Dusts has key) {
			mods.immersiveengineering.Crusher.addRecipe(dictDust.firstItem, hashIngot[key], 20480, <techreborn:smalldust:37>, 0.05);
			mods.magneticraft.Grinder.addRecipe(hashIngot[key].firstItem, dictDust.firstItem, <techreborn:smalldust:37>, 0.0, 120, true);
			mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 40, 2048);
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else if (tier3Dusts has key) {
			mods.techreborn.grinder.addRecipe(dictDust.firstItem, hashIngot[key], 80, 4096);
			//mods.techreborn.industrialGrinder.addRecipe(dictGem.firstItem * 3, <techreborn:dust:37>, <techreborn:smalldust:56>, null, <liquid:water> * 1200, hashIngot[key], <minecraft:dye:4> * 8);
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else if (tier4Dusts has key) {
			mods.mekanism.enrichment.addRecipe(hashIngot[key], dictDust.firstItem);
			mods.nuclearcraft.Manufactory.addRecipe(hashIngot[key], dictDust.firstItem);
		} else {
			print("Dust (Gem) without assigned Tier: " ~ key);
		}
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
val tier1Plates = [
	"Iron",
	"Copper",
	"Tin",
	"Lead",
	"Bronze",
	"Terne",
	"RedstoneAlloy"
] as string[];
val tier2Plates = [] as string[];
val tier3Plates = [] as string[];
val tier4Plates = [] as string[];

for key, dictPlate in hashPlate {
	if (hashIngot has key) {
		if (tier1Plates has key) {
			recipes.addShapeless(key ~ "_plate_from_ingot_embers", dictPlate.firstItem,[
				hashIngot[key], hashIngot[key], <embers:tinker_hammer>
			]);
			recipes.addShapeless(key ~ "_plate_from_ingot_immersivengineering", dictPlate.firstItem,[
				hashIngot[key], hashIngot[key], <immersiveengineering:tool>.transformDamage(1);
			]);
			mods.immersiveengineering.MetalPress(dictPlate.firstItem * 2, hashIngot[key] * 3, <immersiveengineering:mold>, 16000);
			mods.techreborn.plateBendingMachine.addRecipe(dictPlate.firstItem, hashIngot[key], 15, 128);
			mods.nuclearcraft.Pressurizer.addRecipe(hashIngot[key] * 2, dictPlate.firstItem * 3);
		} else if (tier2Plates has key) {
			mods.immersiveengineering.MetalPress(dictPlate.firstItem, hashIngot[key] * 2, <immersiveengineering:mold>, 32000);
			mods.techreborn.plateBendingMachine.addRecipe(dictPlate.firstItem * 2, hashIngot[key] * 3, 30, 256);
			mods.nuclearcraft.Pressurizer.addRecipe(hashIngot[key], dictPlate.firstItem);
		} else if (tier3Plates has key) {
			mods.techreborn.plateBendingMachine.addRecipe(dictPlate.firstItem, hashIngot[key] * 2, 60, 512);
			mods.nuclearcraft.Pressurizer.addRecipe(hashIngot[key] * 3, dictPlate.firstItem * 2);
		} else if (tier4Plates has key) {
			mods.nuclearcraft.Pressurizer.addRecipe(hashIngot[key] * 2, dictPlate.firstItem);
		} else {
			print("Plate (Ingot) without assigned Tier: " ~ key);
		}
	}
	if (hashGem has key && hashDust has key) {
		if (tier1Plates has key) {
			mods.immersiveengineering.MetalPress(dictPlate.firstItem * 2, hashDust[key] * 3, <immersiveengineering:mold>, 48000);
			mods.techreborn.compressor.addRecipe(dictPlate.firstItem, hashDust[key], 45, 256);
			mods.nuclearcraft.Pressurizer.addRecipe(hashDust[key] * 2, dictPlate.firstItem * 3);
		} else if (tier2Plates has key) {
			mods.immersiveengineering.MetalPress(dictPlate.firstItem, hashDust[key] * 2, <immersiveengineering:mold>, 128000);
			mods.techreborn.compressor.addRecipe(dictPlate.firstItem * 2, hashDust[key] * 3, 90, 512);
			mods.nuclearcraft.Pressurizer.addRecipe(hashDust[key], dictPlate.firstItem);
		} else if (tier3Plates has key) {
			mods.techreborn.compressor.addRecipe(dictPlate.firstItem, hashDust[key] * 2, 180, 1024);
			mods.nuclearcraft.Pressurizer.addRecipe(hashDust[key] * 3, dictPlate.firstItem * 2);
		} else if (tier4Plates has key) {
			mods.nuclearcraft.Pressurizer.addRecipe(hashDust[key] * 2, dictPlate.firstItem);
		}
		 else {
			print("Plate (Gem) without assigned Tier: " ~ key);
		}
	}
}

