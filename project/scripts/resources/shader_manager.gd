class_name ShaderManager
extends Node

signal shader_changed(shader_properties: ShaderProperties, material: ShaderMaterial)

@export var shader_list: ShaderList

var current_shader_index: int = -1
var current_shader: ColorRect = null

func _ready():
	load_shader(0)

func _input(event):
	if event.is_action_released("next_shader"):
		load_next_shader()
		return

	if event.is_action_released("prev_shader"):
		load_previous_shader()

func load_shader(index: int):
	if index == current_shader_index:
		return

	if index < 0 or index >= shader_list.shader_resources.size():
		printerr("Shader index was out-of-bounds.")
		return

	if current_shader != null:
		current_shader.queue_free()

	var requested_shader: ShaderProperties = shader_list.shader_resources[index]
	current_shader = requested_shader.shader_scene.instantiate()
	add_child(current_shader)
	current_shader_index = index
	emit_signal("shader_changed", requested_shader, current_shader.material)

func load_next_shader():
	load_shader(posmod(current_shader_index + 1, shader_list.shader_resources.size()))

func load_previous_shader():
	load_shader(posmod(current_shader_index - 1, shader_list.shader_resources.size()))
