#loader contenttweaker
#priority -0001

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;

val terne = MaterialSystem.getMaterialBuilder().setName("Terne").setColor(0xffffff).build();
terne.registerPart("ingot");