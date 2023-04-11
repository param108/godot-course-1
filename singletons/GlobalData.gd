extends Node


const dialog_data = {
	"meet_yuri": {
		"dialog": "Hi, You Look Like American. I give you help to find one artifact! Leave no RUG unturned",
		"need_input": false,
		"choices": {},
	},
	"didnt understand": {
		"dialog": "Sorry didn't understand the output.",
		"need_input": true,
		"choices": {},
	},
	"aria_clue":{
		"dialog": """Hallo ! You must be ‘The Dr, Zoey ‘ . My neighbor and best friend , Saira , told me you were coming to find
		the Treasure of the Kirghiz . Well , I am Aria ,nice to meet you . My friend Saira or ‘The Fisher’ told me that you
		would be coming in search of the map fragment.

		I can't help you much, but my parents taught me this riddle long long ago.
		My house has 2 bedrooms , 1 guest room and 1 kitchen . in one of these rooms lies a not belonging object locate it and you will 
		get the fragment """,
		"need_input" : false,
		"choices" : {}
	}
}

var current_dialog_key = ""

var reentered = false
var reentered_from = ""

const reentry_points = {
	"top_right_house": {
		"x": 850,
		"y": 265
	}
	, "bottom_right_house":{
		"x": 826 , 
		"y": 549
	},
	"bottom_left_house" :{
		"x": 150,
		"y": 550
	},
	"top_left_house":{
		"x":150,
		"y": 205
	}	
}
