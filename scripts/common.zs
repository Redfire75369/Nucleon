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
static rods as IOreDictEntry[string] = {};
static gears as IOreDictEntry[string] = {
	bronze: <ore:gearBronze>,
	copper: <ore:gearCopper>,
	iron: <ore:gearIron>,
	stone: <ore:gearStone>,
	wood: <ore:gearWood>,
};

function transformCase(name as string) as string {
	return name[0].toLowerCase() ~ name.substring(1);
}

function add_to_map(map as IOreDictEntry[string], name as string, material as Material, prefix as string) {
	if (!isNull(material.getItemStack(prefix))) {
		map[name] = material.getOreDictEntry(prefix);
	}
}

function std_oredict(material as Material, name as string) {
	add_to_map(nuggets, name, material, "nugget");
	add_to_map(blocks, name, material, "block");
	add_to_map(dusts, name, material, "dust");
	add_to_map(plates, name, material, "plate");
	add_to_map(rods, name, material, "rod");
}

for material in ingot_materials {
	val name = transformCase(material.name);
	add_to_map(ores, name, material, "ore");
	add_to_map(ingots, name, material, "ingot");
	std_oredict(material, name);
}

for material in ingot_plain_materials {
	val name = transformCase(material.name);
	add_to_map(ingots, name, material, "ingot");
	std_oredict(material, name);
}

for material in gem_materials {
	val name = transformCase(material.name);
	add_to_map(ores, name, material, "ore");
	add_to_map(gems, name, material, "gem");
	std_oredict(material, name);
}
for material in gem_plain_materials {
	val name = transformCase(material.name);
	add_to_map(gems, name, material, "gem");
	std_oredict(material, name);
}

for material in dust_materials {
	val name = transformCase(material.name);
	add_to_map(ores, name, material, "ore");
	add_to_map(dusts, name, material, "dust");
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
