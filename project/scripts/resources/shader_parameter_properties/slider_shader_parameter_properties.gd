class_name SliderShaderParameterProperties
extends ShaderParameterProperties

const control_scene = preload("res://scenes/shader_parameter_controls/slider.tscn")

@export var min_value: float
@export var max_value: float
@export var step: float
@export var value: float

func _init(p_readable_param_name: String = "", p_param_name: String = "", p_min: float = 0, p_max: float = 100, p_step: float = 1, p_value: float = 1):
	super._init(p_readable_param_name, p_param_name)

	min_value = p_min
	max_value = p_max
	step = p_step
	value = p_value
