extends KinematicBody2D
onready var anim = $AnimationPlayer
var bullet = preload("res://Bullet-Enemy/bullet-Special-Enemy.tscn")
export (int) var health = 3


#this makes the gif play for them to shoot
func _ready():
	anim.play("SpecialEnemyGIF")

func hide_for_time(t):
	visible = false
	yield(get_tree().create_timer(t), "timeout")
	visible = true

#func 
	#get_node(SpecialFiring.png).hide_for_time(2.0)


func _process(delta):
#	while (true):
	#var rng = RandomNumberGenerator.new()
	#rng.randomize()
	#var my_random_number = rng.randf_range(2.0, 30.0)
	#yield(get_tree().create_timer(my_random_number), "timeout")
	if GlobalVariables.enemyBulletInstanceCount < 5:
		var bulletInstance = bullet.instance()
		bulletInstance.position = Vector2(global_position.x, global_position.y+20)
		get_tree().get_root().add_child(bulletInstance)
# this reduces the health of the special enemy 
func reduceHealth():
	health -= 1
	if health == 0:
		queue_free()
