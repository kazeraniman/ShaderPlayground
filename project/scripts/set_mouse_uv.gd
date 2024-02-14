extends Node

@export var shader_material: ShaderMaterial

func _input(event):
	if event is InputEventMouseMotion:
		set_mouse_uv(event.position)

func _ready():
	set_mouse_uv(get_viewport().get_mouse_position())

func set_mouse_uv(mouse_position: Vector2):
	var mouse_uv = mouse_position / get_viewport().get_visible_rect().size
	shader_material.set_shader_parameter("mouse_uv", mouse_uv)
