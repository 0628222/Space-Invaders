extends KinematicBody2D

var speed = 500


func _ready():
	set_physics_process(true)

func _physics_process(delta):
		var collidedObject = move_and_collide(Vector2(0, -speed*delta))
