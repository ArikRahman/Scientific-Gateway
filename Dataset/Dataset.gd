extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Results.text = "Showing results for " + Globals.search
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CheckButton_toggled(button_pressed):
	$TextEdit.readonly = !button_pressed
	pass # Replace with function body.


func _on_Button_pressed():
	self.visible = false
	pass # Replace with function body.
