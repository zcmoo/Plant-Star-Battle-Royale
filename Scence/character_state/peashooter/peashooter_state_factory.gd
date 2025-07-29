class_name PeashooterStateFactory
var states : Dictionary


func _init() -> void:
	states = {
		PeaShooter.State.MOVE: PeaShooterStateMove
	}

func get_fresh_state(state: PeaShooter.State) -> PeaShooterState:
	assert(states.has(state), "state don't exist!")
	return states.get(state).new()
