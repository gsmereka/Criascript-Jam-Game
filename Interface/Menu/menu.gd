extends Control

const LenguageMenu := "res://Interface/LenguageMenu/lenguage_menu.tscn"
const ResolutionMenu := "res://Interface/ResolutionMenu/resoltutionMenu.tscn"
const MenuMenu := "res://Interface/Menu/menu_options.tscn"

var current_index: int = 0
var current_node: Node = null

func _load_intro():
	var MenuNode: Menu
	MenuNode = preload(MenuMenu).instantiate()
	add_child(MenuNode)
	var ResolutionNode: Menu
	ResolutionNode = preload(ResolutionMenu).instantiate()
	ResolutionNode.backup_button = MenuNode.init_button
	add_child(ResolutionNode)
	var LenguageNode: Menu
	LenguageNode = preload(LenguageMenu).instantiate()
	LenguageNode.backup_button = ResolutionNode.init_button
	add_child(LenguageNode)
	pass

func _ready():
	if Global.first_play:
		_load_intro()
		Global.first_play = false
	else:
		var node = preload("res://Interface/Menu/menu_options.tscn").instantiate()
		add_child(node)
	pass

func _process(delta):
	# Verifica se o node atual foi concluído
	return
