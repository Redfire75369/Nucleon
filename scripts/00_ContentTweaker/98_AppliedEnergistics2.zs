#loader contenttweaker
#priority -0098

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*** Item/Fluid Circuits ***/
val typeList = ["item", "fluid"] as string[];
val tiers = 4 as int;

for type in typeList {
	for tier in 1 to tiers {
		val circuit = VanillaFactory.createItem(type ~ "circuit_tier" ~ tier);
		circuit.creativeTab = <creativetab:other> as CreativeTab;
		circuit.register();
	}
}
