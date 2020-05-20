#loader crafttweaker
#priority -0201

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/******************** Defining Functions ********************/
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

/******************** Manipulating Ore Dictionaries and their contents ********************/
/********** Items **********/
/***** Ores *****/
hashOre["CertusQuartz"].remove(<appliedenergistics2:charged_quartz_ore>);

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

/***** Clathrate Ores *****/
hashOreClathrate["Ender"].add(<thermalfoundation:ore_fluid:4>);
//recipes.replaceAllOccurences(oreDict["oreClathrateEnder"], hashOreClathrate["Ender"]);

hashOreClathrate["Glowstone"].add(<thermalfoundation:ore_fluid:3>);
//recipes.replaceAllOccurences(oreDict["oreClathrateGlowstone"], hashOreClathrate["Glowstone"]);

hashOreClathrate["Oil"].add(<thermalfoundation:ore_fluid>);
hashOreClathrate["Oil"].add(<thermalfoundation:ore_fluid:5>);
//recipes.replaceAllOccurences(oreDict["oreClathrateOilSand"], hashOreClathrate["Oil"]);

hashOreClathrate["Oil"].add(<thermalfoundation:ore_fluid:1>);
//recipes.replaceAllOccurences(oreDict["oreClathrateOilShale"], hashOreClathrate["Oil"]);


hashOreClathrate["Redstone"].add(<thermalfoundation:ore_fluid:2>);
//recipes.replaceAllOccurences(oreDict["oreClathrateRedstone"], hashOreClathrate["Redstone"]);

