extends Area2D

class_name Hacker

var needs_dict = {} # TODO: Add needs for Hacker.
var item_need_no = RandomNumberGenerator.new()
var need_timer_spawn = RandomNumberGenerator.new()
var leave = false
var rng_needs_index : int
var rng_need_spawn : int
onready var timer1 = get_node("Timer1")
onready var timer2 = get_node("Timer2")

func _ready():
	need_timer_spawn.randomize()
	rng_need_spawn = need_timer_spawn.randi_range(1, 10)
	timer2.set_wait_time(rng_need_spawn)
	timer2.start()
	
func _wants():
	item_need_no.randomize()
	rng_needs_index = item_need_no.randi_range(0, 3)
	var hacker_need : String = needs_dict[rng_needs_index]
	timer1.set_wait_time(5)
	timer1.start()

func _on_Timer_timeout():
	leave = true

func _on_Timer2_timeout():
	_wants()
