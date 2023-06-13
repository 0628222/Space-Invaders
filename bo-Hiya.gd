extends Area2D
export var velocity = Vector2()
export var spriteSize = int()


func _ready():
	pass

func _process(delta):
	translate(velocity * delta)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()

func _on_boHiya_body_entered(body: KinematicBody2D):
	queue_free()
