#loader crafttweaker
#priority -0605

/*** Mechanical Power Transfer ***/
recipes.remove(<mysticalmechanics:axle_iron>);
recipes.remove(<mysticalmechanics:gearbox_frame>);
recipes.remove(<mysticalmechanics:mergebox_frame>);
mods.rustichromia.Assembler.remove("rustichromia:axle_iron");
mods.rustichromia.Assembler.remove("rustichromia:axle_wood");

mods.rustichromia.Assembler.add("axle_iron", 1, [hashIngot["Iron"] * 3], [<mysticalmechanics:axle_iron> * 2], 10, 1.0/0, 400);
mods.rustichromia.Assembler.add("gearbox_frame", 1, [hashIngot["Iron"] * 4, <embers:archaic_brick> * 4], [<mysticalmechanics:gearbox_frame>], 10, 1.0/0, 400);
