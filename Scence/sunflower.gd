class_name SunFlower
extends CharacterBody2D
const GRAVITY = 1200


func _process(delta: float) -> void:
	velocity.y += GRAVITY * delta  
	move_and_slide()
	
