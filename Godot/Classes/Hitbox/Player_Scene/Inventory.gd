extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Item1: String
var Item2: String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

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
	if Item2 == "":
		if Item1 == "":
			Item1 = Item;
		else:
			Item2 = Item;
	else:
		return false
	return true
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
