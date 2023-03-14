extends Button

func _on_Start_Game_Button_pressed():
	get_tree().change_scene("res://MainGame/MainGame.tscn")

export(String) var scene_to_load
