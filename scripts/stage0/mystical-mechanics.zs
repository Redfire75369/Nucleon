#loader crafttweaker reloadable
#priority -1

import scripts.common.ingots;

/* Other */
recipes.remove(<item:mystgears:mechanical_dial>);
recipes.addShaped("mechanical_dial", <item:mystgears:mechanical_dial>, [
	[null, <item:embers:tinker_hammer>.reuse(), null],
	[ingots.gold, <item:embers:plate_caminite>, ingots.gold],
	[null, ingots.gold, null],
]);
