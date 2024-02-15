class_name ShaderSelectionMenu
extends Control

@export var animation_player: AnimationPlayer
@export var shader_button_packed_scene: PackedScene
@export var shader_container: Node
@export var shader_manager: ShaderManager

func _ready():
	for i in range(len(shader_manager.shader_list.shader_resources)):
		var shader_button = shader_button_packed_scene.instantiate()
		shader_button.init(i, shader_manager.shader_list.shader_resources[i], set_shader)
		shader_container.add_child(shader_button)

func open():
	if animation_player.is_playing():
		return

	visible = true
	animation_player.play("open")

func close():
	if animation_player.is_playing():
		return

	animation_player.play("close")

func finalize_close():
	visible = false

func toggle_menu():
	if visible:
		close()
	else:
		open()

func set_shader(index: int):
	shader_manager.load_shader(index)
	close()

func _on_close_button_pressed():
	close()
