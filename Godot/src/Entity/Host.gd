extends KinematicBody2D
class_name Host

var AreasOverlapping
var Item: String
var hacker : bool
export var linear_speed : = Vector2(300.0, 300.0)
var inventory

var _2d_velocity : = Vector2.ZERO

func _ready():
	inventory = Inventory.new()

func _physics_process(delta: float) -> void:
	var direction : = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	_2d_velocity= linear_speed * direction
	_2d_velocity = move_and_slide(_2d_velocity)
	
func _input(event):
	if event is InputEventKey and not event.is_echo():
		if event.pressed and event.scancode == KEY_J:
			if hacker:
				Item = inventory.Item1
				inventory.Drop()
				#give the player Item
			#else if false:
				inventory.AddNew("Cheese")
		if event.pressed and event.scancode == KEY_L:
			inventory.Switch()
		if event.pressed and event.scancode == KEY_K:
			inventory.Drop()
