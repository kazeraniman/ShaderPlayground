class_name ShaderList
extends Resource

@export var shader_resources: Array[ShaderProperties]

func _init(p_shader_resources: Array[ShaderProperties] = []):
	shader_resources = p_shader_resources
