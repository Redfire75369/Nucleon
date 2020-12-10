#loader crafttweaker
#priority -0805

/*** Boiler Fuels ***/
mods.immersivetechnology.Boiler.removeFuel(<liquid:biodiesel>);
mods.immersivetechnology.Boiler.removeFuel(<liquid:gasoline>);
mods.immersivetechnology.Boiler.removeFuel(<liquid:diesel>);

mods.immersivetechnology.Boiler.addFuel(<liquid:hydrogen> * 100, 10, 300);
mods.immersivetechnology.Boiler.addFuel(<liquid:ethanol> * 100, 40, 1300);
mods.immersivetechnology.Boiler.addFuel(<liquid:seed_oil> * 100, 50, 1600);
mods.immersivetechnology.Boiler.addFuel(<liquid:biocrude> * 100, 40, 1000);
mods.immersivetechnology.Boiler.addFuel(<liquid:refined_biofuel> * 100, 60, 2400);
mods.immersivetechnology.Boiler.addFuel(<liquid:biodiesel> * 100, 60, 3000);

/*** Boiler Recipes ***/
mods.immersivetechnology.Boiler.removeRecipe(<liquid:water>);
mods.immersivetechnology.Boiler.removeRecipe(<liquid:distwater>);

mods.immersivetechnology.Boiler.addRecipe(<liquid:preheated_water> * 250, <liquid:preheated_water> * 250, 45);
mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 750, <liquid:preheated_water> * 250, 45);
mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 750, <liquid:distwater> * 250, 60);