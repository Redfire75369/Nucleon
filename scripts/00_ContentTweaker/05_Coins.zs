#loader contenttweaker
#priority -0005

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var typeList = ["chemist", "farming", "environmentalist", "hunter", "magician", "nuclear", "technician"] as string[];
var compressionList = ["", "compressed", "compressed_double", "compressed_triple"] as string[];

var coins = [] as Item[];

for type in typeList {
	for compression in compressionList {
		coins += VanillaFactory.createItem("coin_" ~ type ~ "_" ~ compression) as Item;
	}
}

for coin in coins {
	coin.creativeTab = <creativetab:coins>;
	coin.register();
}