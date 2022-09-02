#loader contenttweaker
#priority -0001

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;

val chargedIron = MaterialSystem.getMaterialBuilder().setName("Charged Iron").setColor(0xffffff).build();
chargedIron.registerPart("ingot");

val terne = MaterialSystem.getMaterialBuilder().setName("Terne").setColor(0xffffff).build();
terne.registerPart("ingot");