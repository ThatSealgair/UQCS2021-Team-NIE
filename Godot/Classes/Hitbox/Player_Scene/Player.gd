extends KinematicBody2D

const inventory = preload("res://Classes/Hitbox/Player_Scene/Inventory.gd")
var moveSpeed = 500
var AreasOverlapping
var Item: String
var area = Area2D
var Inventory

# Called when the node enters the scene tree for the first time.
func _ready():
	Inventory = inventory.new() 
	area = get_node("Area2D")
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
			AreasOverlapping = area.get_overlapping_bodies()
			for Name in AreasOverlapping:
				if Name.name == "Hacker":
					Item = Inventory.Item1
					Inventory.Drop()
					#give the player Item
				else:
					Inventory.AddNew(Name.name)
		if event.pressed and event.scancode == KEY_L:
			Inventory.Switch()
		if event.pressed and event.scancode == KEY_K:
			Inventory.Drop()
