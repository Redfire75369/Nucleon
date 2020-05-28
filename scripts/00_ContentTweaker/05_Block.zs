#loader contenttweaker
#priority -0005

import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.VanillaFactory;

val burntWood = VanillaFactory.createBlock("block_burnt_wood", <blockmaterial:wood>) as Block;
burntWood.creativeTab = <creativetab:other>;
burntWood.toolClass = "axe";
burntWood.register();

val regolith = VanillaFactory.createBlock("regolith", <blockmaterial:sand>) as Block;
regolith.creativeTab = <creativetab:other>;
regolith.gravity = true;
regolith.toolClass = "shovel";
regolith.witherProof = true;
regolith.register();
