#loader crafttweaker
#priority -0604

/*** Boiler Fuels ***/
mods.immersivetechnology.Boiler.removeFuel(<liquid:biodiesel>);
mods.immersivetechnology.Boiler.removeFuel(<liquid:gasoline>);
mods.immersivetechnology.Boiler.removeFuel(<liquid:diesel>);

mods.immersivetechnology.Boiler.addFuel(<liquid:hydrogen> * 10, 1, 30);
mods.immersivetechnology.Boiler.addFuel(<liquid:ethanol> * 10, 4, 130);
mods.immersivetechnology.Boiler.addFuel(<liquid:seed_oil> * 10, 5, 160);
mods.immersivetechnology.Boiler.addFuel(<liquid:biocrude> * 10, 4, 100);
mods.immersivetechnology.Boiler.addFuel(<liquid:grassoline> * 10, 6, 240);
mods.immersivetechnology.Boiler.addFuel(<liquid:biodiesel> * 10, 6, 300);

/*** Boiler Recipes ***/
mods.immersivetechnology.Boiler.removeRecipe(<liquid:steam>);

mods.immersivetechnology.Boiler.addRecipe(<liquid:preheated_water> * 250, <liquid:preheated_water> * 250, 45);
mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 750, <liquid:preheated_water> * 250, 45);
mods.immersivetechnology.Boiler.addRecipe(<liquid:steam> * 750, <liquid:distwater> * 250, 60);