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
}
