extends KinematicBody2D
onready var Anim = $AnimationPlayer
var bullet = preload("res://Bullet-Enemy/bullet-Special-Enemy.tscn")
export (int) var health = 10
var speed = 50


#this checks where the enemy is and then makes them moving accordingly to what group their in and their position 
func _colliding(area):
	if area.is_in_group("right2"):
		get_parent().global_position.x += 10
		get_parent().speed = get_parent().speed * -1
	if area.is_in_group("left2"):
		get_parent().global_position.x += 10
		get_parent().speed =get_parent().speed * -1

# this is using a random number generator to determine when the enemy
#this makes the gif play for them to shoot


func _physics_process(delta):
	global_position.x += speed * delta

func _process(delta):
#	while (true):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(2.0, 30.0)
	#print("time: ",my_random_number)
	yield(get_tree().create_timer(my_random_number), "timeout")
	if GlobalVariables.enemyBulletInstanceCount < 5:
		var bulletInstance = bullet.instance()
		
		bulletInstance.position = Vector2(global_position.x, global_position.y+20)
		get_tree().get_root().add_child(bulletInstance)
# this reduces the health of the special enemy 
func reduceHealth():
	health -= 1
	if health == 0:
		queue_free()
