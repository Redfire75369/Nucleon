const fs = require("fs");

function switchId(args) {
	if (args.length === 2) {
		/* Parse Input */
		const json = JSON.parse(fs.readFileSync("../../config/betterquesting/saved_quests/Auto.json"));

		const format = json["format:8"];
		const quests = json["questDatabase:9"];
		const questlines = json["questLines:9"];
		const settings = json["questSettings:10"];

		const newQuests = Object.assign({}, quests);
		
		const ids = [
			Object.keys(quests).filter(x => Number(quests[x]["questID:3"]) == Number(args[0]))[0],
			Object.keys(quests).filter(x => Number(quests[x]["questID:3"]) == Number(args[1]))[0]
		];

		if (ids[0] !== undefined && ids[1] !== undefined) {
			newQuests[ids[0]] = Object.assign({}, quests[ids[1]]);
			newQuests[ids[0]]["questID:3"] = Number(args[0]);
			newQuests[ids[1]] = Object.assign({}, quests[ids[0]]);
			newQuests[ids[1]]["questID:3"] = Number(args[1]);
		} else if (ids[0] !== undefined) {
			newQuests[args[1] + ":10"] = Object.assign({}, quests[ids[0]]);
			newQuests[args[1] + ":10"]["questID:3"] = Number(args[1]);
			newQuests[ids[0]] = undefined;
		} else if (ids[1] !== undefined) {
			newQuests[args[0] + ":10"] = Object.assign({}, quests[ids[1]]);
			newQuests[args[0] + ":10"]["questID:3"] = Number(args[0]);
			newQuests[ids[1]] = undefined;
		}

		Object.keys(newQuests).forEach(index => {
			if (newQuests[index] !==  undefined) {
				//console.log(newQuests[index]);
				const preRequisites = newQuests[index]["preRequisites:11"];
	
				const includes = [preRequisites.includes(Number(args[0])), preRequisites.includes(Number(args[1]))];
				const find = [preRequisites.indexOf(Number(args[0])), preRequisites.indexOf(Number(args[1]))];
				if (includes[0]) {
					newQuests[index]["preRequisites:11"][find[0]] = Number(args[1]);
				}
				if (includes[1]) {
					newQuests[index]["preRequisites:11"][find[1]] = Number(args[0]);
				}
			}
		});
		
		const newQuestlines = Object.assign({}, questlines);
		
		Object.keys(questlines).forEach(index => {
			if (questlines[index] !== undefined) {
				const questline = Object.assign({}, questlines[index]["quests:9"]);
				
				const ids = [
					Object.keys(questline).filter(x => Number(questline[x]["id:3"]) == args[0])[0],
					Object.keys(questline).filter(x => Number(questline[x]["id:3"]) == args[1])[0]
				];
				
				if (ids[0] !== undefined && ids[1] !== undefined) {
					newQuestlines[index]["quests:9"][ids[0]]["id:3"] = Number(args[1]);
					newQuestlines[index]["quests:9"][ids[1]]["id:3"] = Number(args[0]);
				} else if (ids[0] !== undefined) {
					newQuestlines[index]["quests:9"][ids[0]]["id:3"] = Number(args[1]);
				} else if (ids[1] !== undefined) {
					newQuestlines[index]["quests:9"][ids[1]]["id:3"] = Number(args[0]);
				}
			}
		});
		
		/* Stringify Output */
		const newJson = {};
		newJson["format:8"] = format;
		newJson["questDatabase:9"] = newQuests;
		newJson["questLines:9"] = newQuestlines;
		newJson["questSettings:10"] = settings;
	
		fs.writeFileSync("../../config/betterquesting/saved_quests/Auto.json", JSON.stringify(newJson));
	}
}

module.exports = switchId;

const args = process.argv.slice(2, 4);
switchId(args);
