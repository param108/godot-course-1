extends CanvasLayer

onready var label = $TextureRect/Label
onready var lineEdit = $TextureRect/LineEdit
onready var okBtn = $TextureRect/Ok
onready var rect = $TextureRect
onready var submitBtn = $TextureRect/Submit

# Called when the node enters the scene tree for the first time.
func _ready():
	rect.visible = false
	SignalBus.connect("show_dialog", self, "on_show_dialog")
	SignalBus.connect("close_dialog", self, "on_close_dialog")
	
func update_controls(text_key):
	lineEdit.text = GlobalData[text_key]["dialog"]
	if GlobalData.dialog_data[text_key]["need_input"]:
		okBtn.visible = true
		submitBtn.visible = true
	else:
		okBtn.visible = false
		submitBtn.visible = false
		

func on_show_dialog(text_key):
	rect.visible = true
	GlobalData.current_dialog_key = text_key
	
func on_close_dialog():
	rect.visible = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
