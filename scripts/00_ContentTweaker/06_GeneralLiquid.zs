#loader contenttweaker
#priority -0006

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

val liquids = [
	"ashen_stone",
	"stone"
] as string[];

for liquid in liquids {
	fluid.addLiquid(liquid, Color.fromInt(0));
}

/*** Acids ***/
val acidList = ["hydrochloric", "hydrofluoric", "nitric", "sulfuric"] as string[];

for acid in acidList {
	fluid.addLiquid("diluted_" ~ acid ~ "_acid", Color.fromInt(0));
	fluid.addLiquid("concentrated_" ~ acid ~ "_acid", Color.fromInt(0));
}