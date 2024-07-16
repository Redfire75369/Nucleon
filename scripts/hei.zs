#loader crafttweaker reloadable
#priority 3

import mods.jei.JEI.addDescription;
import mods.jei.JEI.addItem;
import mods.jei.JEI.hide;
import mods.jei.JEI.hideCategory;
import mods.jei.JEI.removeAndHide;

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

for facade in <item:appliedenergistics2:facade>.definition.subItems {
	hide(facade);
}

val stone_facade = <item:appliedenergistics2:facade>.withTag({
	item: "minecraft:stone",
	damage: 0,
});
stone_facade.addTooltip(format.darkAqua("Facades can be crafted from most blocks, and are hidden to remove clutter."));
addItem(stone_facade);

removeAndHide(<item:chambers:atom_chamber>);
removeAndHide(<item:chambers:big_compact_chamber>);
removeAndHide(<item:chambers:compact_chamber>);
removeAndHide(<item:chambers:compost_chamber>);
removeAndHide(<item:chambers:empowerer_chamber>);
removeAndHide(<item:chambers:enchant_chamber>);
removeAndHide(<item:chambers:fluid_chamber>);
removeAndHide(<item:chambers:fusion_chamber>);

hide(<item:woot:fakemanual>);
