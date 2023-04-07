extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const WALK_SPEED = 2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		play("up")
	elif Input.is_action_pressed("ui_down"):
		play("down")
	elif Input.is_action_pressed("ui_right"):
		play("right")
	elif Input.is_action_pressed("ui_left"):
		play("left")
	else:
		stop()
