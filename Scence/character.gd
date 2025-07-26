class_name Charater
extends CharacterBody2D
@onready var animation_play = $AnimationPlayer
const GRAVITY = 980
enum State {IDLE, WALK}
var state: State


func _ready() -> void:
	state = State.IDLE

func _process(delta: float) -> void:
	velocity.y += GRAVITY * delta
	move_and_slide()
	if state == State.IDLE:
		animation_play.play("idle")
		
	
