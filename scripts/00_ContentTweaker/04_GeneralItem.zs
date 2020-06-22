#loader contenttweaker
#priority -0004

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*** Crafting Materials ***/
val craftMats = [
	"blue_paper",
	"low_grade_charcoal",
	"medium_grade_charcoal",
	"mech_archaic_circuit",
	"sealant",
	"shoddy_piston",
	"reinforced_stone_gear",
	"wood_pile",
	"wood_coil"
] as string[];

for craftMat in craftMats {
	item.addItem(craftMat);
}

/*** OreDictionary Unification ***/
val oreDictUnifs = [
	"dust_bedrock",
	"dust_lapis",
	"gem_charged_red_garnet",
	"gem_charged_sapphire",
	"gem_charged_yellow_garnet",
	"nugget_ender_pearl"
] as string[];

for oreDictUnif in oreDictUnifs {
	item.addItem(oreDictUnif);
}

/*** Items With Durability ***/
val file = VanillaFactory.createItem("file") as Item;
file.creativeTab = <creativetab:other>;
file.maxDamage = 255;
file.maxStackSize = 1;
file.register();

val sandpaper = VanillaFactory.createItem("sandpaper") as Item;
sandpaper.creativeTab = <creativetab:other>;
sandpaper.maxDamage = 255;
sandpaper.maxStackSize = 1;
sandpaper.register();

