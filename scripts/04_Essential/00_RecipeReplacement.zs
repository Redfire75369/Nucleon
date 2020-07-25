#loader crafttweaker
#priority -0400

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

global changeRecipeShapedMirrored as function(string, IItemStack, IIngredient[][])void = function(name as string, output as IItemStack, inputs as IIngredient[][]) as void {
	recipes.remove(output);
	recipes.addShapedMirrored(name, output, inputs);
};

global changeRecipeShaped as function(string, IItemStack, IIngredient[][])void = function(name as string, output as IItemStack, inputs as IIngredient[][]) as void {
	recipes.remove(output);
	recipes.addShaped(name, output, inputs);
};

global changeRecipeShapeless as function(string, IItemStack, IIngredient[])void = function(name as string, output as IItemStack, inputs as IIngredient[]) as void {
	recipes.remove(output);
	recipes.addShapeless(name, output, inputs);
};