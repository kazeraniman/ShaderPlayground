class_name ShaderParameterProperties
extends Resource

@export var readable_param_name: String
@export var param_name: String

func _init(p_readable_param_name: String = "", p_param_name: String = ""):
	readable_param_name = p_readable_param_name
	param_name = p_param_name
