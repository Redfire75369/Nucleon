#loader crafttweaker
#priority -0200
#packmode theta sigma omega

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mod.mekanism.gas.IGasStack;
import mods.mekanism.MekanismHelper.getGas;

/* Declaring Other Variables */
global sand as IItemStack = <minecraft:sand> as IItemStack;
global cinnabar as IItemStack = <thermalfoundation:material:866> as IItemStack;

val ingotOres = [
	"Aluminium",
	"Boron",
	"Cobalt",
	"Copper",
	"Gold",
	"Iridium",
	"Iron",
	"Lead",
	"Lithium",
	"Magnesium",
	"Mithril",
	"Nickel",
	"Osmium",
	"Platinum",
	"Silver",
	"Thorium",
	"Tin",
	"Titanium",
	"Tungsten",
	"Uranium"
] as string[];

val ingotOreless = [
	"AdvancedAlloy",
	"AdvancedElectronicAlloy",
	"Antimony",
	"Beryllium",
	"Brass",
	"Bronze",
	"Calcium",
	"ChargedIron",
	"Chrome",
	"ConductiveIron",
	"Constantan",
	"ConstructionAlloy",
	"CrudeSteel",
	"CrystallineAlloy",
	"CrystallinePinkSlime",
	"DarkSteel",
	"Dawnstone",
	"ElectricalSteel",
	"Electrum",
	"ElectrumFlux",
	"Enderium",
	"EndSteel",
	"EnergeticAlloy",
	"EnergeticSilver",
	"Extreme",
	"Ferroboron",
	"GelidEnderium",
	"Graphite",
	"Hafnium",
	"HardCarbon",
	"HOPGraphite",
	"HotTungstensteel",
	"HSLASteel",
	"Invar",
	"IridiumAlloy",
	"LithiumManganeseDioxide",
	"Lumium",
	"MagnesiumDiboride",
	"Manganese",
	"ManganeseDioxide",
	"ManganeseOxide",
	"MelodicAlloy",
	"MixedMetal",
	"Neodymium",
	"Niobium",
	"NiobiumTin",
	"NiobiumTitanium",
	"ObsidianSteel",
	"Plutonium",
	"Potassium",
	"PulsatingIron",
	"RedstoneAlloy",
	"RefinedGlowstone",
	"RefinedIron",
	"RefinedObsidian",
	"SiCSiCCMC",
	"Signalum",
	"Silicon",
	"SiliconCarbide",
	"Sodium",
	"Soularium",
	"StainlessSteel",
	"Steel",
	"StellarAlloy",
	"Strontium",
	"Terne",
	"Thermoconducting",
	"TitaniumAluminide",
	"TitaniumIridium",
	"Tough",
	"TungstenCarbide",
	"Tungstensteel",
	"VibrantAlloy",
	"VividAlloy",
	"Yttrium",
	"Zinc",
	"Zircaloy",
	"Zirconium"
] as string[];

val gemOres = [
	"CertusQuartz",
	"Coal",
	"Diamond",
	"Dilithium",
	"Emerald",
	"Fluorite",
	"Lapis",
	"Peridot",
	"Phosphorus",
	"Quartz",
	"Ruby",
	"Sapphire",
	"Trinitite"
] as string[];

val gemOreless = [
	"BoronArsenide",
	"BoronNitride",
	"Carobbiite",
	"Charcoal",
	"ChargedCertusQuartz",
	"CrystalFlux",
	"Fluix",
	"RedGarnet",
	"Rhodocrosite",
	"Villiaumite",
	"Witherite",
	"YellowGarnet"
] as string[];

val dustOres = [
	"Bauxite",
	"Cinnabar",
	"Galena",
	"Pyrite",
	"Redstone",
	"Salt",
	"Sheldonite",
	"Sodalite",
	"Sphalerite",
	"Sulfur"
] as string[];

/*** Ores ***/
global hashOre as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashOre[key] = oreDict["ore" ~ key];
}
for key in gemOres {
	hashOre[key] = oreDict["ore" ~ key];
}
for key in dustOres {
	hashOre[key] = oreDict["ore" ~ key];
}
hashOre["Argentite"] = oreDict["oreArgentite"];
hashOre["Aurostibite"] = oreDict["oreAurostibite"];
hashOre["Cassiterite"] = oreDict["oreCassiterite"];
hashOre["ChargedCertusQuartz"] = oreDict["oreChargedCertusQuartz"];
hashOre["Corundrum"] = oreDict["oreCorundrum"];
hashOre["Covellite"] = oreDict["oreCovellite"];
hashOre["Dolomite"] = oreDict["oreDolomite"];
hashOre["Kernite"] = oreDict["oreKernite"];
hashOre["Magnetite"] = oreDict["oreMagnetite"];
hashOre["Petalite"] = oreDict["orePetalite"];
hashOre["Pyromorphite"] = oreDict["orePyromorphite"];
hashOre["Pyrrhotite"] = oreDict["orePyrrhotite"];
hashOre["Thorianite"] = oreDict["oreThorianite"];
hashOre["Torbernite"] = oreDict["oreTorbernite"];

