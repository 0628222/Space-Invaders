extends Control

export(int) var countdownMax
var currentTimer


func _ready():
	set_process(true)
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)

	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1 
		print(currentTimer)
		print("Game Over")
		get_tree().change_scene("res://Menu/Menu.tscn")

func _process(delta):
	$HUD/Countdown.text = str(GlobalVariables.scoringInformation["currentScore"])
