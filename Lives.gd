extends Node2D

func _ready():
	Livecounter.lives=1

func _physics_process(delta):
	
	if Livecounter.lives == 2:
		$Live3.hide()
	if Livecounter.lives == 1:
		$Live3.hide()
	if Livecounter.lives == 0:
		get_tree().change_scene("res://MainGame/lose.tscn") 
