#loader crafttweaker
#priority -0701

/*** Machines ***/
mods.rustichromia.Assembler.remove("rustichromia:hay_compactor");

recipes.remove(<rustichromia:assembler3>);

changeRecipeShaped("double_assembler", <rustichromia:assembler2>, [
	[hashIngot["RefinedIron"], hashGear["Bronze"], hashIngot["RefinedIron"]],
	[<minecraft:crafting_table>, hashGear["Terne"], <minecraft:crafting_table>],
	[hashIngot["RefinedIron"], hashGear["Bronze"], hashIngot["RefinedIron"]]
]);
