#loader crafttweaker
#priority -0401

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

global getBucketFromFluid as function(ILiquidStack, string)IItemStack = function(fluid as ILiquidStack, container as string) as IItemStack {
	if (fluid.name == <liquid:water>.name) {
		return <minecraft:water_bucket>;
	} else if (fluid.name == <liquid:lava>.name) {
		return <minecraft:lava_bucket>;
	} else if (fluid.name == <liquid:milk>.name) {
		return <minecraft:milk_bucket>;
	}
	
	val buckets = {
		"bucket": <forge:bucketfilled>.withTag({
			fluidName: fluid.name,
			amount: 1000
		}),
		"cell": <requious:cell>.withTag({
			fluidContent: {
				FluidName: fluid.name,
				Amount: 1000
			}
		}),
		"dynamiccell": <techreborn:dynamiccell>.withTag({
			Fluid: {
				FluidName: fluid.name,
				Amount: 1000
			}
		}),
		"florb": <thermalexpansion:florb>.withTag({
			Fluid: fluid.name
		})
	} as IItemStack[string];
	
	return buckets[container];
};

/*global getBucketFromFluidName as function(string, string)IItemStack = function(fluidName as string, bucket as string) as IItemStack {
	return getBucketFromFluid(game.liquids[fluidName] * 1000, bucket);
};*/