const fs = require("fs");

const modlist = String(fs.readFileSync("../../dumps/tellme/Mod-List.txt"));

const mods = modlist.split("\n").slice(3, -4).map(x => {
	let info = x.split("|").map(y => y.trim());
	return info[2];
});

const spreadsheet = String(fs.readFileSync("./Sheet-Mods.txt"));

const spreadsheetMods = spreadsheet.split(/(\t|\n)/).filter(x => {
	return x !== "" && x !== "\t" && x !== "\r" && x !== "\n";
}).map(x => x.trim());

const ignored = [
	"RLCraft Expansion",
	"Just A Ore Processing Compatibility Attempt: Customized",
	"Multiblockstages",
	"NuclearCraft",
	"Waila",

	"BQ - Structure and Multiblock Integration",
	"JAOPCA: Customized",
	"Multiblock Stages",
	"NuclearCraft: Overhauled",
	"Hwyla"
];

console.log("Total Mods: " + mods.length);

mods.forEach(value => {
	if (!spreadsheetMods.map(x => x.toLowerCase()).includes(value.toLowerCase()) && !ignored.some(x => x === value)) {
		console.log("Only Mod List contains: " + value);
	}
});

spreadsheetMods.forEach(value => {
	if (!mods.map(x => x.toLowerCase()).includes(value.toLowerCase()) && !ignored.some(x => x === value)) {
		console.log("Only Spreadsheet contains: " + value);
	}
});
