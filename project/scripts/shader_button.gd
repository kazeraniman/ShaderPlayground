class_name ShaderButton
extends Button

@export var shader_name_label: Label

var id: int
var callback: Callable

func init(p_id: int, p_shader_properties: ShaderProperties, p_callback: Callable):
	id = p_id
	callback = p_callback

	shader_name_label.text = p_shader_properties.name

func _on_pressed():
	callback.call(id)
