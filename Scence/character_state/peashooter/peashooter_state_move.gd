class_name PeaShooterStateMove
extends PeaShooterState
const JUMP_VELOCITY = -500


func _process(_delta: float) -> void:
	handle_movement()

func handle_movement() -> void:
	var direction := KeyUtils.get_input_vector(peashooter.control_scheme)
	peashooter.velocity.x = direction.x * peashooter.speed
	collision_shape.disabled = true if peashooter.velocity.y < 0 else false
	if peashooter.velocity.y == 0 and KeyUtils.is_action_just_pressed(peashooter.control_scheme, KeyUtils.Action.JUMP):
		peashooter.velocity.y = JUMP_VELOCITY
	




	
