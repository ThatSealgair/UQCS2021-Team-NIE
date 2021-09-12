extends Area2D

class_name Hacker

<<<<<<< HEAD
var needs_dict = {} # TODO: Add needs for Hacker.
=======
var needs_dict = {0: 'Pizza', 1: 'Red Bull', 2: 'Coffee'} # TODO: Add needs for Hacker.
>>>>>>> main
var item_need_no = RandomNumberGenerator.new()
var need_timer_spawn = RandomNumberGenerator.new()
var leave = false
var rng_needs_index : int
var rng_need_spawn : int
var hacker_need : String
<<<<<<< HEAD
onready var timer1 = get_node("Timer1")
onready var timer2 = get_node("Timer2")
=======
onready var need_timer = get_node("Need_Timer")
onready var want_timer = get_node("Want_Timer")
onready var anim_hacker : AnimationPlayer = get_node("AnimationPlayer")
>>>>>>> main

func _ready():
	need_timer_spawn.randomize()
	rng_need_spawn = need_timer_spawn.randi_range(1, 10)
<<<<<<< HEAD
	timer2.set_wait_time(rng_need_spawn)
	timer2.start()
	
func _wants():
	item_need_no.randomize()
	rng_needs_index = item_need_no.randi_range(0, 3)
	hacker_need = needs_dict[rng_needs_index]
	timer1.set_wait_time(5)
	timer1.start()

func _on_Timer_timeout():
	leave = true

func _on_Timer2_timeout():
=======
	want_timer.set_wait_time(rng_need_spawn)
	want_timer.start()
	
func _wants():
	item_need_no.randomize()
	rng_needs_index = item_need_no.randi_range(0, 2)
	hacker_need = needs_dict[rng_needs_index]
	# Add integration to player.
	need_timer.set_wait_time(5)
	need_timer.start()
	
func _on_Need_Timer_timeout():
	anim_hacker.play('Fade Out')

func _on_Want_timer_timeout():
>>>>>>> main
	_wants()
