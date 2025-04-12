//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float t;

void main()
{
	float alpha = 0.5 * (sin(t) + 1.0);
	vec4 blend_color = (1.0 - alpha) * vec4(1.0, 0.0, 0.0, 1.0) + alpha * vec4(0.0, 0.0, 1.0, 1.0);
	vec2 texcoord = v_vTexcoord + vec2(0.1 * v_vTexcoord.y * sin(t), 0.0);
	vec4 base = blend_color * texture2D( gm_BaseTexture, texcoord );
    gl_FragColor = v_vColour * base;
}
