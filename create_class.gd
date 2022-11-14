extends Node2D

onready var grade_choices = $class/label_grade_level/grade_level
onready var sched_from = $class/label_sched/sched_from
onready var sched_to = $class/label_sched/sched_to
onready var create_class = $class
onready var enroll = $enroll

func _ready():
	add_item_yr_lvl()
	add_sched(sched_from)
	add_sched(sched_to)
	sched_to.selected = 2

func add_item_yr_lvl():
	grade_choices.add_item("7")
	grade_choices.add_item("8")
	grade_choices.add_item("9")
	grade_choices.add_item("10")

func add_sched(x):
	x.add_item("7:00AM")
	x.add_item("7:30AM")
	
	x.add_item("8:00AM")
	x.add_item("8:30AM")
	
	x.add_item("9:00AM")
	x.add_item("9:30AM")
	
	x.add_item("10:00AM")
	x.add_item("10:30AM")
	
	x.add_item("11:00AM")
	x.add_item("11:30AM")
	
	x.add_item("12:00PM")
	x.add_item("12:30PM")
	
	x.add_item("1:00PM")
	x.add_item("1:30PM")
	
	x.add_item("2:00PM")
	x.add_item("2:30PM")
	
	x.add_item("3:00PM")
	x.add_item("3:30PM")
	
	x.add_item("4:00PM")
	x.add_item("4:30PM")

	x.add_item("5:00PM")


func _on_back2_pressed():
	create_class.visible = true
	enroll.visible = false


func _on_next_pressed():
	enroll.visible = true
	create_class.visible = false


func _on_sched_from_item_selected(index):
	sched_to.selected = sched_from.selected + 1


func _on_sched_to_item_selected(index):
	if(sched_from.selected+1 > sched_to.selected):
		sched_to.selected = sched_from.selected + 1
