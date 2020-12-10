const fs = require("fs");

const switchId = require("./id_switch.js");

function shiftId([start, end]) {
	const quests = JSON.parse(fs.readFileSync("../../config/betterquesting/saved_quests/Auto.json"))["questDatabase:9"];
	
	if (start > 0 && end < Object.keys(quests).length) {
		for (let i = end; i > start + 1; i--) {
			switchId([i - 1, i]);
		}
	}
}


const args = process.argv.slice(2, 4).map(x => Number(x));
shiftId(args);