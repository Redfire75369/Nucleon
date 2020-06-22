#loader contenttweaker
#priority -0099

import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/*** Backpacks ***/
val leather = VanillaFactory.createItem("reinforced_leather") as Item;
leather.creativeTab = <creativetab:other>;
leather.register();

val wire = VanillaFactory.createItem("wire_refined_iron") as Item;
wire.creativeTab = <creativetab:other>;
wire.register();

/*** Chests ***/
val chest = VanillaFactory.createBlock("compressed_chest", <blockmaterial:wood>) as Block;
chest.creativeTab = <creativetab:other>;
chest.toolClass = "axe";
chest.register();

val bars = VanillaFactory.createItem("steel_bars") as Item;
bars.creativeTab = <creativetab:other>;
bars.register();

val glue = VanillaFactory.createItem("wood_glue") as Item;
glue.creativeTab = <creativetab:other>;
glue.register();