#loader crafttweaker
#priority -0807

import mods.immersiveengineering.Blueprint;
import crafttweaker.item.IIngredient;

var plates as IIngredient[] = [
	hashPlate["RefinedIron"],
	hashPlate["RefinedIron"],
	hashPlate["RefinedIron"],
	hashPlate["RefinedIron"],
	hashPlate["RefinedIron"]
] as IIngredient[];


Blueprint.addRecipe("molds", <contenttweaker:mold_flat>, plates);

plates += <immersiveengineering:tool:1> as IIngredient;

for meta in 0 to 8 {
	Blueprint.removeRecipe(itemUtils.getItem("immersiveengineering:mold", meta));
	Blueprint.addRecipe("molds", itemUtils.getItem("immersiveengineering:mold", meta), plates);
}
for meta in 0 to 4 {
	Blueprint.removeRecipe(itemUtils.getItem("immersiveintelligence:press_mold", meta));
	Blueprint.addRecipe("molds", itemUtils.getItem("immersiveintelligence:press_mold", meta), plates);
}
