class_name ShaderProperties
extends Resource

@export var name: String
@export var shader_scene: PackedScene

func _init(p_name: String = "", p_shader_scene : PackedScene = null):
	name = p_name
	shader_scene = p_shader_scene
