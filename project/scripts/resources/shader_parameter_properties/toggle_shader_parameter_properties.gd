class_name ToggleShaderParameterProperties
extends ShaderParameterProperties

const control_scene = preload("res://scenes/shader_parameter_controls/toggle.tscn")

@export var value: bool

func _init(p_readable_param_name: String = "", p_param_name: String = "", p_value: bool = false):
	super._init(p_readable_param_name, p_param_name)

	value = p_value
