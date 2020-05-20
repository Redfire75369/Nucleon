#loader contenttweaker
#priority -0000
#debug

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;

VanillaFactory.createCreativeTab("coins", <item:thermalfoundation:coin:1>).register();
VanillaFactory.createCreativeTab("fuels", <item:nuclearcraft:fuel_californium:13>).register();
VanillaFactory.createCreativeTab("endgame", <item:minecraft:clay>).register();
VanillaFactory.createCreativeTab("other", <item:minecraft:coal:1>).register();