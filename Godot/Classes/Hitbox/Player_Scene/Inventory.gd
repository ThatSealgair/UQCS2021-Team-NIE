extends CanvasLayer

<<<<<<< HEAD

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Item1: String
var Item2: String
=======
# const hacker = preload("res://Classes/Hacker/Hacker_Draft_1.gd")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Item1 = null
var Item2 = null
var inventory = {'item1': Item1, 'item2': Item2}
var Hacker = Hacker.new()
>>>>>>> master

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

<<<<<<< HEAD
func _process(delta):
	pass

func Drop():
	Item1 = Item2;
	Item2 = "";
	pass
	
func Switch():
	var ItemP = Item1;
	Item1 = Item2;
	Item2 = ItemP;
	pass
	
func AddNew(Item:String):
	print_debug("Add")
	if Item2 == "":
		if Item1 == "":
			Item1 = Item;
		else:
			Item2 = Item;
=======
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
>>>>>>> master
	else:
		return false
	return true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
