#loader contenttweaker
#priority -0007

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

val types = ["glowstone", "ender"] as string[];

for type in types {
	item.addItem("compressed_" ~ type);
}
