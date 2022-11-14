extends ColorRect

onready var add_id = $label_student_id/student_id
onready var enrolled = $label_enrolled/enrolled
onready var remove_id = $label_remove/remove_id

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_back_pressed():
	enrolled.text = enrolled.text + add_id.text + "\n"
