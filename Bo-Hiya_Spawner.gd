extends Area2D

const powerup = preload("res://Player/Bo-Hiya.tscn")
onready var timer_started = false 


func _ready():
	pass 

func _process(delta):
	#set timer
	if timer_started == false:
		$Bo_Hiya_Timer.wait_time = rand_range(1.0, 2.0)
		$Bo_Hiya_Timer.start 
		timer_started = true


func _on_Bo_hiya_timeout():
	randomize()
	var aPow = powerup.instance()
	var aPos = Vector2()
	aPos.x = rand_range(aPow.SpriteSize - 150, get_viewport().get_visible_rect().size.x - aPow.spriteSize + 50)
	aPos.y = 0 -aPow.spritesize - 400
	aPow.position = aPos 
	$Container.add_child(aPow)
	#set timer again 
	$Bo_Hiya_Timer.wait_time = rand_range(0.5, 2.0)
	$Bo_Hiya.start() 
	
