#loader contenttweaker
#priority -0006

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var typeList = ["tenerium", "impedium", "desdirium", "myterium", "reperium", "unorbtium"];
var stateList = ["", "_nitride", "_oxide", "_zirconium_alloy"];
var enrichList = ["low_enriched", "high_enriched"];
var depletionList = ["", "_depleted"];

var isotopes = [] as Item[];
var fuels = [] as Item[];

for type in typeList {
	for state in stateList {
		isotopes += VanillaFactory.createItem(type ~ state) as Item;
	}
	for enrich in enrichList {
		for depletion in depletionList {
			fuels += VanillaFactory.createItem("fuel_" ~ type ~ "_" ~ enrich ~ depletion) as Item;
		}
	}
}

for isotope in isotopes {
	isotope.creativeTab = <creativetab:fuels>;
	isotope.register();
}
for fuel in fuels {
	fuel.creativeTab = <creativetab:fuels>;
	fuel.register();
}