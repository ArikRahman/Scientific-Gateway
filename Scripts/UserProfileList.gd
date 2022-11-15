extends ItemList


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_item_text(0, "Hello, " + Globals.user + "!")
	self.set_item_text(1, "Logout")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_UserProfileList_mouse_exited():
	self.auto_height = false
	pass # Replace with function body.


func _on_UserProfileList_mouse_entered():
	self.auto_height = true
	pass # Replace with function body.


func _on_UserProfileList_item_selected(index):
	if index == 1:
		self.queue_free()
	pass # Replace with function body.
