#loader crafttweaker
#priority -0202

val byproducts as string[string] = {} as string[string];

/*** Ores ***/
//recipes.removeShapeless(<woot:stygianironore>);
mods.techreborn.fusionReactor.removeRecipe(<techreborn:ore:1>);
for key, dictOre in hashOre {
	if (hashDust has key) {
		mods.mekanism.combiner.removeRecipe(dictOre, hashDust[key], hashBlock["Cobblestone"]);
	}
}

/*** Clathrate Ores ***/

/*** Chunks ***/
for key, dictChunk in hashChunk {
	if (hashChunkRocky has key) {
		mods.magneticraft.Sieve.removeRecipe(hashChunkRocky[key].firstItem);
		mods.magneticraft.SluiceBox.removeRecipe(hashChunkRocky[key].firstItem);
	}
}

/*** Rocky Chunks ***/
for key, dictChunkRocky in hashChunkRocky {
	if (hashOre has key) {
		mods.magneticraft.CrushingTable.removeRecipe(hashOre[key].firstItem);
		mods.magneticraft.Grinder.removeRecipe(hashOre[key].firstItem);
	}
}

/*** Dirty Dusts ***/
for key, dictDustDirty in hashDustDirty {
	if (hashClump has key) {
		mods.mekanism.crusher.removeRecipe(dictDustDirty, hashClump[key]);
	}
}

/*** Clumps ***/
for key, dictClump in hashClump {
	if (hashOre has key) {
		mods.mekanism.purification.removeRecipe(dictClump * 3, hashOre[key], hashGas["Oxygen"]);
	}
	if (hashShard has key) {
		mods.mekanism.purification.removeRecipe(dictClump, hashShard[key], hashGas["Oxygen"]);
	}
}

/*** Shards ***/
for key, dictShard in hashShard {
	if (hashOre has key) {
		mods.mekanism.chemical.injection.removeRecipe(dictShard * 4, hashOre[key], hashGas["HydrogenChloride"]);
	}
	if (hashCrystal has key) {
		mods.mekanism.chemical.injection.removeRecipe(dictShard, hashCrystal[key], hashGas["HydrogenChloride"]);
	}
}

/*** Crystals***/
//recipes.remove(hashCrystal["Obsidian"]);
//mods.cyclicmagic.Solidifier.removeShapedRecipe(<cyclicmagic:crystallized_amber>);

for key, dictCrystal in hashCrystal {
	if (hashSlurryClean has key) {
		mods.mekanism.chemical.crystallizer.removeRecipe(dictCrystal, hashSlurryClean[key]);
	}
}

/*** Ingots ***/
recipes.removeShapeless(hashIngot["Bronze"]);
recipes.removeShaped(hashIngot["Graphite"]);

mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

mods.techreborn.compressor.removeInputRecipe(<techreborn:dust:65>);
mods.techreborn.vacuumFreezer.removeRecipe(<techreborn:ingot:17>);

for key, dictIngot in hashIngot {
	if (hashOre has key) {
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemIngot);
		}
	}
	if (hashNugget has key) {
		recipes.removeShaped(dictIngot, [
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]],
			[hashNugget[key], hashNugget[key], hashNugget[key]]
		]);
		recipes.removeShapeless(dictIngot, [
			hashNugget[key], hashNugget[key], hashNugget[key],
			hashNugget[key], hashNugget[key], hashNugget[key],
			hashNugget[key], hashNugget[key], hashNugget[key]
		]);
	}
	if (hashDust has key) {
		recipes.removeShapeless(dictIngot, [
			hashDust[key], hashDust["Pyrotheum"]
		]);
		
		for itemIngot in dictIngot.items {
			furnace.remove(itemIngot);
		}
	}
	if (hashBlock has key) {
		recipes.removeShapeless(dictIngot, [
			hashBlock[key]
		]);
	}
	if (hashMolten has key) {
		for itemIngot in dictIngot.items {
			mods.embers.Stamper.remove(itemIngot);
		}
	}
}

/*** Gems ***/
furnace.remove(<minecraft:quartz>);

for key, dictGem in hashGem {
	if (hashOre has key) {
		mods.magneticraft.Grinder.removeRecipe(hashOre[key].firstItem);
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dictGem);
		mods.nuclearcraft.Manufactory.removeRecipeWithInput(hashOre[key]);
		mods.nuclearcraft.Manufactory.removeRecipeWithOutput(dictGem);
		for itemOre in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemOre);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemOre);
			mods.techreborn.grinder.removeInputRecipe(itemOre);
		}
		for itemGem in dictGem.items {
			furnace.remove(itemGem);
			
			//mods.astralsorcery.Grindstone.removeRecipe(itemGem);
			mods.immersiveengineering.ArcFurnace.removeRecipe(itemGem);
			mods.techreborn.grinder.removeRecipe(itemGem);
		}
	}
	if (hashDust has key) {
		mods.mekanism.enrichment.removeRecipe(hashDust[key], dictGem);
		for itemGem in dictGem.items {
			furnace.remove(itemGem);
		}
	}
}

