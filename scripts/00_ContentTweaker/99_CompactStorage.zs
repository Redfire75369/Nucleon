#loader contenttweaker
#priority -0099

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*** Backpacks ***/
val leather = VanillaFactory.createItem("reinforced_leather") as Item;
leather.creativeTab = <creativetab:other>;
leather.register();

val cable = VanillaFactory.createItem("reinforced_string") as Item;
cable.creativeTab = <creativetab:other>;
cable.register();

/*** Chests ***/
val chest = VanillaFactory.createItem("compressed_chest") as Item;
chest.creativeTab = <creativetab:other>;
chest.register();

val bars = VanillaFactory.createItem("steel_bars") as Item;
bars.creativeTab = <creativetab:other>;
bars.register();

val glue = VanillaFactory.createItem("wood_glue") as Item;
glue.creativeTab = <creativetab:other>;
glue.register();