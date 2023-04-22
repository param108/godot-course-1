extends KinematicBody2D

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

func _on_TopRightHouseExit_area_entered(area):
	GlobalData.reentered = true
	GlobalData.reentered_from = "top_right_house"
	get_tree().change_scene("res://opening.tscn")


func _on_Area2D_area_entered(area):
	print("area entered")
	GlobalData.top_right_spoken_to_npc = true 
	SignalBus.emit_signal("show_dialog","saira_clue")

func _on_map_found_area_entered(area):
	print("mapfond")
	if GlobalData.top_right_spoken_to_npc == true:
		if GlobalData.inventory["map_top_right"] == false:
			GlobalData.inventory["map_top_right"] = true 
			SignalBus.emit_signal("show_dialog","map_top_right_found")
		elif GlobalData.inventory["map_top_right"] == true:
			SignalBus.emit_signal("show_dialog","already_found_top_right")


func _on_fishing_rod_find_area_entered(area):
	if (GlobalData.inventory["map_top_right"] == true and
		GlobalData.inventory["map_top_left"] == true and
		GlobalData.inventory ["map_bottom_right"] == true and 
		GlobalData.inventory ["map_bottom_left"] == true):
		GlobalData.inventory["fishing_rod"] = true
		SignalBus.emit_signal("show_dialog","found_fishing_rod")
		
