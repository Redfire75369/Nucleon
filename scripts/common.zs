#loader crafttweaker reloadable
#priority 3

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jaopca.JAOPCA;
import mods.jaopca.Material;

static ingot_materials as Material[] = JAOPCA.getMaterialsForType("INGOT");
static ingot_plain_materials as Material[] = JAOPCA.getMaterialsForType("INGOT_PLAIN");
static gem_materials as Material[] = JAOPCA.getMaterialsForType("GEM");
static gem_plain_materials as Material[] = JAOPCA.getMaterialsForType("GEM_PLAIN");
static dust_materials as Material[] = JAOPCA.getMaterialsForType("DUST");
static dust_plain_materials as Material[] = JAOPCA.getMaterialsForType("DUST_PLAIN");

static ores as IOreDictEntry[string] = {};
static ingots as IOreDictEntry[string] = {};
static gems as IOreDictEntry[string] = {};
static nuggets as IOreDictEntry[string] = {};
static blocks as IOreDictEntry[string] = {};
static dusts as IOreDictEntry[string] = {};
static plates as IOreDictEntry[string] = {};

function transformCase(name as string) as string {
	return name[0].toLowerCase() ~ name.substring(1);
}

function std_oredict(material as Material, name as string) {
	nuggets[name] = material.getOreDictEntry("nugget");
	blocks[name] = material.getOreDictEntry("block");
	dusts[name] = material.getOreDictEntry("dust");
	plates[name] = material.getOreDictEntry("plate");
}

for material in ingot_materials {
	val name = transformCase(material.name);
	ores[name] = material.getOreDictEntry("ore");
	ingots[name] = material.getOreDictEntry("ingot");
	std_oredict(material, name);
}
for material in ingot_plain_materials {
	val name = transformCase(material.name);
	ingots[name] = material.getOreDictEntry("ingot");
	std_oredict(material, name);
}

for material in gem_materials {
	val name = transformCase(material.name);
	ores[name] = material.getOreDictEntry("ore");
	gems[name] = material.getOreDictEntry("gem");
	std_oredict(material, name);
}
for material in gem_plain_materials {
	val name = transformCase(material.name);
	gems[name] = material.getOreDictEntry("gem");
	std_oredict(material, name);
}

for material in dust_materials {
	val name = transformCase(material.name);
	ores[name] = material.getOreDictEntry("ore");
	dusts[name] = material.getOreDictEntry("dust");
}
for material in dust_plain_materials {
	val name = transformCase(material.name);
	dusts[name] = material.getOreDictEntry("dust");
}


function get_fluid_container(fluid as ILiquidStack, container as string) as IItemStack {
	if (container == "bucket" && fluid.name == <liquid:water>.name) {
		return <minecraft:water_bucket>;
	} else if (container == "bucket" && fluid.name == <liquid:lava>.name) {
		return <minecraft:lava_bucket>;
	} else if (container == "bucket" && fluid.name == <liquid:milk>.name) {
		return <minecraft:milk_bucket>;
	}

	val fluid_tag as function(int)IData = function (amount as int) as IData {
		return {
			FluidName: fluid.name,
			Amount: amount,
		};
	};

	val containers = {
		"bucket": <forge:bucketfilled>.withTag(fluid_tag(1000)),
		"dynamic_cell": <techreborn:dynamiccell>.withTag(fluid_tag(1000)),
		"gauge_dropper": <mekanism:gaugedropper>.withTag({Fluid: fluid_tag(1000)}),
		"canister": <pressure:canister>.withTag(fluid_tag(64000)),
		"tiny_vial": <vials:vial_16>.withTag({Fluid: fluid_tag(16)}),
		"standard_vial": <vials:vial_144>.withTag({Fluid: fluid_tag(144)}),
		"large_vial": <vials:vial_288>.withTag({Fluid: fluid_tag(288)}),
		"huge_vial": <vials:vial_432>.withTag({Fluid: fluid_tag(432)}),
		"giant_vial": <vials:vial_576>.withTag({Fluid: fluid_tag(576)}),
		"extreme_vial": <vials:vial_1296>.withTag({Fluid: fluid_tag(1296)}),
	} as IItemStack[string];

	return containers[container];
}
