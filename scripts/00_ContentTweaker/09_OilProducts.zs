#loader contenttweaker
#priority -0009

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

/*** Component Oils ***/
var componentOils = [
	"heavy_oil",
	"light_oil",
	"sulfuric_heavy_oil",
	"sulfuric_light_oil",
	"sulfuric_naphtha",
] as string[];

for componentOil in componentOils {
	fluid.addLiquid(componentOil, Color.fromInt(0));
}

/*** Rubbers/Plastics ***/
val plastics = [
	"polyethylene",
	"polytetrafluoroethylene",
	"polybenzimidazole",
	"rubber",
	"silicone_rubber"
] as string[];

for plastic in plastics {
	fluid.addLiquid(plastic, Color.fromInt(0));
}

/*** Others ***/
val others = [
	"cetane_diesel",
	"chloroform",
	"hydrogen_sulfide",
	"nitrotoluene",
	"toluene"
] as string[];

for other in others {
	fluid.addLiquid(other, Color.fromInt(0));
}