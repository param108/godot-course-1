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
		"dialog": """Hallo ! You must be ‘The Dr, Zoey‘. 
		My neighbor and best friend, Saira, told me you were coming to find
		the Treasure of the Kirghiz . 
		
		Well, I am Aria, nice to meet you! You must be looking for the 
		map fragment.

		I can't help you much, but my parents taught me this riddle long long ago.
		
		My house has 2 bedrooms, 
		1 guest room and 1 kitchen. 
		In one of these rooms lies a not belonging object.
		Locate it and you will get the fragment """,
		
		"need_input" : false,
		"choices" : {}
	},
	"rug_riddle":{
		"dialog": """Hello ! You must be the renowned Dr.Zoey, I've heard a lot
		lot about you.Yes,One of the pieces of the map is here but I forgot 
		where it was.Maybe you can search my house.My parents had a fervour for
		rugs and I love them too! RUGS RUGS RUGS!!!
		
		My parents told me this riddle when I was young, Here it is! :
		Go to the realm of relaxation and peace 
		Search the scarlet and claret coloured rug made of fleece 
		Then you might find 
		The fifth vase from the fourth the map of my kind """,
		"need_input" : false,
		"choices" : {}
	},
	"saira_clue":{
		"dialog":""" Hi I am Saira! You must be the archaeologist Dr. Zoey. 
		You must be searching for the map fragments.
		Well , here’s a verse which my parents gave me, hopefully it will help you. 
		
		The room is big, 
		The rugs are long,
		Somewhere in that room lies a piece.
		Good luck on your search. 
		
		When you are done with the search, we should go fishing!""",
	"need_input": false,
	},
	"james": {
		"dialog":""" Hey Zoey! Long time no see!
		I hear you are looking for the Rexium!
		One of our ancient ancestors hid the key in the lake river.
		
		By the way, after you are done meet me at my home in the
		city.
		
		Oh! Now you want the map fragment you say ?
		I cant say for sure, feel free to look around.
		Our parents were bibliophiles, remember ?
		""",
		"need_input": false,
	},
	"found_bottom_right_map":{
		"dialog": """Good Job ! 
		 You found the map piece """,
		"need_input": false
		},
	"found_bottom_left":{
		"dialog":"""Congrats! You've found the bottom left map piece! """,
		"need_input": false,
	},
	"map_top_right_found":{
		"dialog": """ Very Very Well Done !!! 
		you have found the top right piece of the map """,
		"need_input":false,
		},
	"found_top_left":{
		"dialog": """Congrats! You've discovered the top left map piece """,
		"need input": false,
		}}
	
var current_dialog_key = ""

var reentered = false
var reentered_from = ""

const reentry_points = {
	"top_right_house": {
		"x": 830,
		"y": 265
	}
	, "bottom_right_house":{
		"x": 805 , 
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

var inventory = {
	"key": false,
	"map_top_right": false,
	"map_top_left": false,
	"map_bottom_right": false,
	"map_bottom_left": false
}

var top_right_spoken_to_npc = false
var bottom_left_spoken_to_npc = false
var bottom_right_spoken_to_npc = false
