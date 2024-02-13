shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

uniform float x_pixelation = 100;
uniform float y_pixelation = 100;

float get_rounded_uv_coordinate(float uv_coordinate, float pixelation_value) {
	return round(uv_coordinate * pixelation_value) / pixelation_value;
}

void fragment() {
	COLOR = textureLod(screen_texture, vec2(get_rounded_uv_coordinate(SCREEN_UV.x, x_pixelation), get_rounded_uv_coordinate(SCREEN_UV.y, y_pixelation)), 0.0);
}
