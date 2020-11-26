#loader contenttweaker
#priority -0003

import mods.contenttweaker.Color;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Part;
import mods.contenttweaker.VanillaFactory;

/*** Coins ***/
var variantList = ["Chemist", "Farming", "Environmentalist", "Hunter", "Magician", "Nuclear", "Technician"] as string[];
var tierList = ["coin_bronze", "coin_silver", "coin_gold", "coin_platinum"] as string[];

for tier in tierList {
	MaterialSystem.getPartBuilder().setName(tier).setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).setHasOverlay(true).build();
}

for variant in variantList {
	val mat = MaterialSystem.getMaterialBuilder().setName(variant).setColor(0xffffff).build() as Material;
	mat.registerParts(tierList);
}

/*** Fuels ***/
val depletionList = ["", "depleted_"] as string[];
val typeList = ["einsteinium", "fermium", "tenerium", "impedium", "desdirium", "myterium", "reperium", "unorbtium"] as string[];
variantList = ["", "_ni", "_ox", "_za"] as string[];
tierList = ["low", "high"] as string[];

/*val colors = {
	full: {
		tenerium: {
			normal: {
				low: 0,
				high: 0
			}
		}
	},
	depleted: {
		tenerium: {
			normal: {
				low: 0,
				high: 0
			}
		}
	}
} as string[string[string[string[string]]]];*/

for depletion in depletionList {
	var temp1 as string;
	if (depletion == "") {
		temp1 = "full" as string;
	} else {
		temp1 = "depleted" as string;
	}

	for type in typeList {
		for tier in tierList {
			for variant in variantList {
				var temp2 as string;
				if (variant == "") {
					temp2 = "normal" as string;
				} else if (variant == "ox") {
					temp2 = "oxide" as string;
				} else if (variant == "ni") {
					temp2 = "nitride" as string;
				} else {
					temp2 = "zircaloy" as string;
				}
				
				if (!(depletion == "depleted_" && variant == "")) {
					val fuel = VanillaFactory.createItem(depletion ~ type ~ "_" ~ tier ~ variant) as Item;
					fuel.creativeTab = <creativetab:fuels>;
					/*fuel.itemColorSupplier = function(item as IItemStack, tintIndex as int) as Color {
						return Color.fromHex(colors[temp1][type][tier][temp2]);
					} as IItemColorSupplier;*/
					fuel.register();
				}
			}
		}
	}
}