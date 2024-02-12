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

func _on_shader_manager_shader_changed(shader_properties: ShaderProperties):
	current_shader_name_label.text = "Current Shader: " + shader_properties.name
