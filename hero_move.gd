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

	if GlobalData.reentered:
		var point = GlobalData.reentry_points[GlobalData.reentered_from]
		position.x = point["x"]
		position.y = point["y"]
		GlobalData.reentered = false
		
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
func _process(delta):
	pass




func _on_TopLeftCollision_area_entered(area):
	get_tree().change_scene("res://top_left_house.tscn")


func _on_BottomLeftCollision_area_entered(area):
	get_tree().change_scene("res://bottom_left_house.tscn")



func _on_TopRightCollision_area_entered(area):
	get_tree().change_scene("res://top_right_house.tscn")



func _on_BottomRightCollision_area_entered(area):
	get_tree().change_scene("res://bottom_right_house_.tscn")



func _on_bumplake_area_entered(area):
	if (GlobalData.inventory ["map_bottom_left"] == true and
		GlobalData.inventory ["map_top_left"] == true and
		GlobalData.inventory ["map_bottom_right"] == true and
		GlobalData.inventory ["map_top_right"] == true and
		GlobalData.inventory["fishing_rod"] == true):
			GlobalData.inventory["key"] = true
			SignalBus.emit_signal("show_dialog","spotted_key")
	else:
		SignalBus.emit_signal("show_dialog","spotted_shimmering_object")
	
	
