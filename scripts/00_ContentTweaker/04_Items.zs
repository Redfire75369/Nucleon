#loader contenttweaker
#priority -0004

val items = [
	"copper_thread",
	"grinding_head_iron",
	"grinding_head_refined_iron",
	"mech_archaic_circuit",
	"poor_charcoal",
	"sealant",
	"shoddy_piston",
	"reinforced_leather",
	"reinforced_stone_gear",
	"refined_iron_bars",
	"wire_refined_iron",
	"wood_pile",
] as string[];

for item in items {
	create_item(item);
}