/*** Nuggets ***/
for key, dictNugget in hashNugget {
	if (hashIngot has key) {
		recipes.removeShapeless(dictNugget,[
			hashIngot[key]
		]);
	}
	if (hashGem has key) {
		recipes.removeShapeless(dictNugget,[
			hashGem[key]
		]);
	}
	if (hashMolten has key) {
		for itemNugget in dictNugget.items {
			mods.embers.Stamper.remove(itemNugget);
		}
	}
}

/*** Dusts ***/
furnace.remove(<minecraft:redstone>);

mods.magneticraft.CrushingTable.removeRecipe(<techreborn:ore:5>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ores:4>);

mods.magneticraft.Grinder.removeRecipe(<magneticraft:ores:4>);

mods.immersiveengineering.ArcFurnace.removeRecipe(<immersive_energy:metal:2>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersive_energy:metal:3>);

mods.techreborn.compressor.removeInputRecipe(<immersiveengineering:material:17>);

mods.techreborn.grinder.removeInputRecipe(<magneticraft:storage_blocks:4>);
mods.techreborn.grinder.removeInputRecipe(<techreborn:ore:9>);
mods.techreborn.grinder.removeInputRecipe(<techreborn:plates:9>);
mods.techreborn.grinder.removeInputRecipe(<techreborn:plates:10>);
mods.techreborn.grinder.removeInputRecipe(<techreborn:plates:20>);
mods.techreborn.grinder.removeInputRecipe(<techreborn:storage:3>);

for key, dictDust in hashDust {
	if (hashOre has key) {
		mods.mekanism.enrichment.removeRecipe(hashOre[key], dictDust);
		mods.nuclearcraft.Manufactory.removeRecipeWithInput(hashOre[key]);
		for itemOre in hashOre[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemOre);
			//mods.bloodmagic.AlchemyTable.removeRecipe([itemOre, <bloodmagic:cutting_fluid>]);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemOre);
			//mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemOre);
			//mods.integrateddynamics.Squeezer.removeRecipe(itemOre);
			mods.techreborn.grinder.removeInputRecipe(itemOre);
		}
		for itemDust in dictDust.items {
			mods.techreborn.grinder.removeRecipe(itemDust);
		}
	}
	if (hashDustDirty has key) {
		mods.mekanism.enrichment.removeRecipe(hashDustDirty[key], dictDust);
	}
	if (hashCrystal has key) {
		for itemCrystal in hashCrystal[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemCrystal);
		}
	}
	if (hashIngot has key) {
		recipes.removeShapeless(dictDust, [
			hashIngot[key], hashDust["Petrotheum"]
		]);
		
		mods.mekanism.crusher.removeRecipe(dictDust, hashIngot[key]);
		mods.nuclearcraft.Manufactory.removeRecipeWithInput(hashIngot[key]);
		for itemIngot in hashIngot[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemIngot);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemIngot);
			//mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemIngot);
			//mods.integrateddynamics.Squeezer.removeRecipe(itemIngot);
			mods.techreborn.grinder.removeInputRecipe(itemIngot);
		}
		for itemDust in dictDust.items {
			mods.techreborn.grinder.removeRecipe(itemDust);
		}
	}
	if (hashGem has key) {
		recipes.removeShapeless(dictDust, [
			hashGem[key], hashDust["Petrotheum"]
		]);
		
		mods.mekanism.crusher.removeRecipe(dictDust, hashGem[key]);
		mods.nuclearcraft.Manufactory.removeRecipeWithInput(hashGem[key]);
		for itemGem in hashGem[key].items {
			mods.appliedenergistics2.Grinder.removeRecipe(itemGem);
			mods.immersiveengineering.Crusher.removeRecipesForInput(itemGem);
			//mods.integrateddynamics.MechanicalSqueezer.removeRecipe(itemGem);
			//mods.integrateddynamics.Squeezer.removeRecipe(itemGem);
			mods.techreborn.grinder.removeInputRecipe(itemGem);
		}
		for itemDust in dictDust.items {
			mods.immersiveengineering.Crusher.removeRecipe(itemDust);
			mods.techreborn.grinder.removeRecipe(itemDust);
		}
	}
	if (hashDustSmall has key) {
		recipes.removeShapeless(dictDust,[
			hashDustSmall[key], hashDustSmall[key], hashDustSmall[key],
			hashDustSmall[key]
		]);
	}
	if (hashPlate has key) {
		for itemPlate in hashPlate[key].items {
			mods.techreborn.grinder.removeInputRecipe(itemPlate);
		}
	}
	if (hashBlock has key) {
		for itemBlock in hashBlock[key].items {
			mods.techreborn.grinder.removeInputRecipe(itemBlock);
		}
	}
}

