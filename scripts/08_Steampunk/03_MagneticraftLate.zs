#loader crafttweaker
#priority -0803

recipes.remove(<magneticraft:gasification_unit>);

recipes.remove(<magneticraft:electric_chainsaw>);
recipes.remove(<magneticraft:electric_drill>);
recipes.remove(<magneticraft:electric_piston>);

/*** Computers ***/
recipes.remove(<magneticraft:computer>);
recipes.remove(<magneticraft:mining_robot>);
for meta in 0 to 7 {
	recipes.remove(itemUtils.getItem("magneticraft:floppy_disk", meta));
}
