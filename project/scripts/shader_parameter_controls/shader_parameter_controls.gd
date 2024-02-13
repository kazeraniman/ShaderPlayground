class_name ShaderParameterControls
extends Control

var parameter_properties: ShaderParameterProperties
var shader_material: ShaderMaterial

func init(p_shader_material: ShaderMaterial, p_parameter_properties: ShaderParameterProperties):
	parameter_properties = p_parameter_properties
	shader_material = p_shader_material
