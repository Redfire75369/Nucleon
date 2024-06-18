#loader crafttweaker reloadable
#priority 2

mods.unidict.removalByKind.get("Crafting").remove("block");
mods.unidict.api.newShapedRecipeTemplate("block", 1, [
    ["ingot","ingot","ingot"],
	["ingot","ingot","ingot"],
	["ingot","ingot","ingot"],
]);

mods.unidict.removalByKind.get("Crafting").remove("ingot");
mods.unidict.api.newShapedRecipeTemplate("ingot", 9, [["block"]]);
mods.unidict.api.newShapedRecipeTemplate("ingot", 1, [
    ["nugget", "nugget", "nugget"],
	["nugget", "nugget", "nugget"],
	["nugget", "nugget", "nugget"],
]);

mods.unidict.removalByKind.get("Crafting").remove("nugget");
mods.unidict.api.newShapedRecipeTemplate("nugget", 9, [["ingot"]]);
