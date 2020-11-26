#loader mekatweaker
#priority -0100

import mods.mekatweaker.InfuserType;

InfuserType.addType("GLOWSTONE");
InfuserType.addTypeObject(oreDict["dustGlowstone"], "GLOWSTONE", 100);
InfuserType.addTypeObject(oreDict["blockGlowstone"], "GLOWSTONE", 400);
InfuserType.addTypeObject(oreDict["itemCompressedGlowstone"], "GLOWSTONE", 800);

InfuserType.addType("ENDER");
InfuserType.addTypeObject(oreDict["dustEnderPearl"], "ENDER", 100);
InfuserType.addTypeObject(oreDict["pearlEnder"], "ENDER", 100);
InfuserType.addTypeObject(oreDict["itemCompressedEnder"], "ENDER", 800);

InfuserType.addType("SILICON");
InfuserType.addTypeObject(oreDict["itemSilicon"], "SILICON", 100);
InfuserType.addTypeObject(oreDict["dustSilicon"], "SILICON", 100);
InfuserType.addTypeObject(oreDict["itemCompressedSilicon"], "SILICON", 800);

InfuserType.addType("LAPIS");
InfuserType.addTypeObject(oreDict["gemLapis"], "LAPIS", 100);
InfuserType.addTypeObject(oreDict["dustLapis"], "LAPIS", 100);
InfuserType.addTypeObject(oreDict["blockLapis"], "LAPIS", 900);
InfuserType.addTypeObject(oreDict["itemCompressedLapis"], "LAPIS", 800);

InfuserType.addType("EMBER");
InfuserType.addTypeObject(oreDict["dustEmber"], "EMBER", 100);
InfuserType.addTypeObject(oreDict["itemCompressedEmber"], "EMBER", 800);

InfuserType.addType("DRAGONBREATH");
InfuserType.addTypeObject(<item:minecraft:dragon_breath>, "DRAGONBREATH", 100);
InfuserType.addTypeObject(oreDict["itemCompressedDragonBreath"], "DRAGONBREATH", 800);