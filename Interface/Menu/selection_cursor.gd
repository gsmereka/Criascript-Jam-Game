extends ColorRect

@export var menu: VBoxContainer
var index := 0


func go_to_index():
	global_position = menu.get_child(index).global_position
	global_position.x -= 50
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	go_to_index()
	#print(menu.get_child(0).name)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"):
		index += 1;
		#go_to_index();
	if Input.is_action_just_pressed("ui_up"):
		index -= 1;
		if (index < 0):
			index = 0
		go_to_index();
	pass
