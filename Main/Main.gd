extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selected = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Welcome.text = "Welcome, " + Globals.username + "!" 
	pass


func _on_Button_pressed():
	var simultaneous_scene = preload("res://Login/Login.tscn").instance()
	get_tree().get_root().add_child(simultaneous_scene)
	$Login.visible = false
	$Welcome.visible = true
	$Welcome.text = "Welcome, " + Globals.username + "!" 
	pass # Replace with function body.


func _on_LineEdit_text_entered(new_text):
	if selected == 0:
		$Warning.text = "Please select a type"
	elif new_text == "":
		$Warning.text = "Please enter a search term."
	else:
		$Warning.text = ""
		if new_text != "":
			Globals.search = new_text
			var dataset_scene = preload("res://Dataset/Dataset.tscn").instance()
			get_tree().get_root().add_child(dataset_scene)
			
	pass # Replace with function body.


func _on_ItemList_item_selected(index):
	print("index")
	selected = index
	pass # Replace with function body.


func _on_Options_item_selected(index):
	print(index)
	selected = index
	
	pass # Replace with function body.
