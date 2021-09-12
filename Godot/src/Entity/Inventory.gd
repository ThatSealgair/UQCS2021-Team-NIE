extends Node2D
class_name Inventory

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Item1: String
var Item2: String
var txt : String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func Drop():
	Item1 = Item2;
	Item2 = "";
	inventory_update(Item1, Item2)
	pass
	
func Switch():
	var ItemP = Item1;
	Item1 = Item2;
	Item2 = ItemP;
	inventory_update(Item1, Item2)
	pass
	
func AddNew(Item:String):
	if Item2 == "":
		if Item1 == "":
			Item1 = Item;
		else:
			Item2 = Item;
	else:
		return false
	inventory_update(Item1, Item2)
	return true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func inventory_update(Item1, Item2):
	txt = Item1 + " " + Item2
	_on_Inventory_gui_input(txt)
	
func _on_Inventory_gui_input(event):
	pass # Replace with function body.
