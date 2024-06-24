#loader contenttweaker
#priority 0

import scripts.contenttweaker.common.create_item;

val items = [
	"copper_thread",
	"grinding_head_iron",
	"grinding_head_refined_iron",
	"mech_archaic_circuit",
	"sealant",
	"shoddy_piston",
	"reinforced_leather",
	"reinforced_stone_gear",
	"refined_iron_bars",
	"wire_refined_iron",
] as string[];

for item in items {
	create_item(item);
}

/* Mekanism Compressed Infuse Types */
val mekanism_types = [
	"dragon_breath",
	"ember",
	"lapis",
	"silicon",
] as string[];

for type in mekanism_types {
	create_item("compressed_" ~ type);
}

/* Applied Energistics 2 Storage Circuits */
val ae2_storage_types = ["item", "fluid", "gas"] as string[];
for type in ae2_storage_types {
	for tier in 0 .. 4 {
		create_item(type ~ "_circuit_tier" ~ (tier + 1));
	}
}
