extends KinematicBody2D

export var linear_speed : = Vector2(300.0, 300.0)

var _2d_velocity : = Vector2.ZERO

func _physics_process(delta: float) -> void:
	var direction : = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	_2d_velocity= linear_speed * direction
	_2d_velocity = move_and_slide(_2d_velocity)
