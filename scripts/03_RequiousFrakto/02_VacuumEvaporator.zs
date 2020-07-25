#loader crafttweaker
#priority -0302

import crafttweaker.liquid.ILiquidStack;
import mods.requious.AssemblyRecipe;
import mods.requious.ComponentFace;
import mods.requious.GaugeDirection;
import mods.requious.SlotVisual;

val vacuumEvaporator = <assembly:vacuum_evaporator>;

vacuumEvaporator.setFluidSlot(3, 2, ComponentFace.all(), 64000).setAccess(true, false).allowBucket(true, false).setGroup("input");
vacuumEvaporator.setFluidSlot(5, 2, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");

vacuumEvaporator.setEnergySlot(8, 2, ComponentFace.all(), 131072).setAccess(true, false).allowBattery(true, false, true).setUnit("fe").setBackground(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 2, 1, 3, 1, GaugeDirection.up(), false)).setGroup("input");
vacuumEvaporator.setDurationSlot(4, 2).setVisual(SlotVisual.arrowRight()).setGroup("duration");

vacuumEvaporator.setJEIFluidSlot(3, 2, "input");
vacuumEvaporator.setJEIFluidSlot(5, 2, "output");

//vacuumEvaporator.setJEIEnergySlot(8, 2, "input", SlotVisual.create(1, 1).addPart("requious:textures/gui/assembly_gauges.png", 2, 1));
vacuumEvaporator.setJEIDurationSlot(4, 2, "duration", SlotVisual.arrowRight());

global addVacuumEvaporatorRecipe as function(ILiquidStack, ILiquidStack, int, int)void = function(output as ILiquidStack, input as ILiquidStack, energy as int, ticks as int) as void {
	val vacuumEvaporator = <assembly:vacuum_evaporator>;
	var recipe = AssemblyRecipe.create(function(container) {
		container.addFluidOutput("output", output);
	});
	recipe.requireFluid("input", input);
	recipe.requireEnergy("input", energy);
	recipe.requireDuration("duration", ticks);
	
	vacuumEvaporator.addRecipe(recipe);
	vacuumEvaporator.addJEIRecipe(recipe);
};