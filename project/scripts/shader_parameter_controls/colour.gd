extends ShaderParameterControls

@export var param_name: Label
@export var colour_picker: ColorPickerButton
@export var colour_picker_value: Label

var colour_parameter_properties: ColourShaderParameterProperties

func init(p_shader_material: ShaderMaterial, p_parameter_properties: ShaderParameterProperties):
	super.init(p_shader_material, p_parameter_properties)

	colour_parameter_properties = parameter_properties as ColourShaderParameterProperties

	param_name.text = parameter_properties.readable_param_name

	var current_value = shader_material.get_shader_parameter(parameter_properties.param_name)
	if current_value == null:
		current_value = colour_parameter_properties.value
		shader_material.set_shader_parameter(parameter_properties.param_name, current_value)

	colour_picker.color = Color(current_value.x, current_value.y, current_value.z, 1.0)
	set_colour_picker_text()

func reset_param():
	colour_picker.color = Color(colour_parameter_properties.value.x, colour_parameter_properties.value.y, colour_parameter_properties.value.z, 1.0)
	_on_color_picker_button_color_changed(colour_picker.color)

func set_colour_picker_text():
	colour_picker_value.text = "#" + colour_picker.color.to_html(false).to_upper()

func _on_color_picker_button_color_changed(color):
	set_colour_picker_text()
	shader_material.set_shader_parameter(parameter_properties.param_name, color)
