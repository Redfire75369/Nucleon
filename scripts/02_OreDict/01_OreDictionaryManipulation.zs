#loader crafttweaker
#priority -0201

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/************ Defining Functions ************/
function replace(item as IItemStack, oredict as IOreDictEntry) {
	oredict.add(item);
	if (item.ores.length != 0) {
		for ore in item.ores {
			recipes.replaceAllOccurences(ore, oredict);
		} 
	} else {
		recipes.replaceAllOccurences(item, oredict);
	}
}

function oreSynonym(toReplace as string, replaceWith as string) {
	var allOres = {
	
		"ore": oreDict["ore" ~ toReplace], 
		"cluster": oreDict["cluster" ~ toReplace], 
		"dustDirty": oreDict["dustDirty" ~ toReplace], 
		"clump": oreDict["clump" ~ toReplace], 
		"shard": oreDict["shard" ~ toReplace], 
		"crystal": oreDict["crystal" ~ toReplace], 
		"ingot": oreDict["ingot" ~ toReplace], 
		"gem": oreDict["gem" ~ toReplace], 
		"clathrate": oreDict["clathrate" ~ toReplace], 
		"nugget": oreDict["nugget" ~ toReplace], 
		"dust": oreDict["dust" ~ toReplace], 
		"dustSmall": oreDict["dustSmall" ~ toReplace], 
		"dustTiny": oreDict["dustTiny" ~ toReplace], 
		"plate": oreDict["plate" ~ toReplace], 
		"plateDense": oreDict["plateDense" ~ toReplace], 
		"rod": oreDict["rod" ~ toReplace], 
		"gear": oreDict["gear" ~ toReplace], 
		"block": oreDict["block" ~ toReplace]
	
	} as IOreDictEntry[string];
	for key, oredict in allOres {
		if (!oredict.empty) {
			for item in oredict.items {
				oreDict[key ~ replaceWith].add(item);
			}
			recipes.replaceAllOccurences(oredict, oreDict[key ~ replaceWith]);
		}
	}
}


/*** Ores ***/
hashOre["CertusQuartz"].remove(<appliedenergistics2:charged_quartz_ore>);

hashOre["Argentite"].add(<thermalfoundation:ore:2>);
hashOre["Aurostibite"].add(<minecraft:gold_ore>);
hashOre["Cassiterite"].add(<thermalfoundation:ore:1>);
hashOre["Corundrum"].add(<thermalfoundation:ore:4>);
hashOre["Covellite"].add(<thermalfoundation:ore>);
hashOre["Dolomite"].add(<nuclearcraft:ore:6>);
hashOre["Kernite"].add(<nuclearcraft:ore:5>);
hashOre["Magnetite"].add(<minecraft:iron_ore>);
hashOre["Petalite"].add(<nuclearcraft:ore:6>);
hashOre["Pyromorphite"].add(<thermalfoundation:ore:3>);
hashOre["Pyrrhotite"].add(<thermalfoundation:ore:5>);
hashOre["Thorianite"].add(<nuclearcraft:ore:3>);
hashOre["Torbernite"].add(<nuclearcraft:ore:4>);

//hashOre["Ender"].add(<tp:ender_ore>);
//recipes.replaceAllOccurences(oreDict["oreEnderOre"], hashOre["Ender"]);

//hashOre["StygianIron"].add(<woot:stygianironore>);
//recipes.replaceAllOccurences(<woot:stygianironore>, hashOre["StygianIron"]);

//hashOre["Wub"].add(<tp:wub_ore>);
//recipes.replaceAllOccurences(oreDict["oreWubOre"], hashOre["Wub"]);

