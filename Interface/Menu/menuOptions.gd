extends Menu

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_init_pressed() -> void:
	pass # Replace with function body.

func _on_config_pressed() -> void:
	#get_tree().paused = true
	var node = preload("res://Interface/ConfigMenu/config_menu.tscn").instantiate()
	_add_menu(node)
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
