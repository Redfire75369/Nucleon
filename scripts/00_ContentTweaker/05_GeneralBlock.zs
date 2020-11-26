#loader contenttweaker
#priority -0005

import mods.contenttweaker.Block;
import mods.contenttweaker.VanillaFactory;

blockBuilder.addBlock("burnt_wood", <blockmaterial:wood>, <creativetab:other>, "axe", 0);
blockBuilder.addBlock("block_low_grade_charcoal", <blockmaterial:wood>);
blockBuilder.addBlock("block_medium_grade_charcoal", <blockmaterial:wood>);

val regolith = VanillaFactory.createBlock("regolith", <blockmaterial:sand>) as Block;
regolith.creativeTab = <creativetab:other>;
regolith.gravity = true;
regolith.toolClass = "shovel";
regolith.toolLevel = 1;
regolith.witherProof = true;
regolith.register();
