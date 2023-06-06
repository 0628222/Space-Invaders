extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



func _ready():
	pass 
	
#this allow the player upon pressing the button in order to go back to the main menu 
func _on_Return_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")
