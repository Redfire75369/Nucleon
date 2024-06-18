#loader crafttweaker reloadable
#priority -0101

import mods.mekanism.enrichment;
import mods.mekatweaker.InfuserType;

InfuserType.addTypeObject(<item:minecraft:dragon_breath>, "DRAGONBREATH", 10);
InfuserType.addTypeObject(<item:contenttweaker:compressed_dragon_breath>, "DRAGONBREATH", 80);
enrichment.addRecipe(<item:minecraft:dragon_breath>, <item:contenttweaker:compressed_dragon_breath>);

InfuserType.addTypeObject(<item:embers:dust_ember>, "EMBER", 10);
InfuserType.addTypeObject(<item:contenttweaker:compressed_ember>, "EMBER", 80);
enrichment.addRecipe(<item:embers:shard_ember>, <item:contenttweaker:compressed_ember>);
enrichment.addRecipe(<item:embers:dust_ember>, <item:contenttweaker:compressed_ember>);

InfuserType.addTypeObject(<ore:gemLapis>, "LAPIS", 10);
InfuserType.addTypeObject(<ore:dustLapis>, "LAPIS", 10);
InfuserType.addTypeObject(<ore:blockLapis>, "LAPIS", 90);
InfuserType.addTypeObject(<item:contenttweaker:compressed_lapis>, "LAPIS", 80);
enrichment.addRecipe(<ore:gemLapis>, <item:contenttweaker:compressed_lapis>);

InfuserType.addTypeObject(<ore:itemSilicon>, "SILICON", 10);
InfuserType.addTypeObject(<item:contenttweaker:compressed_silicon>, "SILICON", 80);
enrichment.addRecipe(<ore:itemSilicon>, <item:contenttweaker:compressed_silicon>);
