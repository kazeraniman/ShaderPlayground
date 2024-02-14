extends ShaderParameterControls

@export var param_name: Label
@export var check_button: CheckButton
@export var check_button_value: Label

var toggle_parameter_properties: ToggleShaderParameterProperties

func init(p_shader_material: ShaderMaterial, p_parameter_properties: ShaderParameterProperties):
	super.init(p_shader_material, p_parameter_properties)

	toggle_parameter_properties = parameter_properties as ToggleShaderParameterProperties

	param_name.text = parameter_properties.readable_param_name

	var current_value = shader_material.get_shader_parameter(parameter_properties.param_name)
	if current_value == null:
		current_value = toggle_parameter_properties.value
		shader_material.set_shader_parameter(parameter_properties.param_name, current_value)

	check_button.set_pressed_no_signal(current_value)
	check_button_value.text = get_value_string(current_value)

func reset_param():
	check_button.toggle_mode = toggle_parameter_properties.value

func get_value_string(val: bool):
	return "On" if val else "Off"

func _on_check_box_toggled(button_pressed):
	check_button_value.text = get_value_string(button_pressed)
	shader_material.set_shader_parameter(parameter_properties.param_name, button_pressed)
