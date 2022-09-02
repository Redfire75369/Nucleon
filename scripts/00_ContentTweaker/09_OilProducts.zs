#loader contenttweaker
#priority -0009

import mods.contenttweaker.Color;

/*** Component Oils ***/
var componentOils = [
	"heavy_oil",
	"light_oil",
	"refinery_gas",
	"sulfuric_heavy_oil",
	"sulfuric_light_oil",
	"sulfuric_naphtha",
	"sulfuric_refinery_gas"
] as string[];
val oilColours = [
] as Color[];

for componentOil in componentOils {
	liquidBuilder.addLiquid(componentOil, Color.fromInt(0));
}

/*** Alkanes/Alkenes ***/
val prefixes = [
	"meth",
	"eth",
	"prop",
	"but",
	"pent",
	"hex",
	"hept",
	"oct",
	"non",
	"dec",
	"undec",
	"duodec",
	"tredec",
	"tetradec",
	"pentadec",
	"hexadec"
] as string[];
val suffixes = [
	"ane",
	"ene"
] as string[];

val alkColours = [
	[],
	[]
] as Color[][];

val alkDensities = [
	[1, 1000],
	[1, 1000],
	[2, 1000],
	[2, 1000],
	[626, 1000],
	[659, 1000],
	[684, 1000],
	[703, 1000],
	[718, 1000],
	[730, 1000],
	[740, 1000],
	[749, 1000],
	[756, 1000],
	[763, 1000],
	[769, 1000],
	[773, 1000]
] as int[][];

for i, prefix in prefixes {
	liquidBuilder.addLiquid(prefix + suffixes[0], Color.fromInt(0), 295, alkDensities[i][0]);
	liquidBuilder.addLiquid(prefix + suffixes[1], Color.fromInt(0), 295, alkDensities[i][1]);
}

/*** Rubbers/Plastics ***/
val plastics = [
	"polyethylene",
	"polytetrafluoroethylene",
	"polybenzimidazole",
	"rubber",
	"silicone_rubber"
] as string[];
val plasticColours = [
	Color.fromHex("64827d"),
	Color.fromHex("7aa28f"),
	Color.fromHex("c7b988"),
	Color.fromHex("161415"),
	Color.fromHex("c5c5c5")
] as Color[];

for i, plastic in plastics {
	liquidBuilder.addLiquid(plastic, plasticColours[i]);
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
	liquidBuilder.addLiquid(other, Color.fromInt(0));
}