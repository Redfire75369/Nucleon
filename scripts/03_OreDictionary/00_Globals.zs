#loader crafttweaker reloadable
#priority -0300

import mods.jaopca.JAOPCA;
import mods.jaopca.Material;

static ingot_ores as Material[] = JAOPCA.getMaterialsForType("INGOT");
static ingot_oreless as Material[] = JAOPCA.getMaterialsForType("INGOT_PLAIN");
static gem_ores as Material[] = JAOPCA.getMaterialsForType("GEM");
static gem_oreless as Material[] = JAOPCA.getMaterialsForType("GEM_PLAIN");

/* Mekanism Infuse Types */
<ore:itemCompressedDragonBreath>.add(<item:contenttweaker:compressed_dragon_breath>);
<ore:itemCompressedEmber>.add(<item:contenttweaker:compressed_ember>);
<ore:itemCompressedLapis>.add(<item:contenttweaker:compressed_lapis>);
<ore:itemCompressedSilicon>.add(<item:contenttweaker:compressed_silicon>);
