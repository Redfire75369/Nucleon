#loader contenttweaker
#priority 0

import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.Block;
import mods.contenttweaker.VanillaFactory;
import scripts.contenttweaker.common.block_builder;

block_builder.add_block("burnt_wood", <blockmaterial:wood>, <creativetab:other>, "axe", 0);

val regolith = VanillaFactory.createBlock("regolith", <blockmaterial:sand>) as Block;
regolith.creativeTab = <creativetab:other>;
regolith.gravity = true;
regolith.toolClass = "shovel";
regolith.toolLevel = 1;
regolith.register();

val compressed_chest = VanillaFactory.createDirectionalBlock("compressed_chest", <blockmaterial:wood>, "HORIZONTAL") as Block;
compressed_chest.creativeTab = <creativetab:other>;
compressed_chest.axisAlignedBB = AxisAlignedBB.create(1.0/16.0, 0.0, 1.0/16.0, 15.0/16.0, 14.0/16.0, 15.0/16.0);
compressed_chest.fullBlock = false;
compressed_chest.toolClass = "axe";
compressed_chest.toolLevel = 0;
compressed_chest.register();
