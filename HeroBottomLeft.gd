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
	GlobalData.reentered_from = "bottom_left_house"
	get_tree().change_scene("res://opening.tscn")


func _on_bumpbl_area_entered(area):
	GlobalData.bottom_left_spoken_to_npc = true
	SignalBus.emit_signal("show_dialog","james")

func _on_bumpmapb_area_entered(area):
	GlobalData.bottom_left_spoken_to_npc
	GlobalData.inventory["map_bottom_left"]
	if GlobalData.bottom_left_spoken_to_npc == true :
		if GlobalData.inventory["map_bottom_left"] == false:
			GlobalData.inventory["map_bottom_left"] = true
			SignalBus.emit_signal("show_dialog","found_bottom_left")
			GlobalData.inventory
	if GlobalData.bottom_left_spoken_to_npc == true :
		if GlobalData.inventory["map_bottom_left"] == true:
			GlobalData.inventory["map_bottom_left"] = false
			SignalBus.emit_signal("show_dialog","already_found_bottom_left")
	
