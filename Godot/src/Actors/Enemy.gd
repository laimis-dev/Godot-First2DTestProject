extends "res://src/Actors/Actor.gd"

func _ready():
	velocity.x = -speed.x

func _physics_process(delta):
	if is_on_wall():
		velocity.x *= -1.0
		
	velocity = move_and_slide(velocity, FLOOR_NORMAL)
