extends Control

export(int) var countdownMax
var currentTimer

func _ready():
	set_process(true)
	for childNode in $HUD.get_children():
		if childNode is Button:
			childNode.connect("pressed", self, "_on_Button_pressed", [childNode.scene_to_load])
#this actvates a countdown in which the game will end if it reaches zero 
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1 
		print(currentTimer)
	print("Game Over")
	get_tree().change_scene("res://mainGame/lose.tscn")
#this checks the scoring system and if all enemies are dead then go on to level 2 
func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if get_tree().get_nodes_in_group("enemy").size() == 0:
		get_tree().change_scene("res://mainGame/Level2.tscn")






