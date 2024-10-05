extends Menu

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#init_button.grab_focus()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_full_screen_pressed() -> void:
	pass # Replace with function body.


func _on_language_pressed() -> void:
	pass # Replace with function body.

func _on_exit_config_pressed() -> void:
	#get_tree().paused = false
	_exit_menu()
	pass # Replace with function body.
