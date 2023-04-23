extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.emit_signal("show_dialog","intro_dialog")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
