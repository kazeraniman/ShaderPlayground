shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

uniform bool shouldMirrorX = true;
uniform bool shouldMirrorY = false;

void fragment() {
	vec2 uv = SCREEN_UV;

	if (shouldMirrorX && uv.x > 0.5) {
		uv.x = 1.0 - uv.x;
	}

	if (shouldMirrorY && uv.y < 0.5) {
		uv.y = 1.0 - uv.y;
	}

	COLOR = textureLod(screen_texture, uv, 0.0);
}
