class_name SliderShaderParameterProperties
extends ShaderParameterProperties

@export var min: float
@export var max: float
@export var step: float
@export var value: float

func _init(p_readable_param_name: String = "", p_param_name: String = "", p_control_scene : PackedScene = null, p_min: float = 0, p_max: float = 100, p_step: float = 1, p_value: float = 1):
	super._init(p_readable_param_name, p_param_name, p_control_scene)

	min = p_min
	max = p_max
	step = p_step
	value = p_value
