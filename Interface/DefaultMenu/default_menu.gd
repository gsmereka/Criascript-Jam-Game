extends Control
class_name Menu

@export var init_button: Button
@export var backup_button: Button
@onready var init_button_grab = _grab_init_button()
#@onready var print_Result = _debug()

func _debug():
	print(init_button)
	pass

func _grab_init_button():
	if (init_button):
		init_button.grab_focus()

func _add_menu(menu_instance: Menu) -> void:
	if (!init_button):
		get_parent().add_child(menu_instance)
		return
	menu_instance.backup_button = init_button
	get_parent().add_child(menu_instance)


func _exit_menu() -> void:
	if (backup_button):
		backup_button.grab_focus()
	get_parent().remove_child(self)
	queue_free();
	pass
