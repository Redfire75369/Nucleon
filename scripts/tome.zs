#loader crafttweaker reloadable
#priority 0

import crafttweaker.item.IItemStack;
import mods.jei.JEI.addItem;

val tome = <akashictome:tome>.withTag({
	"akashictome:data": {
		alet: {
			id: "alet:little_manual",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "alet",
			},
		},
		betterquesting: {
			id: "betterquesting:quest_book",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "betterquesting",
			},
		},
		embers: {
			id: "embers:codex",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "embers",
			},
		},
		industrialforegoing: {
			id: "industrialforegoing:book_manual",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "industrialforegoing",
			},
		},
		industrialrenewal: {
			id: "industrialrenewal:ir_manual",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "industrialrenewal",
			},
		},
		magneticraft: {
			id: "magneticraft:guide_book",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "magneticraft",
			},
		},
		nuclearcraft: {
			id: "patchouli:guide_book",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "pneumaticcraft",
				"patchouli:book": "nuclearcraft:guide",
			},
		},
		opencomputers: {
			id: "opencomputers:tool",
			Count: 1,
			Damage: 4 as short,
			tag: {
				"akashictome:definedMod": "opencomputers",
			},
		},
		pneumaticcraft: {
			id: "patchouli:guide_book",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "pneumaticcraft",
				"patchouli:book": "pneumaticcraft:book",
			},
		},
		qmd: {
			id: "patchouli:guide_book",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "pneumaticcraft",
				"patchouli:book": "qmd:guide",
			},
		},
		woot: {
			id: "guideapi:woot-guide",
			Count: 1,
			Damage: 0 as short,
			tag: {
				"akashictome:definedMod": "woot",
			},
		},
	},
});

tome.addTooltip(format.darkAqua("Contains all mod manuals."));
addItem(tome);

recipes.remove(<akashictome:tome>);
recipes.addShapeless("akashic_tome", tome, [
	<ore:plankWood>, <ore:treeSapling>,
]);

val manuals = [
	<alet:little_manual>,
	<betterquesting:quest_book>,
	<embers:codex>,
	<industrialforegoing:book_manual>,
	<industrialrenewal:ir_manual>,
	<magneticraft:guide_book>,
	<patchouli:guide_book>.withTag({"patchouli:guide": "nuclearcraft:guide"}),
	<opencomputers:tool:4>,
	<patchouli:guide_book>.withTag({"patchouli:guide": "pneumaticcraft:book"}),
	<patchouli:guide_book>.withTag({"patchouli:guide": "qmd:guide"}),
	<guideapi:woot-guide>,
] as IItemStack[];

for manual in manuals {
	manual.addTooltip(format.darkAqua("Included within the default Akashic Tome."));
}
