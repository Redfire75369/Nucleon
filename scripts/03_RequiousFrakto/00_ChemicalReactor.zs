#loader crafttweaker
#priority -0300

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.requious.AssemblyRecipe;
import mods.requious.ComponentFace;
import mods.requious.GaugeDirection;
import mods.requious.SlotVisual;

val chemReactor = <assembly:chemical_reactor>;

chemReactor.setItemSlot(2, 1, ComponentFace.all(), 64).setAccess(true, false).setHandAccess(true, true).setGroup("input");
chemReactor.setItemSlot(3, 1, ComponentFace.all(), 64).setAccess(true, false).setHandAccess(true, true).setGroup("input");
chemReactor.setFluidSlot(2, 2, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
chemReactor.setFluidSlot(3, 2, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
chemReactor.setFluidSlot(2, 3, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
chemReactor.setFluidSlot(3, 3, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");

chemReactor.setItemSlot(5, 1, ComponentFace.all(), 64).setAccess(false, true).setHandAccess(false, true).setGroup("output");
chemReactor.setItemSlot(6, 1, ComponentFace.all(), 64).setAccess(false, true).setHandAccess(false, true).setGroup("output");
chemReactor.setFluidSlot(5, 2, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
chemReactor.setFluidSlot(6, 2, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
chemReactor.setFluidSlot(5, 3, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
chemReactor.setFluidSlot(6, 3, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");

chemReactor.setEnergySlot(8, 2, ComponentFace.all(), 1048576).setAccess(true, false).allowBattery(true, false, true).setUnit("fe").setBackground(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 0, 0, 1, 0, GaugeDirection.up(), false)).setGroup("input");
chemReactor.setDurationSlot(4, 2).setVisual(SlotVisual.arrowRight()).setGroup("duration");

chemReactor.setJEIItemSlot(2, 1, "input");
chemReactor.setJEIItemSlot(3, 1, "input");
chemReactor.setJEIFluidSlot(2, 2, "input");
chemReactor.setJEIFluidSlot(3, 2, "input");
chemReactor.setJEIFluidSlot(2, 3, "input");
chemReactor.setJEIFluidSlot(3, 3, "input");

chemReactor.setJEIItemSlot(5, 1, "output");
chemReactor.setJEIItemSlot(6, 1, "output");
chemReactor.setJEIFluidSlot(5, 2, "output");
chemReactor.setJEIFluidSlot(6, 2, "output");
chemReactor.setJEIFluidSlot(5, 3, "output");
chemReactor.setJEIFluidSlot(6, 3, "output");

chemReactor.setJEIEnergySlot(8, 2, "input", "fe");
chemReactor.setJEIDurationSlot(4, 2, "duration", SlotVisual.arrowRight());

global addChemicalReactorRecipe as function(IItemStack[], ILiquidStack[], IIngredient[], ILiquidStack[], int, int)void = function(outputs as IItemStack[], fluidOutputs as ILiquidStack[], inputs as IIngredient[], fluidInputs as ILiquidStack[], energy as int, ticks as int) as void {
	val chemicalReactor = <assembly:chemical_reactor>;
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

	chemicalReactor.addRecipe(recipe);
	chemicalReactor.addJEIRecipe(recipe);
};