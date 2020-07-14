#loader contenttweaker
#priority -0006

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

val liquids = [
	"ashen_stone",
	"stone"
] as string[];
val liquidColours = [
	Color.fromHex("b6b6b6"),
	Color.fromHex("232624")
] as Color[];

for i, liquid in liquids {
	liquidBuilder.addLiquid(liquid, liquidColours[i]);
}

/*** Acids ***/
val acidList = [
	"hydrochloric",
	"hydrofluoric",
	"nitric",
	"sulfuric",
	"sulfurous"
] as string[];
val acidColours = [
	[Color.fromHex("934268"), Color.fromHex("934268")],
	[Color.fromHex("426893"), Color.fromHex("426893")],
	[Color.fromHex("689342"), Color.fromHex("689342")],
	[Color.fromHex("7d4032"), Color.fromHex("7d4032")],
	[Color.fromHex("713c2d"), Color.fromHex("713c2d")]
] as Color[][];

for i, acid in acidList {
	liquidBuilder.addLiquid("diluted_" ~ acid ~ "_acid", acidColours[i][0]);
	liquidBuilder.addLiquid("concentrated_" ~ acid ~ "_acid", acidColours[i][1]);
}