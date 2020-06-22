#loader contenttweaker
#priority -0005

import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.VanillaFactory;

val burntWood = VanillaFactory.createBlock("burnt_wood", <blockmaterial:wood>) as Block;
burntWood.creativeTab = <creativetab:other>;
burntWood.toolClass = "axe";
burntWood.register();

val lowGradeCharcoalBlock = VanillaFactory.createBlock("block_low_grade_charcoal", <blockmaterial:wood>) as Block;
lowGradeCharcoalBlock.creativeTab = <creativetab:other>;
lowGradeCharcoalBlock.toolClass = "pickaxe";
lowGradeCharcoalBlock.register();

val mediumGradeCharcoalBlock = VanillaFactory.createBlock("block_medium_grade_charcoal", <blockmaterial:wood>) as Block;
mediumGradeCharcoalBlock.creativeTab = <creativetab:other>;
mediumGradeCharcoalBlock.toolClass = "pickaxe";
mediumGradeCharcoalBlock.register();

val regolith = VanillaFactory.createBlock("regolith", <blockmaterial:sand>) as Block;
regolith.creativeTab = <creativetab:other>;
regolith.gravity = true;
regolith.toolClass = "shovel";
regolith.witherProof = true;
regolith.register();
