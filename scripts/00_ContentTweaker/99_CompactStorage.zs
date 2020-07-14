#loader contenttweaker
#priority -0099

import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;

/*** Backpacks ***/
itemBuilder.addItem("reinforced_leather");
itemBuilder.addItem("wire_refined_iron");

/*** Chests ***/
itemBuilder.addItem("wood_glue");

val chest = VanillaFactory.createBlock("compressed_chest", <blockmaterial:wood>) as Block;
chest.creativeTab = <creativetab:other>;
chest.toolClass = "axe";
chest.register();

val bars = VanillaFactory.createBlock("bars_refined_iron", <blockmaterial:iron>) as Block;
bars.creativeTab = <creativetab:other>;
bars.toolLevel = 2;
bars.register();