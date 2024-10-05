extends Menu

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#init_button.grab_focus()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_full_screen_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	pass # Replace with function body.


func _on_p_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	DisplayServer.window_set_size(Vector2(1920, 1080))
	pass # Replace with function body.


func _on_720p_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	DisplayServer.window_set_size(Vector2(1280, 720))
	pass # Replace with function body.


func _on_close_pressed() -> void:
	_exit_menu()
	pass # Replace with function body.
