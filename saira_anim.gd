extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var current_action = get_parent().current_action
	if current_action == "UP":
		play("up")
	elif current_action == "DOWN":
		play("down")
	elif current_action == "RIGHT":
		play("right")
	elif current_action == "LEFT":
		play("left")
	else:
		play("down")
		stop()
