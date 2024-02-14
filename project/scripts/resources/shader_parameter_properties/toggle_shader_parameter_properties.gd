class_name ToggleShaderParameterProperties
extends ShaderParameterProperties

@export var value: bool

func _init(p_readable_param_name: String = "", p_param_name: String = "", p_control_scene : PackedScene = null, p_value: bool = false):
	super._init(p_readable_param_name, p_param_name, p_control_scene)

	value = p_value
