#loader contenttweaker
#priority -0002

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

/***** Crating Materials *****/
var charcoalLowGrade = VanillaFactory.createItem("low_grade_charcoal") as Item;
charcoalLowGrade.creativeTab = <creativetab:other>;
charcoalLowGrade.register();

var charcoalMediumGrade = VanillaFactory.createItem("medium_grade_charcoal") as Item;
charcoalMediumGrade.creativeTab = <creativetab:other>;
charcoalMediumGrade.register();

var woodPile = VanillaFactory.createItem("wood_pile") as Item;
woodPile.creativeTab = <creativetab:other>;
woodPile.register();

/*****Items With Durability*****/
var file = VanillaFactory.createItem("file") as Item;
file.creativeTab = <creativetab:other>;
file.maxDamage = 255;
file.maxStackSize = 1;
file.register();

var sandpaper = VanillaFactory.createItem("sandpaper") as Item;
sandpaper.creativeTab = <creativetab:other>;
sandpaper.maxDamage = 255;
sandpaper.maxStackSize = 1;
sandpaper.register();

var wrench = VanillaFactory.createItem("wrench") as Item;
wrench.creativeTab = <creativetab:other>;
wrench.maxDamage = 255;
wrench.maxStackSize = 1;
wrench.register();
