#loader contenttweaker
#priority -0001

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

val types = ["glowstone", "ender"] as string[];

var infuseMaterials = [] as Item[];

for type in types {
	infuseMaterials += VanillaFactory.createItem("compressed_" ~ type) as Item;
}

for infuseMaterial in infuseMaterials {
	infuseMaterial.creativeTab = <creativetab:other>;
	infuseMaterial.register();
}