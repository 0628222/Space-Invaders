extends Button



# this takes the player back to the main menu when pressed
func _on_Button_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")
