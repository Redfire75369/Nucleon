#loader contenttweaker
#priority -0007

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

val types = [
	"glowstone",
	"ender",
	"lapis",
	"silicon",
	"ember",
	"dragon_breath"
] as string[];

for type in types {
	itemBuilder.addItem("compressed_" ~ type);
}
