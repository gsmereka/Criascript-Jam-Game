extends Control

@onready var init_button := $ConfigPanel/OptionsContainer/Init

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	init_button.grab_focus()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
