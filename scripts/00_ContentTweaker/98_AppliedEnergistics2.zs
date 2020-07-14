#loader contenttweaker
#priority -0098

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*** Item/Fluid Circuits ***/
val tiersItem = 4 as int;
val tiersFluid = 3 as int;
val tiersGas = 4 as int;

for tier in 1 to (tiersItem + 1) {
	itemBuilder.addItem("item_circuit_tier" ~ tier);
}
for tier in 1 to (tiersFluid + 1) {
	itemBuilder.addItem("fluid_circuit_tier" ~ tier);
}
for tier in 1 to (tiersGas + 1) {
	itemBuilder.addItem("gas_circuit_tier" ~ tier);
}