extends CanvasLayer

@export var current_shader_name_label: Label
@export var shader_selection_menu: ShaderSelectionMenu

func _input(event):
	if event.is_action_released("quit"):
		get_tree().quit()
		return

	if event.is_action_released("toggle_hud"):
		toggle_hud()

	if event.is_action_released("reset_params"):
		reset_params()

	if event.is_action_released("toggle_menu"):
		shader_selection_menu.toggle_menu()

func toggle_hud():
	if visible:
		hide()
	else:
		show()

func reset_params():
	for shader_control in $HudContainer/ShaderParameters.get_children():
		shader_control.reset_param()

func _on_shader_manager_shader_changed(shader_properties: ShaderProperties, material: Material):
	current_shader_name_label.text = "Current Shader: " + shader_properties.name
	for shader_control in $HudContainer/ShaderParameters.get_children():
		shader_control.queue_free()

	for shader_parameter in shader_properties.shader_parameters:
		var new_control = shader_parameter.control_scene.instantiate()
		new_control.init(material, shader_parameter)
		$HudContainer/ShaderParameters.add_child(new_control)
