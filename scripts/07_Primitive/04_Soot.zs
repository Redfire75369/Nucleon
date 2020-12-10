#loader crafttweaker
#priority -0704

/*** Informative Items ***/
changeRecipeShaped("alchemical_dial", <soot:alchemy_gauge>, [
	[null, <embers:tinker_hammer>.reuse(), null],
	[hashIngot["Antimony"], <embers:plate_caminite>, hashIngot["Antimony"]],
	[null, hashIngot["Antimony"], null]
]);

/*** Machines ***/
/****** Generators ******/

/****** Processors ******/
recipes.remove(<soot:alchemy_globe>);

recipes.remove(<soot:insulation>);

recipes.remove(<soot:distillation_pipe>);
recipes.remove(<soot:still>);