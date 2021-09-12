extends StaticBody2D

var needs_dict = {0: 'Pizza', 1: 'Red Bull', 2: 'Coffee'} # TODO: Add needs for Hacker.
var item_need_no = RandomNumberGenerator.new()
var need_timer_spawn = RandomNumberGenerator.new()
var leave = false
var rng_needs_index : int
var rng_need_spawn : int
var hacker_need : String
onready var need_timer = get_node("Need_Timer")
onready var want_timer = get_node("Want_Timer")

func _ready():
	need_timer_spawn.randomize()
	rng_need_spawn = need_timer_spawn.randi_range(1, 10)
	want_timer.set_wait_time(rng_need_spawn)
	want_timer.start()
	
func _wants():
	item_need_no.randomize()
	rng_needs_index = item_need_no.randi_range(0, 2)
	hacker_need = needs_dict[rng_needs_index]
	need_timer.set_wait_time(5)
	need_timer.start()

func _on_Need_Timer_timeout():
	leave = true

func _on_Want_Timer_timeout():
	_wants()
