extends ShaderParameterControls

@export var param_name: Label
@export var slider: HSlider
@export var slider_value: Label

func init(p_shader_material: ShaderMaterial, p_parameter_properties: ShaderParameterProperties):
	super.init(p_shader_material, p_parameter_properties)

	var slider_parameter_properties = parameter_properties as SliderShaderParameterProperties

	param_name.text = parameter_properties.readable_param_name
	slider.min_value = slider_parameter_properties.min
	slider.max_value = slider_parameter_properties.max
	slider.step = slider_parameter_properties.step

	var current_value = shader_material.get_shader_parameter(parameter_properties.param_name)
	slider.value = current_value
	slider_value.text = str(current_value)

func _on_h_slider_value_changed(value):
	slider_value.text = str(value)
	shader_material.set_shader_parameter(parameter_properties.param_name, value)
