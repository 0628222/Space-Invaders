extends Button

onready var anim = $AnimationPlayer
func _ready():
	anim.play("SpecialEnemyGIF")



func _on_Layout_pressed():
	get_tree().change_scene("res://Menu/Menu.tscn")

