#loader contenttweaker
#priority -0006

import mods.contenttweaker.Color;

val liquids = {
	"ashen_stone": Color.fromHex("b6b6b6"),
	"stone": Color.fromHex("232624")
} as Color[string];

for liquid, liquidColour in liquids {
	liquidBuilder.addLiquid(liquid, liquidColour);
}

/*** Acids ***/
val acidList = [
	"ethanoic",
	"hydrochloric",
	"hydrofluoric",
	"nitric",
	"sulfuric",
	"sulfurous"
] as string[];
val acidColours = [
	[Color.fromHex("aaaaaa"), Color.fromHex("aaaaaa")],
	[Color.fromHex("934268"), Color.fromHex("934268")],
	[Color.fromHex("426893"), Color.fromHex("426893")],
	[Color.fromHex("689342"), Color.fromHex("689342")],
	[Color.fromHex("7d4032"), Color.fromHex("7d4032")],
	[Color.fromHex("713c2d"), Color.fromHex("713c2d")]
] as Color[][];


liquidBuilder.addLiquid("ethanoic_acid", Color.fromHex("aaaaaa"));
liquidBuilder.addLiquid("phosphoric_acid", Color.fromHex("000000"));
liquidBuilder.addLiquid("sulfurous_acid", Color.fromHex("713c2d"));

for i, acid in acidList {
	liquidBuilder.addLiquid("diluted_" ~ acid ~ "_acid", acidColours[i][0]);
	liquidBuilder.addLiquid("concentrated_" ~ acid ~ "_acid", acidColours[i][1]);
}

/*** Glue Processing Chain ***/
val glueList = {
	"limewater": Color.fromHex("c3a1b4"),
	"glue_liquor": Color.fromHex("b983bc"),
	"egg_mixture": Color.fromHex("ffe7a2"),
	"egg_yolk": Color.fromHex("ffcc5f"),
	"egg_albumin": Color.fromHex("fff5c3"),
	"weak_glue": Color.fromHex("fff0b8"),
	"glue": Color.fromHex("ffda80"),
} as Color[string];

for glueMat, glueMatColour in glueList {
	liquidBuilder.addLiquid(glueMat, glueMatColour);
}
	