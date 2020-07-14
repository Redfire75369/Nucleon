#loader crafttweaker
#priority -0301

import mods.requious.AssemblyRecipe;
import mods.requious.ComponentFace;
import mods.requious.GaugeDirection;
import mods.requious.SlotVisual;

val chemReactor = <assembly:chemical_reactor>;
chemReactor.setItemSlot(2, 2, ComponentFace.all(), 64).setAccess(true, false).setHandAccess(true, true).setGroup("input");
chemReactor.setItemSlot(3, 2, ComponentFace.all(), 64).setAccess(true, false).setHandAccess(true, true).setGroup("input");
chemReactor.setFluidSlot(2, 3, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
chemReactor.setFluidSlot(3, 3, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
chemReactor.setFluidSlot(2, 4, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");
chemReactor.setFluidSlot(3, 4, ComponentFace.all(), 16000).setAccess(true, false).allowBucket(true, false).setGroup("input");

chemReactor.setItemSlot(6, 2, ComponentFace.all(), 64).setAccess(false, true).setHandAccess(false, true).setGroup("output");
chemReactor.setItemSlot(7, 2, ComponentFace.all(), 64).setAccess(false, true).setHandAccess(false, true).setGroup("output");
chemReactor.setFluidSlot(2, 3, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
chemReactor.setFluidSlot(3, 3, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
chemReactor.setFluidSlot(2, 4, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");
chemReactor.setFluidSlot(3, 4, ComponentFace.all(), 16000).setAccess(false, true).allowBucket(false, true).setGroup("output");

chemReactor.setEnergySlot(9, 3, ComponentFace.all(), 1048576).setAccess(true, false).allowBattery(true, false, true).setUnit("fe").setBackground(SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png", 2, 1, 3, 1, GaugeDirection.up(), false)).setGroup("input");
chemReactor.setDurationSlot(4, 3).setVisual(SlotVisual.arrowRight()).setGroup("duration");

chemReactor.setJEIItemSlot(2, 2, "input");
chemReactor.setJEIItemSlot(3, 2, "input");
chemReactor.setJEIFluidSlot(2, 3, "input");
chemReactor.setJEIFluidSlot(3, 3, "input");
chemReactor.setJEIFluidSlot(2, 4, "input");
chemReactor.setJEIFluidSlot(3, 4, "input");

chemReactor.setJEIItemSlot(6, 2, "output");
chemReactor.setJEIItemSlot(7, 2, "output");
chemReactor.setJEIFluidSlot(6, 3, "output");
chemReactor.setJEIFluidSlot(7, 3, "output");
chemReactor.setJEIFluidSlot(6, 4, "output");
chemReactor.setJEIFluidSlot(7, 4, "output");

chemReactor.setJEIEnergySlot(4, 3, "input", SlotVisual.create(1, 1).addPart("requious:textures/gui/assembly_gauges.png", 2, 1));
chemReactor.setJEIDurationSlot(4, 3, "duration", SlotVisual.arrowRight());

var transferItemJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<minecraft:cobblestone>);
}).requireItem("input",<minecraft:cobblestone>);
chemReactor.addRecipe(transferItemJEI);
chemReactor.addJEIRecipe(transferItemJEI);