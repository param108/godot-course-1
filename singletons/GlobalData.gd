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
	},
	"rug_riddle":{
		"dialog": """Hello ! You must be the reknowed Dr.Zoey, I've heard a lot
		lot about you.Yes,One of the pieces of the map is here but I forgot 
		where it was.Maybe you can search my house.My parents had a fervour for
		rugs and I love them too! RUGS RUGS RUGS!!!
		
		My parents told me this riddle when I was young, Here it is! :
		Go to the abode of relaxation and peace 
		Search the rug made of fleece 
		Then you might find 
		The fifth vase from the fourth the map of my kind """,
		"need_input" : false,
		"choices" : {}
	},
	"saira_clue":{
		"dialog":""" hi i am saira . You must be the archaeologist Dr. Zoey . you must be searching for the map fragments .
 Well , here’s a verse which my parents gave me , hopefully it will help you . 
The room is big , the rugs are long ,somewhere in that room lies a piece .
Good luck on your search . When you are done with the search , we should go fishing .""",
	"need_input": false,
	}}


		


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
