#loader crafttweaker reloadable
#priority 3

import mods.jei.JEI.addDescription;
import mods.jei.JEI.hide;
import mods.jei.JEI.hideCategory;

hideCategory("appliedenergistics2.inscriber");
hideCategory("dynamistics:package_process");
hideCategory("dynamistics:encoder_processing");
hideCategory("dynamistics:unpackaging");
hideCategory("dynamistics:packaging");

hideCategory("nuclearcraft_salt_fission");
hideCategory("nuclearcraft_pebble_fission");
hideCategory("nuclearcraft_coolant_heater");
hideCategory("nuclearcraft_heat_exchanger");
hideCategory("nuclearcraft_condenser");

for item in loadedMods["appliedenergistics2"].items {
	if (item.definition.id == "appliedenergistics2:facade") {
		if (item.tag.item.asString() == "minecraft:stone" && item.tag.damage.asInt() == 0) {
			addDescription(item, "Facades can be crafted from most blocks, and are hidden to remove clutter.");
		} else {
			hide(item);
		}
	}
}
