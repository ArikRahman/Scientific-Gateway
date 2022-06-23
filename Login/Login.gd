extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Pass_text_entered(new_text):
	Globals.username = $User.text
	
	
	pass # Replace with function body.


func _on_User_text_entered(new_text):
	if $User.text == "":
		$User.text = "Please enter a username"
	else:
		Globals.username = $User.text
	
	pass # Replace with function body.


func _on_Button_pressed():
	if $User.text == "":
		$Label.text = "Please enter a username"
	else:
		Globals.username = $User.text
		self.visible = false
		
	pass # Replace with function body.
