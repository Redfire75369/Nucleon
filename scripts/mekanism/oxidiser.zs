#loader crafttweaker reloadable
#priority 0

import mods.mekanism.chemical.oxidizer as Oxidiser;

Oxidiser.removeAllRecipes();

Oxidiser.addRecipe(<item:nuclearcraft:dust:6>, <gas:lithium> * 100);
Oxidiser.addRecipe(<item:qmd:chemical_dust:3>, <gas:brine> * 15);
Oxidiser.addRecipe(<item:techreborn:dust:52>, <gas:sulfurdioxide> * 100);