/***** Dirty Dusts *****/
if (!<ore:dustDirtyAluminum>.empty) {
    for item in oreDict["dustDirtyAluminum"].items {
        hashDustDirty["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["dustDirtyAluminum"], hashDustDirty["Aluminium"]);
}

/***** Clumps *****/
if (!<ore:clumpAluminum>.empty) {
    for item in oreDict["clumpAluminum"].items {
        hashClump["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["clumpAluminum"], hashClump["Aluminium"]);
}

/***** Shards *****/
if (!<ore:shardAluminum>.empty) {
    for item in oreDict["shardAluminum"].items {
        hashShard["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["shardAluminum"], hashShard["Aluminium"]);
}

/*****  Crystals *****/
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

/***** Ingots *****/
//hashIngot["DarkSoularium"].add(<simplyjetpacks:metaitemmods:3>);
//recipes.replaceAllOccurences(oreDict["ingot_dark_soularium"], hashIngot["DarkSoularium"]);

//hashIngot["Ender"].add(<extendedcrafting:material:36>);
//recipes.replaceAllOccurences(<extendedcrafting:material:36>, hashIngot["Ender"]);

//hashIngot["EnderEnhanced"].add(<extendedcrafting:material:48>);
//recipes.replaceAllOccurences(<extendedcrafting:material:48>, hashIngot["EnderEnhanced"]);

//hashIngot["GlitchInfused"].add(<deepmoblearning:glitch_infused_ingot>);
//recipes.replaceAllOccurences(<deepmoblearning:glitch_infused_ingot>, hashIngot["GlitchInfused"]);

//hashIngot["MeatCooked"].add(<industrialmeat:cooked_meat_ingot>);
//recipes.replaceAllOccurences(<industrialmeat:cooked_meat_ingot>, hashIngot["MeatCooked"]);

//hashIngot["MeatRaw"].add(<industrialmeat:raw_meat_ingot>);
//recipes.replaceAllOccurences(<industrialmeat:raw_meat_ingot>, hashIngot["MeatRaw"]);

//hashIngot["SlimePink"].add(<industrialforegoing:pink_slime_ingot>);
//recipes.replaceAllOccurences(<industrialforegoing:pink_slime_ingot>, hashIngot["SlimePink"]);

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

/***** Gems *****/
hashGem["Charcoal"].add(<minecraft:coal:1>);
//recipes.replaceAllOccurences(oreDict["charcoal"], hashGem["Charcoal"]);

/***** Clathrates *****/

/***** Nuggets *****/
//hashNugget["MeatRaw"].add(<industrialmeat:raw_meat_nugget>);
//recipes.replaceAllOccurences(<industrialmeat:raw_meat_nugget>, hashNugget["MeatRaw"]);

if (!<ore:nuggetAluminum>.empty) {
    for item in oreDict["nuggetAluminum"].items {
        hashNugget["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["nuggetAluminum"], hashNugget["Aluminium"]);
}

/***** Dusts *****/
//recipes.replaceAllOccurences(oreDict["dustAshes"], hashDust["Ash"]);
//recipes.replaceAllOccurences(oreDict["dustEnder"], hashDust["EnderPearl"]);
//recipes.replaceAllOccurences(oreDict["dustNetherQuartz"], hash["Quartz"]);

//hashDust["BloodInfusedGlowstone"].add(<bloodarsenal:base_item:2>);
//recipes.replaceAllOccurences(<bloodarsenal:base_item:2>, hashDust["BloodInfusedGlowstone"]);

hashDust["Ember"].add(<embers:dust_ember>);
//recipes.replaceAllOccurences(<embers:dust_ember>, hashDust["Ember"]);

hashDust["Flux"].add(<fluxnetworks:flux>);
//recipes.replaceAllOccurences(<fluxnetworks:flux>, hashDust["Flux"]);

//hashDust["Illumination"].add(<astralsorcery:itemusabledust>);
//recipes.replaceAllOccurences(<astralsorcery:itemusabledust>, hashDust["Illumination"]);

hashDust["Metallurgic"].add(<embers:dust_metallurgic>);
//recipes.replaceAllOccurences(<embers:dust_metallurgic>, hashDust["Metallurgic"]);

//hashDust["Nocturnal"].add(<astralsorcery:itemusabledust:1>);
//recipes.replaceAllOccurences(<astralsorcery:itemusabledust:1>, hashDust["Nocturnal"]);

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

/***** Small Dusts *****/
if (!<ore:dustSmallAluminum>.empty) {
    for item in oreDict["dustSmallAluminum"].items {
        hashDustSmall["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["dustSmallAluminum"], hashDustSmall["Aluminium"]);
}

/***** Plates *****/
//hashPlate["StygianIron"].add(<woot:stygianironplate>);
//recipes.replaceAllOccurences(<woot:stygianironplate>, hashPlate["StygianIron"]);

if (!<ore:plateAluminum>.empty) {
    for item in oreDict["plateAluminum"].items {
        hashPlate["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(<ore:plateAluminum>, hashPlate["Aluminium"]);
}

/***** Dense Plates *****/
if (!<ore:plateDenseAluminum>.empty) {
    for item in oreDict["plateDenseAluminum"].items {
        hashPlateDense["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["plateDenseAluminum"], hashPlateDense["Aluminium"]);
}

/***** Rods *****/
hashRod["Aluminium"].add(<immersiveengineering:material:3>);
//recipes.replaceAllOccurences(oreDict["stickAluminium"], hashRod["Aluminium"]);
//recipes.replaceAllOccurences(oreDict["stickAluminum"], hashRod["Aluminium"]);

hashRod["Iron"].add(<immersiveengineering:material:1>);
//recipes.replaceAllOccurences(oreDict["stickIron"], hashRod["Iron"]);

hashRod["Steel"].add(<immersiveengineering:material:2>);
//recipes.replaceAllOccurences(oreDict["stickSteel"], hashRod["Steel"]);

if (!<ore:rodAluminum>.empty) {
    for item in oreDict["rodAluminum"].items {
        hashRod["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["rodAluminum"], hashRod["Aluminium"]);
}

/***** Gears *****/
hashGear["Redstone"].add(<mysticalmechanics:gear_gold_off>);
//recipes.replaceAllOccurences(<mysticalmechanics:gear_gold_off>, hashGear["Redstone"]);

hashGear["RedstoneInverted"].add(<mysticalmechanics:gear_gold_on>);
//recipes.replaceAllOccurences(<mysticalmechanics:gear_gold_on>, hashGear["RedstoneInverted"]);

if (!<ore:gearAluminum>.empty) {
    for item in oreDict["gearAluminum"].items {
        hashGear["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["gearAluminum"], hashGear["Aluminium"]);
}

/********** Blocks **********/
/***** Blocks *****/
//hashBlock["BloodInfusedIron"].add(<bloodarsenal:blood_infused_iron_block>);
//recipes.replaceAllOccurences(<bloodarsenal:blood_infused_iron_block>, hashBlock["BloodInfusedIron"]);

//hashBlock["Ender"].add(<extendedcrafting:storage:5>);
//recipes.replaceAllOccurences(<extendedcrafting:storage:5>, hashBlock["Ender"]);

//hashBlock["EnderEnhanced"].add(<extendedcrafting:storage:7>);
//recipes.replaceAllOccurences(<extendedcrafting:storage:7>, hashBlock["EnderEnhanced"]);

//hashBlock["EnderStar"].add(<extendedcrafting:storage:6>);
//recipes.replaceAllOccurences(<extendedcrafting:storage:6>, hashBlock["EnderStar"]);

//hashBlock["Flux"].add(<fluxnetworks:fluxblock>);
//recipes.replaceAllOccurences(<fluxnetworks:fluxblock>, hashBlock["Flux"]);

//hashBlock["GlitchInfused"].add(<deepmoblearning:infused_ingot_block>);
//recipes.replaceAllOccurences(<deepmoblearning:infused_ingot_block>, hashBlock["GlitchInfused"]);

//hashBlock["MeatCooked"].add(<industrialmeat:cooked_meat_block>);
//recipes.replaceAllOccurences(<industrialmeat:cooked_meat_block>, hashBlock["MeatCooked"]);

//hashBlock["MeatRaw"].add(<industrialmeat:raw_meat_block>);
//recipes.replaceAllOccurences(<industrialmeat:raw_meat_block>, hashBlock["MeatRaw"]);

//hashBlock["StygianIron"].add(<woot:stygianiron>);
//recipes.replaceAllOccurences(<woot:stygianiron>, hashBlock["StygianIron"]);

if (!<ore:blockAluminum>.empty) {
    for item in oreDict["blockAluminum"].items {
        hashBlock["Aluminium"].add(item);
    }
    //recipes.replaceAllOccurences(oreDict["blockAluminum"], hashBlock["Aluminium"]);
}
