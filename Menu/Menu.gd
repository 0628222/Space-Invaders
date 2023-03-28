extends Control



func _on_button_pressed(scene_to_load):
	print("Changing Scene...")
	print(scene_to_load)
	get_tree().change_scene(scene_to_load)


	var file = File.new()
	if file.file_exists(GlobalVariables.saveFile):
		var error = file.open(GlobalVariables.saveFile, File.READ)
		if error == OK:
			var player_data = file.get_var()
			file.close()
			GlobalVariables.scoringInformation = player_data


onready var anim = $AnimationPlayer

func _ready():

	anim.play("Opening GIF")