if (!<ore:oreAluminum>.empty) {
	for item in oreDict["oreAluminum"].items {
		hashOre["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["oreAluminum"], hashOre["Aluminium"]);
}

/*** Clathrate Ores ***/
hashOreClathrate["Oil"].add(<thermalfoundation:ore_fluid>);
hashOreClathrate["Oil"].add(<thermalfoundation:ore_fluid:5>);
//recipes.replaceAllOccurences(oreDict["oreClathrateOilSand"], hashOreClathrate["Oil"]);

hashOreClathrate["Oil"].add(<thermalfoundation:ore_fluid:1>);
//recipes.replaceAllOccurences(oreDict["oreClathrateOilShale"], hashOreClathrate["Oil"]);

/*** Dirty Dusts ***/
if (!<ore:dustDirtyAluminum>.empty) {
	for item in oreDict["dustDirtyAluminum"].items {
		hashDustDirty["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["dustDirtyAluminum"], hashDustDirty["Aluminium"]);
}

/*** Clumps ***/
if (!<ore:clumpAluminum>.empty) {
	for item in oreDict["clumpAluminum"].items {
		hashClump["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["clumpAluminum"], hashClump["Aluminium"]);
}

/*** Shards ***/
if (!<ore:shardAluminum>.empty) {
	for item in oreDict["shardAluminum"].items {
		hashShard["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["shardAluminum"], hashShard["Aluminium"]);
}

/***  Crystals ***/
//hashCrystal["Amber"].add(<cyclicmagic:crystallized_amber>);
//recipes.replaceAllOccurences(<cyclicmagic:crystallized_amber>, hashCrystal["Amber"]);

//hashCrystal["Obsidian"].add(<cyclicmagic:crystallized_obsidian>);
//recipes.replaceAllOccurences(<cyclicmagic:crystallized_obsidian>, hashCrystal["Obsidian"]);

if (!<ore:crystalAluminum>.empty) {
	for item in oreDict["crystalAluminum"].items {
		hashCrystal["Aluminium"].add(item);
	}
   //recipes.replaceAllOccurences(oreDict["crystalAluminum"], hashCrystal["Aluminium"]);
}

/*** Ingots ***/
//hashIngot["DarkSoularium"].add(<simplyjetpacks:metaitemmods:3>);
//recipes.replaceAllOccurences(oreDict["ingot_dark_soularium"], hashIngot["DarkSoularium"]);

hashIngot["Ender"].add(<extendedcrafting:material:36>);
//recipes.replaceAllOccurences(<extendedcrafting:material:36>, hashIngot["Ender"]);

hashIngot["EnderEnhanced"].add(<extendedcrafting:material:48>);
//recipes.replaceAllOccurences(<extendedcrafting:material:48>, hashIngot["EnderEnhanced"]);

//hashIngot["GlitchInfused"].add(<deepmoblearning:glitch_infused_ingot>);
//recipes.replaceAllOccurences(<deepmoblearning:glitch_infused_ingot>, hashIngot["GlitchInfused"]);

oreDict["ingotMeatCooked"].add(<industrialmeat:cooked_meat_ingot>);
//recipes.replaceAllOccurences(<industrialmeat:cooked_meat_ingot>, oreDict["ingotMeatCooked"]);

oreDict["ingotMeatRaw"].add(<industrialmeat:raw_meat_ingot>);
//recipes.replaceAllOccurences(<industrialmeat:raw_meat_ingot>, oreDict["ingotMeatRaw"]);

oreDict["ingotSlimePink"].add(<industrialforegoing:pink_slime_ingot>);
//recipes.replaceAllOccurences(<industrialforegoing:pink_slime_ingot>, oreDict["ingotSlimePink"]);

//hashIngot["Spectre"].add(<randomthings:ingredient:3>);
//recipes.replaceAllOccurences(<randomthings:ingredient:3>, hashIngot["Spectre"]);

//hashIngot["StygianIron"].add(<woot:stygianironingot>);
//recipes.replaceAllOccurences(<woot:stygianironingot>, hashIngot["StygianIron"]);

if (!<ore:ingotAluminum>.empty) {
	for item in oreDict["ingotAluminum"].items {
		hashIngot["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["ingotAluminum"], hashIngot["Aluminium"]);
}

/*** Gems ***/
hashGem["Charcoal"].add(<minecraft:coal:1>);
//recipes.replaceAllOccurences(oreDict["charcoal"], hashGem["Charcoal"]);

hashGem["ChargedRedGarnet"].add(<contenttweaker:gem_charged_red_garnet>);
hashGem["ChargedYellowGarnet"].add(<contenttweaker:gem_charged_yellow_garnet>);
hashGem["ChargedSapphire"].add(<contenttweaker:gem_charged_sapphire>);


/*** Clathrates ***/

/*** Nuggets ***/
oreDict["nuggetEnderpearl"].add(<contenttweaker:nugget_ender_pearl>);
//recipes.replaceAllOccurences(<contenttweaker:nugget_ender_pearl>, oreDict["nuggetEnderpearl"]);

oreDict["nuggetMeatRaw"].add(<contenttweaker:nugget_ender_pearl>);
//recipes.replaceAllOccurences(<industrialmeat:raw_meat_nugget>, oreDict["nuggetMeatRaw"]);

if (!<ore:nuggetAluminum>.empty) {
	for item in oreDict["nuggetAluminum"].items {
		hashNugget["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["nuggetAluminum"], hashNugget["Aluminium"]);
}

/*** Dusts ***/
//recipes.replaceAllOccurences(oreDict["dustNetherQuartz"], hash["Quartz"]);

oreDict["dustBedrock"].add(<contenttweaker:dust_bedrock>);

//hashDust["BloodInfusedGlowstone"].add(<bloodarsenal:base_item:2>);
//recipes.replaceAllOccurences(<bloodarsenal:base_item:2>, hashDust["BloodInfusedGlowstone"]);

oreDict["dustEmber"].add(<embers:dust_ember>);
//recipes.replaceAllOccurences(<embers:dust_ember>, oreDict["dustEmber"]);

oreDict["dustFlux"].add(<fluxnetworks:flux>);
//recipes.replaceAllOccurences(<fluxnetworks:flux>, oreDict["dustFlux"]);

//hashDust["Illumination"].add(<astralsorcery:itemusabledust>);
//recipes.replaceAllOccurences(<astralsorcery:itemusabledust>, hashDust["Illumination"]);

hashDust["Lapis"].add(<contenttweaker:dust_lapis>);

oreDict["dustMetallurgic"].add(<embers:dust_metallurgic>);
//recipes.replaceAllOccurences(<embers:dust_metallurgic>, oreDict["dustMetallurgic"]);

//hashDust["Nocturnal"].add(<astralsorcery:itemusabledust:1>);
//recipes.replaceAllOccurences(<astralsorcery:itemusabledust:1>, hashDust["Nocturnal"]);

oreDict["dustNetherQuartz"].add(<nuclearcraft:gem_dust:3>);

//hashDust["Soot"].add(<deepmoblearning:soot_covered_redstone>);
//recipes.replaceAllOccurences(<deepmoblearning:soot_covered_redstone>, hashDust["Soot"]);

//hashDust["StygianIron"].add(<woot:stygianirondust>);
//recipes.replaceAllOccurences(<woot:stygianirondust>, hashDust["StygianIron"]);

//hashDust["Wither"].add(<darkutils:material>);
//recipes.replaceAllOccurences(<darkutils:material>, hashDust["Wither"]);

if (!<ore:dustAluminum>.empty) {
	for item in oreDict["dustAluminum"].items {
		hashDust["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["dustAluminum"], hashDust["Aluminium"]);
}

/*** Small Dusts ***/
if (!<ore:dustSmallAluminum>.empty) {
	for item in oreDict["dustSmallAluminum"].items {
		hashDustSmall["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["dustSmallAluminum"], hashDustSmall["Aluminium"]);
}

/*** Plates ***/
//hashPlate["StygianIron"].add(<woot:stygianironplate>);
//recipes.replaceAllOccurences(<woot:stygianironplate>, hashPlate["StygianIron"]);

hashPlate["Wood"].remove(<rustichromia:plate_wood>);

if (!<ore:plateAluminum>.empty) {
	for item in oreDict["plateAluminum"].items {
		hashPlate["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(<ore:plateAluminum>, hashPlate["Aluminium"]);
}

/*** Dense Plates ***/
if (!<ore:plateDenseAluminum>.empty) {
	for item in oreDict["plateDenseAluminum"].items {
		hashPlateDense["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["plateDenseAluminum"], hashPlateDense["Aluminium"]);
}

/*** Rods ***/
hashRod["Aluminium"].add(<immersiveengineering:material:3>);
//recipes.replaceAllOccurences(oreDict["stickAluminium"], hashRod["Aluminium"]);
//recipes.replaceAllOccurences(oreDict["stickAluminum"], hashRod["Aluminium"]);

hashRod["Copper"].add(<libvulpes:productrod:4>);
//recipes.replaceAllOccurences(oreDict["stickCopper"], hashRod["Copper"]);

hashRod["Iridium"].add(<libvulpes:productrod:10>);
//recipes.replaceAllOccurences(oreDict["stickIridium"], hashRod["Iridium"]);

hashRod["Iron"].add(<immersiveengineering:material:1>);
//recipes.replaceAllOccurences(oreDict["stickIron"], hashRod["Iron"]);

hashRod["Steel"].add(<immersiveengineering:material:2>);
//recipes.replaceAllOccurences(oreDict["stickSteel"], hashRod["Steel"]);

hashRod["Titanium"].add(<libvulpes:productrod:7>);
//recipes.replaceAllOccurences(oreDict["stickTitianium"], hashRod["Titanium"]);

hashRod["TitaniumAluminide"].add(<advancedrocketry:productrod:1>);
//recipes.replaceAllOccurences(oreDict["stickTitaniumAluminide"], hashRod["TitaniumAluminide"]);

hashRod["TitaniumIridium"].add(<advancedrocketry:productrod:2>);
//recipes.replaceAllOccurences(oreDict["stickTitaniumIridium"], hashRod["TitaniumIridium"]);

if (!<ore:rodAluminum>.empty) {
	for item in oreDict["rodAluminum"].items {
		hashRod["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["rodAluminum"], hashRod["Aluminium"]);
}

/*** Gears ***/
if (!<ore:gearAluminum>.empty) {
	for item in oreDict["gearAluminum"].items {
		hashGear["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["gearAluminum"], hashGear["Aluminium"]);
}

/*** Blocks ***/
//hashBlock["BloodInfusedIron"].add(<bloodarsenal:blood_infused_iron_block>);
//recipes.replaceAllOccurences(<bloodarsenal:blood_infused_iron_block>, hashBlock["BloodInfusedIron"]);

hashBlock["Ender"].add(<extendedcrafting:storage:5>);
//recipes.replaceAllOccurences(<extendedcrafting:storage:5>, hashBlock["Ender"]);

hashBlock["EnderEnhanced"].add(<extendedcrafting:storage:7>);
//recipes.replaceAllOccurences(<extendedcrafting:storage:7>, hashBlock["EnderEnhanced"]);

oreDict["blockEnderStar"].add(<extendedcrafting:storage:6>);
//recipes.replaceAllOccurences(<extendedcrafting:storage:6>, oreDict["blockEnderStar"]);

oreDict["blockFlux"].add(<fluxnetworks:fluxblock>);
//recipes.replaceAllOccurences(<fluxnetworks:fluxblock>, oreDict["blockFlux"]);

//hashBlock["GlitchInfused"].add(<deepmoblearning:infused_ingot_block>);
//recipes.replaceAllOccurences(<deepmoblearning:infused_ingot_block>, hashBlock["GlitchInfused"]);

oreDict["blockMeatCooked"].add(<industrialmeat:cooked_meat_block>);
//recipes.replaceAllOccurences(<industrialmeat:cooked_meat_block>, oreDict["blockMeatCooked"]);

oreDict["blockMeatRaw"].add(<industrialmeat:raw_meat_block>);
//recipes.replaceAllOccurences(<industrialmeat:raw_meat_block>, oreDict["blockMeatRaw"]);

//hashBlock["StygianIron"].add(<woot:stygianiron>);
//recipes.replaceAllOccurences(<woot:stygianiron>, hashBlock["StygianIron"]);

if (!<ore:blockAluminum>.empty) {
	for item in oreDict["blockAluminum"].items {
		hashBlock["Aluminium"].add(item);
	}
	//recipes.replaceAllOccurences(oreDict["blockAluminum"], hashBlock["Aluminium"]);
}

/*** Others ***/
oreDict["itemCompressedGlowstone"].add(<contenttweaker:compressed_glowstone>);
oreDict["itemCompressedEnder"].add(<contenttweaker:compressed_ender>);
oreDict["itemCompressedLapis"].add(<contenttweaker:compressed_lapis>);
oreDict["itemCompressedSilicon"].add(<contenttweaker:compressed_silicon>);
oreDict["itemCompressedEmber"].add(<contenttweaker:compressed_ember>);
oreDict["itemCompressedDragonBreath"].add(<contenttweaker:compressed_dragon_breath>);
