extends Control

# Lista de caminhos para os nodes que você quer instanciar
var node_paths: Array = [
	"res://Interface/LenguageMenu/lenguage_menu.tscn",
	"res://Interface/ResolutionMenu/resoltutionMenu.tscn",
	"res://Interface/Menu/menu_options.tscn"
]

var node_names: Array = [
	"LenguageMenu",
	"ResolutionMenu",
	"MenuOptions"
]

var current_index: int = 0
var current_node: Node = null

func _ready():
	# Inicia o processo chamando o primeiro node
	#_instanciar_proximo_node()
	pass
	

func _process(delta):
	if current_index == 0:
		var node = preload("res://Interface/Menu/menu_options.tscn").instantiate()
		add_child(node)
		current_index += 1
	# Verifica se o node atual foi concluído
	return
	if (current_index - 1 < node_paths.size()) && !self.get_node_or_null(node_names[current_index - 1]):
		_on_node_finalizado()

func _instanciar_proximo_node():
	# Verifica se ainda há nodes na lista
	if current_index < node_paths.size():
		var node_scene = load(node_paths[current_index])
		current_node = node_scene.instantiate()
		
		# Adiciona o node à cena
		add_child(current_node)
		
		# Incrementa o índice para o próximo node
		current_index += 1

func _on_node_finalizado():
	# Chama a função para instanciar o próximo node
	_instanciar_proximo_node()
