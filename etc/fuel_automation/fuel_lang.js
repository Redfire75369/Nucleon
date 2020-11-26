let depletionList = ["", "depleted_"];
let typeList = ["einsteinium", "fermium", "tenerium", "impedium", "desdirium", "myterium", "reperium", "unorbtium"];
let variantList = ["", "_ni", "_ox", "_za"];
let tierList = ["low", "high"];


function properCase(str) {
	return str[0].toUpperCase() + str.substring(1);
}

let result = ""
for (const depletion in depletionList) {
	for (const type in typeList) {
		for (const tier in tierList) {
			for (const variant in variantList) {
				const name = depletionList[depletion] + typeList[type] + "_" + tierList[tier] + variantList[variant];
				if (depletionList[depletion] === "depleted_") {
					if (variantList[variant] === "") {
						continue;
					}
					result += "item.contenttweaker." + name + ".name=Depleted " + tierList[tier][0].toUpperCase() + "E" + typeList[type][0].toUpperCase() + "-666";
				} else {
					result += "item.contenttweaker." + name + ".name=" + tierList[tier][0].toUpperCase() + "E" + typeList[type][0].toUpperCase() + "-666";
				}
				switch(variantList[variant]) {
					case "":
						result += " Fuel Pellet\n";
						break;
					case "_ni":
						result += " Nitride Fuel Pellet\n";
						break;
					case "_ox":
						result += " Oxide Fuel Pellet\n";
						break;
					case "_za":
						result += "-Zirconium Alloy Fuel Pellet\n";
						break;
				}
			}
		}
	}
}

console.log(result);