/*** Clathrate Ores ***/
global hashOreClathrate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringOreClathrate = [
	"Ender",
	"Glowstone",
	"Oil",
	"Redstone"
] as string[];
for oreClathrate in stringOreClathrate{
	hashOreClathrate[oreClathrate] = oreDict["oreClathrate" ~ oreClathrate];
}

/*** Chunks ***/
global hashChunk as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashChunk[key] = oreDict["chunk" ~ key];
}

/*** Rocky Chunks ***/
global hashChunkRocky as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashChunkRocky[key] = oreDict["rockyChunk" ~ key];
}

/*** Dirty Dusts ***/
global hashDustDirty as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashDustDirty[key] = oreDict["dustDirty" ~ key];
}

/*** Clumps ***/
global hashClump as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashClump[key] = oreDict["clump" ~ key];
}

/*** Shards ***/
global hashShard as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashShard[key] = oreDict["shard" ~ key];
}

/*** Crystals ***/
global hashCrystal as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashCrystal[key] = oreDict["crystal" ~ key];
}

/*** Ingots ***/
global hashIngot as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashIngot[key] = oreDict["ingot" ~ key];
}
for key in ingotOreless {
	hashIngot[key] = oreDict["ingot" ~ key];
}
hashIngot["Carbon"] = oreDict["ingotCarbon"];
hashIngot["Ender"] = oreDict["ingotEnder"];
hashIngot["EnderEnhanced"] = oreDict["ingotEnderEnhanced"];
hashIngot["IronCompressed"] = oreDict["ingotIronCompressed"];
hashIngot["ObsidanSteel"] = oreDict["ingotObsidianSteel"];

/*** Gems ***/
global hashGem as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in gemOres {
	hashGem[key] = oreDict["gem" ~ key];
}
for key in gemOreless {
	hashGem[key] = oreDict["gem" ~ key];
}
hashGem["ChargedCertusQuartz"] = oreDict["gemChargedCertusQuartz"];
hashGem["ChargedRedGarnet"] = oreDict["gemChargedRedGarnet"];
hashGem["ChargedSapphire"] = oreDict["gemChargedSapphire"];
hashGem["ChargedYellowGarnet"] = oreDict["gemChargedYellowGarnet"];

/*** Clathrates ***/
global hashClathrate as IOreDictEntry[string] = {} as IOreDictEntry[string];
val stringClathrate = [
	"Ender",
	"Glowstone",
	"Oil",
	"Redstone"
] as string[];
for clathrate in stringClathrate{
	hashClathrate[clathrate] = oreDict["clathrate" ~ clathrate];
}

/*** Nuggets ***/
global hashNugget as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashNugget[key] = oreDict["nugget" ~ key];
}
for key in ingotOreless {
	hashNugget[key] = oreDict["nugget" ~ key];
}
for key in gemOres {
	hashNugget[key] = oreDict["nugget" ~ key];
}
for key in gemOreless {
	hashNugget[key] = oreDict["nugget" ~ key];
}

/*** Dusts ***/
global hashDust as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashDust[key] = oreDict["dust" ~ key];
}
for key in ingotOreless {
	hashDust[key] = oreDict["dust" ~ key];
}
for key in gemOres {
	hashDust[key] = oreDict["dust" ~ key];
}
for key in gemOreless {
	hashDust[key] = oreDict["dust" ~ key];
}
for key in dustOres {
	hashDust[key] = oreDict["dust" ~ key];
}
hashDust["Obsidian"] = oreDict["dustObsidian"];
hashDust["Wood"] = oreDict["dustWood"];

/*** Small Dusts ***/
global hashDustSmall as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashDustSmall[key] = oreDict["dustSmall" ~ key];
}
for key in ingotOreless {
	hashDustSmall[key] = oreDict["dustSmall" ~ key];
}
for key in gemOres {
	hashDustSmall[key] = oreDict["dustSmall" ~ key];
}
for key in gemOreless {
	hashDustSmall[key] = oreDict["dustSmall" ~ key];
}

/*** Plates ***/
global hashPlate as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashPlate[key] = oreDict["plate" ~ key];
}
for key in ingotOreless {
	hashPlate[key] = oreDict["plate" ~ key];
}
for key in gemOres {
	hashPlate[key] = oreDict["plate" ~ key];
}
for key in gemOreless {
	hashPlate[key] = oreDict["plate" ~ key];
}
hashPlate["Carbon"] = oreDict["plateCarbon"];
hashPlate["ObsidanSteel"] = oreDict["plateObsidianSteel"];
hashPlate["Wood"] = oreDict["plateWood"];

