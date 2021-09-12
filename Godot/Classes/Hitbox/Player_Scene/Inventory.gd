extends CanvasLayer

# const hacker = preload("res://Classes/Hacker/Hacker_Draft_1.gd")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Item1 = null
var Item2 = null
var inventory = {'item1': Item1, 'item2': Item2}
var Hacker = Hacker.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# func _process(delta):
#	pass
# TODO: Why need process?

func Drop():
	inventory['item1'] = null
	
func Switch():
	inventory['item1'] = Item2
	inventory['item2'] = Item1

func interact(type, Item: String):
	if type == 'Hacker':
		for item_index in inventory:
			var item = inventory['item_index']
			if Item == item:
				pass
	if Item2 != null:
		if Item1 != null:
			Item1 = Item
		else:
			Item2 = Item
	else:
		return false
	return true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
