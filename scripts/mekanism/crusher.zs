#loader crafttweaker reloadable
#priority 0

import crafttweaker.item.IIngredient;
import mods.mekanism.crusher as Crusher;

Crusher.addRecipe(<ore:wool>, <item:minecraft:string> * 4);

Crusher.addRecipe(<ore:treeSapling>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:wheat_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:pumpkin_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:melon_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:beetroot_seeds>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:rustichromia:cotton_seed>, <item:mekanism:biofuel> * 2);

Crusher.addRecipe(<item:minecraft:wheat>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:potato>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:baked_potato>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:poisonous_potato>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:carrot>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:beetroot>, <item:mekanism:biofuel> * 4);

Crusher.addRecipe(<item:minecraft:apple>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:bread>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:melon>, <item:mekanism:biofuel> * 4);
Crusher.addRecipe(<item:minecraft:rotten_flesh>, <item:mekanism:biofuel> * 2);

Crusher.addRecipe(<item:minecraft:cactus>, <item:mekanism:biofuel> * 2);
Crusher.addRecipe(<item:minecraft:pumpkin>, <item:mekanism:biofuel> * 6);
Crusher.addRecipe(<ore:sugarcane>, <item:mekanism:biofuel> * 2);

Crusher.addRecipe(<ore:itemFlint>, <item:minecraft:gunpowder>);
Crusher.addRecipe(<ore:sand>, <item:enderio:item_material:5>);

Crusher.addRecipe(<item:minecraft:stonebrick:3>, <item:minecraft:stonebrick>);
Crusher.addRecipe(<item:minecraft:stonebrick>, <item:minecraft:stonebrick:2>);
Crusher.addRecipe(<item:minecraft:stonebrick:2>, <item:minecraft:stone>);
Crusher.addRecipe(<ore:stone>, <item:minecraft:cobblestone>);
Crusher.addRecipe(<ore:cobblestone>, <item:minecraft:gravel>);
Crusher.addRecipe(<ore:gravel>, <item:minecraft:sand>);

val sandstone as IIngredient = <item:minecraft:sandstone:*> | <item:chisel:sandstoneyellow:*> | <item:chisel:sandstoneyellow1:*> | <item:chisel:sandstoneyellow2:*> | itemUtils.getItem("chisel:sandstone-scribbles", 32767);
val sandstone_red as IIngredient = <item:minecraft:red_sandstone:*> | <item:chisel:sandstonered:*> | <item:chisel:sandstonered1:*> | <item:chisel:sandstonered2:*> | itemUtils.getItem("chisel:sandstonered-scribbles", 32767);

Crusher.addRecipe(sandstone, <item:minecraft:sand> * 2);
Crusher.addRecipe(sandstone_red, <item:minecraft:sand:1> * 2);

Crusher.addRecipe(<item:buildinggadgets:constructionblock_dense>, <item:buildinggadgets:construction_chunk_dense>);
Crusher.addRecipe(<item:buildinggadgets:construction_chunk_dense>, <item:buildinggadgets:constructionpaste>);

