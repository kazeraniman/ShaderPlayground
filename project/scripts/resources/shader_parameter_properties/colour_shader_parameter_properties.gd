class_name ColourShaderParameterProperties
extends ShaderParameterProperties

const control_scene = preload("res://scenes/shader_parameter_controls/colour.tscn")

@export var value: Vector3

func _init(p_readable_param_name: String = "", p_param_name: String = "", p_value: Vector3 = Vector3(1, 1, 1)):
	super._init(p_readable_param_name, p_param_name)

	value = p_value
