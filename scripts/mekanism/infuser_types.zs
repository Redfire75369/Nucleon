#loader crafttweaker reloadable
#priority 0

import mods.mekanism.enrichment as Enrichment;
import mods.mekatweaker.InfuserType;

<ore:itemCompressedDragonBreath>.add(<item:contenttweaker:compressed_dragon_breath>);
<ore:itemCompressedEmber>.add(<item:contenttweaker:compressed_ember>);
<ore:itemCompressedLapis>.add(<item:contenttweaker:compressed_lapis>);
<ore:itemCompressedSilicon>.add(<item:contenttweaker:compressed_silicon>);

Enrichment.addRecipe(<ore:gemCharcoal>, <item:mekanism:compressedcarbon>);
Enrichment.addRecipe(<ore:gemCoal>, <item:mekanism:compressedcarbon>);
Enrichment.addRecipe(<ore:dustRedstone>, <item:mekanism:compressedredstone>);
Enrichment.addRecipe(<ore:gemDiamond>, <item:mekanism:compresseddiamond>);
Enrichment.addRecipe(<ore:dustRefinedObsidian>, <item:mekanism:compressedobsidian>);
Enrichment.addRecipe(<item:minecraft:dragon_breath>, <item:contenttweaker:compressed_dragon_breath>);
Enrichment.addRecipe(<item:embers:shard_ember>, <item:contenttweaker:compressed_ember>);
Enrichment.addRecipe(<item:embers:dust_ember>, <item:contenttweaker:compressed_ember>);
Enrichment.addRecipe(<ore:gemLapis>, <item:contenttweaker:compressed_lapis>);
Enrichment.addRecipe(<ore:itemSilicon>, <item:contenttweaker:compressed_silicon>);

InfuserType.addTypeObject(<item:minecraft:dragon_breath>, "DRAGONBREATH", 10);
InfuserType.addTypeObject(<item:contenttweaker:compressed_dragon_breath>, "DRAGONBREATH", 80);

InfuserType.addTypeObject(<item:embers:dust_ember>, "EMBER", 10);
InfuserType.addTypeObject(<item:contenttweaker:compressed_ember>, "EMBER", 80);

InfuserType.addTypeObject(<ore:gemLapis>, "LAPIS", 10);
InfuserType.addTypeObject(<ore:dustLapis>, "LAPIS", 10);
InfuserType.addTypeObject(<ore:blockLapis>, "LAPIS", 90);
InfuserType.addTypeObject(<item:contenttweaker:compressed_lapis>, "LAPIS", 80);

InfuserType.addTypeObject(<ore:itemSilicon>, "SILICON", 10);
InfuserType.addTypeObject(<item:contenttweaker:compressed_silicon>, "SILICON", 80);
