class_name PeaShooter
extends Charater
@export var control_scheme: ControlScheme
@export var speed: float
@onready var collision_shape: CollisionShape2D = $CollisionShape2D
enum State {MOVE}
var current_state: PeaShooterState = null
var state_factory: PeashooterStateFactory = PeashooterStateFactory.new()


func _ready() -> void:
	switch_state(State.MOVE)

func switch_state(state: State) -> void:
	if current_state != null:
		current_state.queue_free()
	current_state = state_factory.get_fresh_state(state)
	current_state.setup(self, collision_shape)
	current_state.state_transition_requested.connect(switch_state.bind())
	current_state.name = "PeaShooterStateMachine" + str(State.keys()[state])
	call_deferred("add_child", current_state) 


	
	
