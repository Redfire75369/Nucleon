#loader contenttweaker
#priority -0003

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
