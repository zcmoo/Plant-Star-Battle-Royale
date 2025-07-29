class_name Charater
extends CharacterBody2D
@onready var animation_player = $AnimationPlayer
@onready var character_sprite = $Sprite2D
enum ControlScheme {P1, P2}
const GRAVITY = 980
var heading = Vector2.RIGHT
var height = 0.0
var height_velocity = 0.0


func _process(delta: float) -> void:
	velocity.y += GRAVITY * delta
	set_movement_animation()
	set_heading()
	flip_sprite()
	move_and_slide()

func set_movement_animation() -> void:
	if velocity.x == 0:
		animation_player.play("idle")
	else:
		animation_player.play("move")

func set_heading() -> void:
	if velocity.x > 0:
		heading = Vector2.RIGHT
	elif velocity.x < 0:
		heading = Vector2.LEFT 

func flip_sprite() -> void:
	if heading == Vector2.RIGHT:
		character_sprite.flip_h = false
	elif heading == Vector2.LEFT:
		character_sprite.flip_h = true

func process_gravity(delta: float) -> void:
	if height > 0 or height_velocity > 0:
		height_velocity -= GRAVITY * delta
		height += height_velocity
		if height < 0:
			height = 0
	character_sprite.position = Vector2.UP * height
