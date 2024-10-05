extends Control

@onready var init_button := $ConfigPanel/OptionsContainer/Init

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init_button.grab_focus()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_init_pressed() -> void:
	pass # Replace with function body.


func _on_config_pressed() -> void:
	#get_tree().paused = true
	var node = preload("res://Interface/ConfigMenu/config_menu.tscn").instantiate()
	get_parent().add_child(node)
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
