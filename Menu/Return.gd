extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



func _ready():
	pass 
	

func _on_Return_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")
