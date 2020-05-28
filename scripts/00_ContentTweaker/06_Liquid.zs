#loader contenttweaker
#priority -0006

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

val chlorine = VanillaFactory.createFluid("chlorine", Color.fromInt(0));
chlorine.temperature = 295;
chlorine.register();

/*** Acids ***/
val acidList = ["hydrochloric", "hydrofluoric", "nitric", "sulfuric"] as string[];

for acid in acidList {
	val dilute = VanillaFactory.createFluid("diluted_" ~ acid ~ "_acid", Color.fromInt(0));
	val concentrate = VanillaFactory.createFluid("concentrated_" ~ acid ~ "_acid", Color.fromInt(0));
	
	dilute.temperature = 295;
	concentrate.temperature = 295;
	
	dilute.register;
	concentrate.register;
}