extends KinematicBody2D

export var linear_speed : float = 300.0

var _2d_velocity : = Vector2.ZERO

func _physics_process(delta: float) -> void:
	_2d_velocity.x += linear_speed * delta
	_2d_velocity.y += linear_speed * delta
	_2d_velocity = move_and_slide(_2d_velocity)
