shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

uniform vec3 tint_colour = vec3(1.0, 0.0, 0.0);
uniform float tint_influence = 0.5;

void fragment() {
	vec4 color = textureLod(screen_texture, SCREEN_UV, 0.0);
	float average = (color.r + color.g + color.b) / 3.;
	COLOR = vec4(mix(average, tint_colour.r, tint_influence), mix(average, tint_colour.g, tint_influence), mix(average, tint_colour.b, tint_influence), color.a);
}
