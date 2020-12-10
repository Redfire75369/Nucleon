#loader crafttweaker
#priority -0501

/* Redstone */
mods.magneticraft.SluiceBox.addRecipe(<contenttweaker:regolith>, 0.5, <minecraft:flint>, 0.05, hashGem["RedGarnet"].firstItem, 0.02, hashGem["Sapphire"].firstItem, 0.01, hashGem["YellowGarnet"].firstItem, true);
mods.techguns.ChargingStation.addRecipe(hashGem["RedGarnet"].firstItem, hashGem["ChargedRedGarnet"].firstItem, 10000);
mods.techguns.ChargingStation.addRecipe(hashGem["YellowGarnet"].firstItem, hashGem["ChargedYellowGarnet"].firstItem, 100000);
mods.techguns.ChargingStation.addRecipe(hashGem["Sapphire"].firstItem, hashGem["ChargedSapphire"].firstItem, 100000);
mods.rustichromia.Quern.add("redstone", [hashGem["ChargedRedGarnet"]], [hashDust["Redstone"].firstItem * 3], 12, 1.0/0, 500);
mods.immersiveengineering.Crusher.addRecipe(hashDust["Redstone"].firstItem * 8, hashGem["ChargedRedGarnet"], 40000);

/* Nickel */
mods.magneticraft.Sieve.addRecipe(<contenttweaker:regolith>, <magneticraft:chunks>, 0.2, <magneticraft:chunks:10>, 0.15, <minecraft:flint>, 0.5, 0.5, true);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:compacted_ore_chunk_pyrrhotite>, <magneticraft:chunks:10>, <contenttweaker:mold_flat>, 8000, 1);
mods.immersiveintelligence.ChemicalBath.addRecipe(<contenttweaker:compacted_ore_chunk_pyrrhotite>, <contenttweaker:purified_ore_chunk_pyrrhotite>, <liquid:distwater> * 1000, 12800, 400);
mods.immersiveengineering.Crusher.addRecipe(hashDust["Nickel"].firstItem, <contenttweaker:purified_ore_chunk_pyrrhotite>, 6400, hashDust["Iron"].firstItem, 0.50);
mods.immersiveengineering.BlastFurnace.addRecipe(hashIngot["Nickel"].firstItem, hashDust["Nickel"], 4000, <immersiveengineering:material:7>);

/* Silver */
// Alloy Kiln: Invar
mods.immersiveengineering.Crusher.addRecipe(hashDust["Invar"].firstItem, hashIngot["Invar"], 3200); // Temporary
// mods.magneticraft.Grinder.addRecipe(hashIngot["Invar"].firstItem, hashDust["Invar"].firstItem, <minecraft:stone>, 0.0, 30);
mods.immersiveintelligence.ChemicalBath.addRecipe(hashDust["Invar"].firstItem, <contenttweaker:purified_compound_invar>, <liquid:distwater> * 1200, 19200, 300);
mods.immersiveengineering.Mixer.addRecipe(<liquid:ethanoate_invar> * 250, <liquid:ethanoic_acid> * 250, [<contenttweaker:purified_compound_invar>], 8000);
addVacuumEvaporatorRecipe(<liquid:water> * 250, <contenttweaker:crystal_hydrated_silver>, <liquid:ethanoate_invar> * 250, 96000, 2400);
mods.industrialrenewal.lathe.addRecipe(hashIngot["Silver"].firstItem, <contenttweaker:crystal_hydrated_silver>, 80);
