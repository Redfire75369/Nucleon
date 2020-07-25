#loader crafttweaker
#priority -0302

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.requious.AssemblyRecipe;
import mods.requious.ComponentFace;
import mods.requious.GaugeDirection;
import mods.requious.SlotVisual;

val mixer = <assembly:mixer>;

mixer.setItemSlot(1, 1, ComponentFace.all(), 64).setAccess(true, false).setHandAccess(true, true).setGroup("input");
mixer.setItemSlot(2, 1, ComponentFace.all(), 64).setAccess(true, false).setHandAccess(true, true).setGroup("input");
mixer.setItemSlot(3, 1, ComponentFace.all(), 64).setAccess(true, false).setHandAccess(true, true).setGroup("input");
mixer.setFluidSlot(1, 2, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
mixer.setFluidSlot(2, 2, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
mixer.setFluidSlot(3, 2, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");

mixer.setItemSlot(5, 1, ComponentFace.all(), 64).setAccess(false, true).setHandAccess(true, true).setGroup("output");
mixer.setItemSlot(6, 1, ComponentFace.all(), 64).setAccess(false, true).setHandAccess(true, true).setGroup("output");
mixer.setItemSlot(7, 1, ComponentFace.all(), 64).setAccess(false, true).setHandAccess(true, true).setGroup("output");
mixer.setFluidSlot(5, 2, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
mixer.setFluidSlot(6, 2, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
mixer.setFluidSlot(7, 2, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");

mixer.setEnergySlot(8, 2, ComponentFace.all(), 524288).setAccess(true, false).allowBattery(true, false, true).setUnit("fe").setBackground(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 2, 1, 3, 1, GaugeDirection.up(), false)).setGroup("input");
mixer.setDurationSlot(4, 2).setVisual(SlotVisual.arrowRight()).setGroup("duration");

mixer.setJEIItemSlot(1, 1, "input");
mixer.setJEIItemSlot(2, 1, "input");
mixer.setJEIItemSlot(3, 1, "input");
mixer.setJEIFluidSlot(1, 2, "input");
mixer.setJEIFluidSlot(2, 2, "input");
mixer.setJEIFluidSlot(3, 2, "input");

mixer.setJEIItemSlot(5, 1, "output");
mixer.setJEIItemSlot(6, 1, "output");
mixer.setJEIItemSlot(7, 1, "output");
mixer.setJEIFluidSlot(5, 2, "output");
mixer.setJEIFluidSlot(6, 2, "output");
mixer.setJEIFluidSlot(7, 2, "output");

//mixer.setJEIEnergySlot(8, 2, "input", SlotVisual.create(1, 1).addPart("requious:textures/gui/assembly_gauges.png", 2, 1));
mixer.setJEIDurationSlot(4, 2, "duration", SlotVisual.arrowRight());

global addMixerRecipe as function(IItemStack[], ILiquidStack[], IIngredient[], ILiquidStack[], int, int)void = function(outputs as IItemStack[], fluidOutputs as ILiquidStack[], inputs as IIngredient[], fluidInputs as ILiquidStack[], energy as int, ticks as int) as void {
	val mixer = <assembly:mixer>;
	var recipe = AssemblyRecipe.create(function(container) {
		if (outputs.length != 0) {
			for output in outputs {
				container.addItemOutput("output", output);
			}
		}
		if (fluidOutputs.length != 0) {
			for fluidOutput in fluidOutputs {
				container.addFluidOutput("output", fluidOutput);
			}
		}
	});
	if (inputs.length != 0) {
		for input in inputs {
			recipe.requireItem("input", input);
		}
	}
	if (fluidInputs.length != 0) {
		for fluidInput in fluidInputs {
			recipe.requireFluid("input", fluidInput);
		}
	}
	recipe.requireEnergy("input", energy);
	recipe.requireDuration("duration", ticks);
	mixer.addRecipe(recipe);
	mixer.addJEIRecipe(recipe);
};