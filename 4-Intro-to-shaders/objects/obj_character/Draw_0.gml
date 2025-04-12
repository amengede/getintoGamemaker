shader_set(Shader1);
var _location = shader_get_uniform(Shader1, "t");
shader_set_uniform_f(_location, 0.01 * current_time);
draw_self();
shader_reset();