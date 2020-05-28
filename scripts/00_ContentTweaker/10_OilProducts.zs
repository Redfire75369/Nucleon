#loader contenttweaker
#priority -0006

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

/*** Component Oils ***/
val heavyOil = VanillaFactory.createFluid("heavy_oil", Color.fromInt(0));
heavyOil.temperature = 295;
heavyOil.register();

val lightOil = VanillaFactory.createFluid("light_oil", Color.fromInt(0));
lightOil.temperature = 295;
lightOil.register();

val sulfuricHeavyOil = VanillaFactory.createFluid("sulfuric_heavy_oil", Color.fromInt(0));
sulfuricHeavyOil.temperature = 295;
sulfuricHeavyOil.register();

val sulfuricLightOil = VanillaFactory.createFluid("sulfuric_light_oil", Color.fromInt(0));
sulfuricLightOil.temperature = 295;
sulfuricLightOil.register();

/*** Rubbers/Plastics ***/
val polyethylene = VanillaFactory.createFluid("polyethylene", Color.fromInt(0));
polyethylene.temperature = 295;
polyethylene.register();

val polytetrafluoroethylene = VanillaFactory.createFluid("polytetrafluoroethylene", Color.fromInt(0));
polytetrafluoroethylene.temperature = 295;
polytetrafluoroethylene.register();

val rubber = VanillaFactory.createFluid("rubber", Color.fromInt(0));
rubber.temperature = 555;
rubber.register();

val siliconeRubber = VanillaFactory.createFluid("silicone_rubber", Color.fromInt(0));
siliconeRubber.temperature = 610;
siliconeRubber.register();

/*** Others ***/
val cetaneDiesel = VanillaFactory.createFluid("cetane_diesel", Color.fromInt(0));
cetaneDiesel.temperature = 295;
cetaneDiesel.register();

val hydrogenSulfide = VanillaFactory.createFluid("hydrogen_sulfide", Color.fromInt(0));
hydrogenSulfide.temperature = 295;
hydrogenSulfide.register();

val nitrotoluene = VanillaFactory.createFluid("nitrotoluene", Color.fromInt(0));
nitrotoluene.temperature = 295;
nitrotoluene.register();

val toluene = VanillaFactory.createFluid("toluene", Color.fromInt(0));
toluene.temperature = 295;
toluene.register();