/*** Small Dusts ***/
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:10>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:54>);
mods.techreborn.industrialElectrolyzer.removeRecipe(<techreborn:smalldust:59>);

for key, dictDustSmall in hashDustSmall {
	if (hashDust has key) {
		recipes.removeShaped(dictDustSmall, [
			[null, null],
			[null, hashDust[key]]
		]);
		recipes.removeShapeless(dictDustSmall, [
			hashDust[key]
		]);
	}
}

/*** Plates ***/
mods.techreborn.compressor.removeRecipe(<techreborn:plates:2>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:3>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:9>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:10>);
mods.techreborn.compressor.removeRecipe(<techreborn:plates:36>);

for key, dictPlate in hashPlate {
	if (hashIngot has key) {
		recipes.removeShapeless(dictPlate, [
			hashIngot[key], <embers:tinker_hammer>
		]);
		recipes.removeShapeless(dictPlate, 
			[hashIngot[key], <immersiveengineering:tool>
		]);
		
		mods.magneticraft.HydraulicPress.removeRecipe(hashIngot[key].firstItem, 0);
		mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(dictPlate);
		for itemPlate in dictPlate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
		}
	}
	if (hashGem has key) {
		mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(dictPlate);
		for itemPlate in dictPlate.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemPlate);
		}
	}
	if (hashMolten has key) {
		for itemPlate in dictPlate.items {
			mods.embers.Stamper.remove(itemPlate);
		}
	}
}

/*** Dense Plates ***/
for key, dictPlateDense in hashPlateDense {
	if (hashPlate has key) {
		mods.nuclearcraft.Pressurizer.removeRecipeWithOutput(dictPlateDense);
	}
}

/*** Rods ***/
for key, dictRod in hashRod {
	if (hashIngot has key) {
		recipes.removeShaped(dictRod, [
			[hashIngot[key]],
			[hashIngot[key]]
		]);
		
		for itemRod in dictRod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
	}
	if (hashGem has key) {
		recipes.removeShaped(dictRod, [
			[hashGem[key]],
			[hashGem[key]]
		]);
		
		for itemRod in dictRod.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemRod);
		}
	}
}

/*** Gears ***/
for key, dictGear in hashGear {
	if (hashIngot has key) {
		recipes.removeShaped(dictGear);
		
		for itemGear in dictGear.items {
			mods.immersiveengineering.MetalPress.removeRecipe(itemGear);
		}
	}
	if (hashGem has key) {
		recipes.removeShaped(dictGear);
	}
}

/*** Blocks ***/
for key, dictBlock in hashBlock {
	if (hashIngot has key) {
		recipes.removeShaped(dictBlock, [
			[hashIngot[key], hashIngot[key], hashIngot[key]],
			[hashIngot[key], hashIngot[key], hashIngot[key]],
			[hashIngot[key], hashIngot[key], hashIngot[key]]
		]);
		recipes.removeShapeless(dictBlock, [
			hashIngot[key], hashIngot[key], hashIngot[key],
			hashIngot[key], hashIngot[key], hashIngot[key],
			hashIngot[key], hashIngot[key], hashIngot[key]
		]);
	}
	if (hashGem has key) {
		recipes.removeShaped(dictBlock, [
			[hashGem[key], hashGem[key], hashGem[key]],
			[hashGem[key], hashGem[key], hashGem[key]],
			[hashGem[key], hashGem[key], hashGem[key]]
		]);
		recipes.removeShapeless(dictBlock, [
			hashGem[key], hashGem[key], hashGem[key],
			hashGem[key], hashGem[key], hashGem[key],
			hashGem[key], hashGem[key], hashGem[key]
		]);
	}
}

/*** Others ***/
mods.techreborn.alloySmelter.removeAll();
mods.techreborn.blastFurnace.removeAll();
mods.techreborn.implosionCompressor.removeAll();
mods.techreborn.industrialGrinder.removeAll();
mods.techreborn.plateBendingMachine.removeAll();

mods.magneticraft.CrushingTable.removeRecipe(hashIngot["Steel"].firstItem);
mods.mekanism.combiner.removeRecipe(<minecraft:obsidian>, hashDust["Obsidian"], hashBlock["Cobblestone"]);

mods.techguns.Grinder.removeRecipe(<techguns:guidedmissilelauncher>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:62>);