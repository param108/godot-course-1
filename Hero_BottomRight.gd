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
	pass # Replace with function body.extends KinematicBody2D





func _on_Area2D_area_entered(area):
	GlobalData.reentered = true
	GlobalData.reentered_from = "bottom_right_house"
	get_tree().change_scene("res://opening.tscn")



func _on_Area2D2_area_entered(area):
	GlobalData.bottom_right_spoken_to_npc = true
	print("reached")
	SignalBus.emit_signal("show_dialog","aria_clue")
		


func _on_map_piece_area_entered(area):
	print("hallo")
	if GlobalData.bottom_right_spoken_to_npc == true:
		if GlobalData.inventory["map_bottom_right"] == false: 
			GlobalData.inventory["map_bottom_right"] = true
			SignalBus.emit_signal("show_dialog","found_bottom_right_map") 
		elif  GlobalData.inventory["map_bottom_right"] == true:
			SignalBus.emit_signal("show_dialog","already_found_bottom_right")
