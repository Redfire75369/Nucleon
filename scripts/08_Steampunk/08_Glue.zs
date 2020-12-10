#loader crafttweaker
#priority -0808

/*** Chemical Bath ***/
mods.immersiveintelligence.ChemicalBath.addRecipe(<minecraft:leather>, <contenttweaker:hide_stock>, <liquid:water> * 250, 256000, 256);
mods.immersiveintelligence.ChemicalBath.addRecipe(<contenttweaker:hide_stock>, <contenttweaker:swollen_hide_stock>, <liquid:limewater> * 500, 128000, 256);
mods.immersiveintelligence.ChemicalBath.addRecipe(<minecraft:fish:0>, <contenttweaker:fish_stock>, <liquid:water> * 250, 256000, 256);
mods.immersiveintelligence.ChemicalBath.addRecipe(<minecraft:fish:1>, <contenttweaker:fish_stock>, <liquid:water> * 250, 192000, 256);
mods.immersiveintelligence.ChemicalBath.addRecipe(<contenttweaker:fish_stock>, <contenttweaker:calciated_fish_stock>, <liquid:limewater> * 500, 128000, 256);
mods.immersiveintelligence.ChemicalBath.addRecipe(<contenttweaker:calciated_fish_stock>, <contenttweaker:swollen_fish_stock>, <liquid:limewater> * 500, 128000, 256);
mods.immersiveintelligence.ChemicalBath.addRecipe(<minecraft:bone>, <contenttweaker:bone_stock>, <liquid:phosphoric_acid> * 250, 128000, 128);
mods.immersiveintelligence.ChemicalBath.addRecipe(<minecraft:skull>, <contenttweaker:bone_stock> * 4, <liquid:phosphoric_acid> * 250, 128000, 128);

/*** Chemical Reactor ***/
mods.techreborn.chemicalReactor.addRecipe(getBucketFromFluid(<liquid:ethanoic_acid>, "dynamiccell") * 10, getBucketFromFluid(<liquid:ethanol>, "dynamiccell") * 10, getBucketFromFluid(<liquid:sulfuric_acid>, "dynamiccell"), 120, 1024);
mods.techreborn.chemicalReactor.addRecipe(getBucketFromFluid(<liquid:glue_liquor>, "dynamiccell"), getBucketFromFluid(<liquid:hydrochloric_acid>, "dynamiccell"), <contenttweaker:swollen_hide_stock> * 2, 512, 2048);
mods.techreborn.chemicalReactor.addRecipe(getBucketFromFluid(<liquid:glue_liquor>, "dynamiccell"), getBucketFromFluid(<liquid:ethanoic_acid>, "dynamiccell"), <contenttweaker:swollen_fish_stock> * 2, 512, 2048);
mods.techreborn.chemicalReactor.addRecipe(getBucketFromFluid(<liquid:glue_liquor>, "dynamiccell"), getBucketFromFluid(<liquid:hydrochloric_acid>, "dynamiccell"), <contenttweaker:swollen_hide_stock> * 3, 128, 2048);
mods.techreborn.chemicalReactor.addRecipe(getBucketFromFluid(<liquid:glue_liquor>, "dynamiccell"), getBucketFromFluid(<liquid:ethanoic_acid>, "dynamiccell"), <contenttweaker:swollen_fish_stock> * 4, 128, 2048);
mods.techreborn.chemicalReactor.addRecipe(getBucketFromFluid(<liquid:weak_glue>, "dynamiccell") * 2, getBucketFromFluid(<liquid:glue_liquor>, "dynamiccell"), getBucketFromFluid(<liquid:egg_albumin>, "dynamiccell") * 2, 512, 3072);

/*** Electrolyzer ***/
mods.immersiveintelligence.Electrolyzer.addRecipe(<liquid:egg_mixture>, <liquid:egg_yolk>, 153600, 2048, <liquid:egg_albumin>);

/*** Others ***/
recipes.addShapeless("bottle_of_egg_mixture", <contenttweaker:bottle_egg_mixture>, [
	<minecraft:glass_bottle>, <minecraft:egg>
]);
recipes.addShapeless("bucket_of_egg_mixture", getBucketFromFluid(<liquid:egg_mixture>, "bucket"), [
	<minecraft:bucket>, <contenttweaker:bottle_egg_mixture>, <contenttweaker:bottle_egg_mixture>, <contenttweaker:bottle_egg_mixture>, <contenttweaker:bottle_egg_mixture>
]);
addVacuumEvaporatorRecipe(<liquid:glue> * 1000, null, <liquid:weak_glue> * 4000, 131072, 2560);
addMixerRecipe([<minecraft:slime_ball>], [], [oreDict["dyeLime"]], [<liquid:glue>, <liquid:latex>, <liquid:preheated_water>], 96000, 120);