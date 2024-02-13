extends CanvasLayer

@export var current_shader_name_label: Label

func _input(event):
	if event.is_action_released("toggle_hud"):
		toggle_hud()

func toggle_hud():
	if visible:
		hide()
	else:
		show()

func _on_shader_manager_shader_changed(shader_properties: ShaderProperties, material: Material):
	current_shader_name_label.text = "Current Shader: " + shader_properties.name
	for shader_parameter in $HudContainer/ShaderParameters.get_children():
		shader_parameter.queue_free()

	for shader_parameter in shader_properties.shader_parameters:
		var new_control = shader_parameter.control_scene.instantiate()
		new_control.init(material, shader_parameter)
		$HudContainer/ShaderParameters.add_child(new_control)
