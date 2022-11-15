extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	print("!")
#	Globals.user_list()
	if Globals.loggedIn == true:
		var list = load("res://Scenes/UserProfileList.tscn").instance()
		add_child(list)
		$UploadBtn.visible = true
#		print("!")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ContactBtn_pressed():
	get_tree().change_scene("res://Scenes/Contact.tscn")
	
	pass # Replace with function body.





func _on_UserProfileList_mouse_entered():
	$UserProfileList.auto_height = true
	
	pass # Replace with function body.


func _on_UserProfileList_mouse_exited():
	$UserProfileList.auto_height = false
	pass # Replace with function body.


func _on_UserProfileList_item_activated(index):
	if index == 1:
		$UserProfileList.visible = false
		$Hider.visible = false
	pass # Replace with function body.



func _on_UserProfileList_item_selected(index):
	if index == 1:
		$UserProfileList.visible = false
		$Hider.visible = false
	pass # Replace with function body.


func _on_UploadBtn_pressed():
	get_node("%FileDialog").visible = true
	pass # Replace with function body.


func _on_LoginBtn_pressed():
	get_tree().change_scene("res://Scenes/LoginPage.tscn")
	pass # Replace with function body.


func _on_FileDialog_file_selected(path: String):
	print(path)
	var file = File.new()
	file.open(path, File.READ)
	var content = file.get_as_text()
	file.close()
#	print(content)
	file.open("res://saved", File.WRITE)
	file.store_string(content)
	file.close()
	


	
	
	
	pass # Replace with function body.
