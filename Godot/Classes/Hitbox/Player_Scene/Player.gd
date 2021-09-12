extends KinematicBody2D

const inventory = preload("res://Classes/Hitbox/Player_Scene/Inventory.gd")
var moveSpeed = 500
var AreasOverlapping
var Item: String
<<<<<<< HEAD
var Inventory
var hacker : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	Inventory = inventory.new() 
=======
var area = Area2D
var Inventory = inventory.new()
var test = "Hacker"

# Called when the node enters the scene tree for the first time.
func _ready():
	area = get_node("Area2D")
>>>>>>> master
	pass # Replace with function body.

func _physics_process(delta):
	var motion = Vector2()

	if Input.is_action_pressed("up"):
		motion.y -= 1
	if Input.is_action_pressed("down"):
		motion.y += 1
	if Input.is_action_pressed("left"):
		motion.x -= 1
	if Input.is_action_pressed("right"):
		motion.x += 1
	motion = motion.normalized()
	motion = move_and_slide(motion * moveSpeed)
	
	
func _input(event):
	if event is InputEventKey and not event.is_echo():
		if event.pressed and event.scancode == KEY_J:
<<<<<<< HEAD
			print_debug("J was pressed")
			if hacker:
				print_debug("true")
				Item = Inventory.Item1
				Inventory.Drop()
				#give the player Item
			#else if false:
				Inventory.AddNew("Cheese")
=======
			if name == "Hacker":
				for item_index in Inventory.inventory:
					var item = Inventory.inventory['item_index']
					if 
				Item = Inventory.Item1
				Inventory.interact(name, Item)
				#give the player Item
			else:
				Inventory.AddNew(name)
>>>>>>> master
		if event.pressed and event.scancode == KEY_L:
			Inventory.Switch()
		if event.pressed and event.scancode == KEY_K:
			Inventory.Drop()
<<<<<<< HEAD

=======
>>>>>>> master
