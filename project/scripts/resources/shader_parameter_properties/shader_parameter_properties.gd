class_name ShaderParameterProperties
extends Resource

@export var readable_param_name: String
@export var param_name: String
@export var control_scene: PackedScene

func _init(p_readable_param_name: String = "", p_param_name: String = "", p_control_scene : PackedScene = null):
	readable_param_name = p_readable_param_name
	param_name = p_param_name
	control_scene = p_control_scene
