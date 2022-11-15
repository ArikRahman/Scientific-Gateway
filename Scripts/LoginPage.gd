extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func change_to_homescreen():
	
	get_tree().change_scene("res://Scenes/HomePage.tscn")

func update_user(username, password):
	
	
	Globals.loggedIn = true
	Globals.user = username
	Globals.password = password
	
	change_to_homescreen()
	

func _on_PasswordLine_text_entered(new_text):
	var username = $UserLine.text
	var password = new_text
	
	
	if username == "arik" and password == "123123":
		
		update_user(username, password)
	elif username == "lanclos" and password == "123123":
		
		update_user(username, password)
	else:
		$WarningLabel.text = "Please try again"
		
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
