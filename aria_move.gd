extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const WALK_SPEED = 1
const WALK_DURATION = 1.5
var delta_spent = 0
var current_action = "DOWN"
var path = ["UP","RIGHT","LEFT","LEFT","RIGHT","DOWN","STOP"]
var current_index = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _physics_process(delta):
	var velocity = Vector2.ZERO
	delta_spent = delta_spent + delta
	if delta_spent > WALK_DURATION:
		delta_spent = 0
		current_index = current_index + 1
		if current_index >= path.size():
			current_index = 0
	current_action = path[current_index]
		
	if current_action == "LEFT":
		velocity = Vector2.LEFT*WALK_SPEED
	elif current_action == "RIGHT":
		velocity =  Vector2.RIGHT*WALK_SPEED
	elif current_action == "UP":
		velocity = Vector2.UP*WALK_SPEED
	elif current_action == "DOWN":
		velocity = Vector2.DOWN*WALK_SPEED
	else:
		velocity = Vector2.ZERO
	move_and_collide(velocity)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
