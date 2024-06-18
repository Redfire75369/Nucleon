#loader crafttweaker reloadable
#priority -0200

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

global get_fluid_container as function(ILiquidStack, string)IItemStack = function (fluid as ILiquidStack, container as string) as IItemStack {
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

	val buckets = {
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

	return buckets[container];
};
