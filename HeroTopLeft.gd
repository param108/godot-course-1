extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const WALK_SPEED = 2
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_left"):
		velocity = Vector2.LEFT*WALK_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity =  Vector2.RIGHT*WALK_SPEED
	elif Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP*WALK_SPEED
	elif Input.is_action_pressed("ui_down"):
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






func _on_OpeningOutsideCollison_area_exited(area):
	pass # Replace with function body.


func _on_OpeningOutsideCollison_area_entered(area):
	GlobalData.reentered = true
	GlobalData.reentered_from = "top_left_house"
	get_tree().change_scene("res://opening.tscn")


func _on_bumptl_area_entered(area):
	SignalBus.emit_signal("show_dialog","rug_riddle")
	GlobalData.top_left_spoken_to_npc = true
	




func _on_bumprugs_area_entered(area):

	if GlobalData.top_left_spoken_to_npc == true:
		if GlobalData.inventory["map_top_left"] == false:
			GlobalData.inventory["map_top_left"] = true
			SignalBus.emit_signal("show_dialog","found_top_left")
		
