class_name PeaShooterState
extends Node
signal state_transition_requested(new_state: PeaShooter.State)
var peashooter: PeaShooter = null
var collision_shape: CollisionShape2D = null

func setup(context_peashooter: PeaShooter, context_collisionshape = CollisionShape2D) -> void:
	peashooter = context_peashooter
	collision_shape = context_collisionshape

func transition_state(new_state: PeaShooter.State) ->void:
	state_transition_requested.emit(new_state)
	
