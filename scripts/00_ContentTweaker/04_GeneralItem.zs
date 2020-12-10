#loader contenttweaker
#priority -0004

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*** Material Acquisition ***/
val oreChunks = [
	"compacted_ore_chunk_pyrrhotite",
	"purified_ore_chunk_pyrrhotite",
	"purified_compound_invar",
	"crystal_hydrated_silver"
] as string[];

for oreChunk in oreChunks {
	itemBuilder.addItem(oreChunk);
}

/*** Crafting Materials ***/
val craftMats = [
	"blue_paper",
	"copper_thread",
	"grinding_head_iron",
	"grinding_head_refined_iron",
	"low_grade_charcoal",
	"medium_grade_charcoal",
	"mech_archaic_circuit",
	"mold_flat",
	"sealant",
	"shoddy_piston",
	"reinforced_stone_gear",
	"wood_pile",
	"wood_coil"
] as string[];

for craftMat in craftMats {
	itemBuilder.addItem(craftMat);
}

/*** Glue Processing Chain ***/
val glueList = [
	"hide_stock",
	"swollen_hide_stock",
	"fish_stock",
	"calciated_fish_stock",
	"swollen_fish_stock",
	"bone_stock",
	"bottle_egg_mixture"
] as string[];

for glueMat in glueList {
	itemBuilder.addItem(glueMat);
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
	itemBuilder.addItem(oreDictUnif);
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