/*** Dense Plates ***/
global hashPlateDense as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashPlateDense[key] = oreDict["plateDense" ~ key];
}
for key in ingotOreless {
	hashPlateDense[key] = oreDict["plateDense" ~ key];
}
for key in gemOres {
	hashPlateDense[key] = oreDict["plateDense" ~ key];
}
for key in gemOreless {
	hashPlateDense[key] = oreDict["plateDense" ~ key];
}

/*** Rods ***/
global hashRod as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashRod[key] = oreDict["rod" ~ key];
}
for key in ingotOreless {
	hashRod[key] = oreDict["rod" ~ key];
}
for key in gemOres {
	hashRod[key] = oreDict["rod" ~ key];
}
for key in gemOreless {
	hashRod[key] = oreDict["rod" ~ key];
}

/*** Gears ***/
global hashGear as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashGear[key] = oreDict["gear" ~ key];
}
for key in ingotOreless {
	hashGear[key] = oreDict["gear" ~ key];
}
for key in gemOres {
	hashGear[key] = oreDict["gear" ~ key];
}
for key in gemOreless {
	hashGear[key] = oreDict["gear" ~ key];
}
hashGear["IronCompressed"] = oreDict["gearIronCompressed"];
hashGear["Stone"] = oreDict["gearStone"];
hashGear["Wood"] = oreDict["gearWood"];

/*** Blocks ***/
global hashBlock as IOreDictEntry[string] = {} as IOreDictEntry[string];
for key in ingotOres {
	hashBlock[key] = oreDict["block" ~ key];
}
for key in ingotOreless {
	hashBlock[key] = oreDict["block" ~ key];
}
for key in gemOres {
	hashBlock[key] = oreDict["block" ~ key];
}
for key in gemOreless {
	hashBlock[key] = oreDict["block" ~ key];
}
for key in dustOres {
	hashBlock[key] = oreDict["block" ~ key];
}
hashBlock["Ender"] = oreDict["blockEnder"];
hashBlock["EnderEnhanced"] = oreDict["blockEnderEnhanced"];
hashBlock["IronCompressed"] = oreDict["blockIronCompressed"];

/*** Molten ***/
global hashMolten as ILiquidStack[string] = {} as ILiquidStack[string];
for key in ingotOres {
	hashMolten[key] = game.getLiquid(key.toLowerCase);
}

/*** Other Gases ***/
global hashGas as IGasStack[string] = {} as IGasStack[string];
val stringGas = [
	"Brine",
	"Chlorine",
	"Deuterium",
	"Ethene",
	"DTFuel",
	"Hydrogen",
	"HydrogenChloride",
	"Lithium",
	"LiquidOsmium",
	"Oxygen",
	"Sodium",
	"SulfurDioxide",
	"SulfuricAcid",
	"SulfurTrioxide",
	"Tritium",
	"Water"
] as string[];
for gas in stringGas {
	hashGas[gas] = getGas(gas.toLowerCase);
}
hashGas["DTFuel"] = getGas("fusionfuel");
hashGas["HydrogenChloride"] = getGas("hydrogenchloride");
hashGas["LiquidOsmium"] = getGas("liquidosmium");
hashGas["SulfurDioxide"] = getGas("sulfurdioxide");
hashGas["SulfuricAcid"] = getGas("sulfuricacid");
hashGas["SulfurTrioxide"] = getGas("sulfurtrioxide");

/*** Slurry ***/
global hashSlurry as IGasStack[string] = {} as IGasStack[string];
for key in ingotOres {
	hashSlurry[key] = getGas("slurry" ~ key);
}
hashSlurry["Copper"] = getGas("copper");
hashSlurry["Gold"] = getGas("gold");
hashSlurry["Iron"] = getGas("iron");
hashSlurry["Lead"] = getGas("lead");
hashSlurry["Osmium"] = getGas("osmium");
hashSlurry["Silver"] = getGas("silver");
hashSlurry["Tin"] = getGas("tin");

/*** Clean Slurry ***/
global hashSlurryClean as IGasStack[string] = {} as IGasStack[string];
for key in ingotOres {
	hashSlurryClean[key] = getGas("slurryClean" ~ key);
}
hashSlurryClean["Copper"] = getGas("cleanCopper");
hashSlurryClean["Gold"] = getGas("cleanGold");
hashSlurryClean["Iron"] = getGas("cleanIron");
hashSlurryClean["Lead"] = getGas("cleanLead");
hashSlurryClean["Osmium"] = getGas("cleanOsmium");
hashSlurryClean["Silver"] = getGas("cleanSilver");
hashSlurryClean["Tin"] = getGas("cleanTin");