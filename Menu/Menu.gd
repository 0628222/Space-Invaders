extends Control
#this is the variable in order start the animation  
onready var anim = $AnimationPlayer
#this starts the Animation when the game starts 
func _ready():
	anim.play("Opening GIF")

