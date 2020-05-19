#loader contenttweaker
#priority -0003
#packmode theta sigma omega

import mods.contenttweaker.Block;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.VanillaFactory;

var burntWood = VanillaFactory.createBlock("block_burnt_wood", <blockmaterial:wood>) as Block;
burntWood.creativeTab = <creativetab:other>;
burntWood.toolClass = "axe";
burntWood.register();

var charcoalLowGradeBlock = VanillaFactory.createBlock("block_low_grade_charcoal", <blockmaterial:rock>) as Block;
charcoalLowGradeBlock.creativeTab = <creativetab:other>;
charcoalLowGradeBlock.toolLevel = 0;
charcoalLowGradeBlock.register();

var charcoalMediumGradeBlock = VanillaFactory.createBlock("block_medium_grade_charcoal", <blockmaterial:rock>) as Block;
charcoalMediumGradeBlock.creativeTab = <creativetab:other>;
charcoalMediumGradeBlock.toolLevel = 0;
charcoalMediumGradeBlock.register();

var regolith = VanillaFactory.createBlock("block_regoltih", <blockmaterial:sand>) as Block;
regolith.creativeTab = <creativetab:other>;
regolith.gravity = true;
regolith.toolClass = "shovel";
regolith.witherProof = true;
regolith.register();
