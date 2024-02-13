class_name ShaderProperties
extends Resource

@export var name: String
@export var shader_scene: PackedScene
@export var shader_parameters: Array[ShaderParameterProperties]

func _init(p_name: String = "", p_shader_scene : PackedScene = null, p_shader_parameters: Array[ShaderParameterProperties] = []):
	name = p_name
	shader_scene = p_shader_scene
	shader_parameters = p_shader_parameters
