#loader crafttweaker
#priority -0608

/*** Recipes ***/
furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<contenttweaker:low_grade_charcoal>, oreDict["logWood"]);

recipes.addShaped("block_low_grade_charcoal", <contenttweaker:block_low_grade_charcoal>, [
	[<contenttweaker:low_grade_charcoal>, <contenttweaker:low_grade_charcoal>, <contenttweaker:low_grade_charcoal>],
	[<contenttweaker:low_grade_charcoal>, <contenttweaker:low_grade_charcoal>, <contenttweaker:low_grade_charcoal>],
	[<contenttweaker:low_grade_charcoal>, <contenttweaker:low_grade_charcoal>, <contenttweaker:low_grade_charcoal>]
]);

/*** Fuel Values ***/
furnace.setFuel(<rustichromia:assembler1>, 0); 
furnace.setFuel(<contenttweaker:low_grade_charcoal>, 800);
furnace.setFuel(<contenttweaker:block_low_grade_charcoal>, 8000);
furnace.setFuel(<embers:dust_ember>, 6400);
 
furnace.setFuel(oreDict["logWood"], 400);
furnace.setFuel(oreDict["plankWood"], 100);
furnace.setFuel(oreDict["stairWood"], 150);
furnace.setFuel(oreDict["slabWood"], 50);
furnace.setFuel(oreDict["fenceWood"], 167);
furnace.setFuel(oreDict["fenceGateWood"], 400);
furnace.setFuel(oreDict["doorWood"], 200);
furnace.setFuel(oreDict["trapdoorWood"], 300);
furnace.setFuel(oreDict["chest"], 800);
furnace.setFuel(oreDict["stickWood"], 50);
furnace.setFuel(oreDict["treeSapling"], 50);

furnace.setFuel(<minecraft:bowl>, 75);
furnace.setFuel(<minecraft:crafting_table>, 400);
furnace.setFuel(<minecraft:daylight_detector>, 400);
furnace.setFuel(<minecraft:jukebox>, 0);
furnace.setFuel(<minecraft:ladder>, 117);
furnace.setFuel(<minecraft:noteblock>, 800);
furnace.setFuel(<minecraft:sign>, 217);
furnace.setFuel(<minecraft:wooden_pressure_plate>, 200);

furnace.setFuel(<minecraft:bow:*>, 150);
furnace.setFuel(<minecraft:fishing_rod:*>, 400);
furnace.setFuel(<minecraft:wooden_button>, 100);
furnace.setFuel(<minecraft:wooden_axe:*>, 400);
furnace.setFuel(<minecraft:wooden_hoe:*>, 300);
furnace.setFuel(<minecraft:wooden_pickaxe:*>, 400);
furnace.setFuel(<minecraft:wooden_shovel:*>, 200);
furnace.setFuel(<minecraft:wooden_sword:*>, 250);
furnace.setFuel(<minecraft:acacia_boat>, 500);
furnace.setFuel(<minecraft:birch_boat>, 500);
furnace.setFuel(<minecraft:boat>, 500);
furnace.setFuel(<minecraft:dark_oak_boat>, 500);
furnace.setFuel(<minecraft:jungle_boat>, 500);
furnace.setFuel(<minecraft:spruce_boat>, 500);