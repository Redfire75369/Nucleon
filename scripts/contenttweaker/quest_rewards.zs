#loader contenttweaker
#priority 0

import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;

/* Quest Coins */
val variants = ["Chemist", "Farming", "Environmentalist", "Hunter", "Magician", "Nuclear", "Technician"] as string[];
var materials = [] as Material[];
for variant in variants {
	materials += MaterialSystem.getMaterialBuilder().setName(variant).setColor(0xffffff).build();
}

val tiers = ["bronze", "silver", "gold", "platinum"] as string[];
val itemPartType = MaterialSystem.getPartType("item");
for tier in tiers {
	val name = "coin_" + tier;
	val oreName = "coin" + tier[0].toUpperCase() ~ tier.substring(1);
	val part = MaterialSystem.getPartBuilder().setName(name).setOreDictName(oreName).setPartType(itemPartType).setHasOverlay(true).build();
	part.registerToMaterials(materials);
}

