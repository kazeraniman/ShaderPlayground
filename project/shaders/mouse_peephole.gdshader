shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

uniform vec2 mouse_uv = vec2(0.0);
uniform float peephole_radius = 100;

void fragment() {
	vec2 screen_size = 1.0 / SCREEN_PIXEL_SIZE;
	vec2 pixel = SCREEN_UV * screen_size;
	vec2 mouse = mouse_uv * screen_size;
	vec2 base_distance = pixel - mouse;
	float point_distance = sqrt((base_distance.x * base_distance.x) + (base_distance.y * base_distance.y));

	if (point_distance <= peephole_radius) {
		COLOR = textureLod(screen_texture, SCREEN_UV, 0.0);
	} else {
		COLOR = vec4(vec3(0.0), 1.0);
	}
}
