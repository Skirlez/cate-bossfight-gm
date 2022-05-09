varying vec2 v_vTexcoord;           // currently reading pixels original position (x, y)
varying vec4 v_vColour;             // currently reading pixels color (red, green, blue, alpha)
uniform float u_vTime;

void main()
{
    vec2 coordinates;           
	float thing = sin(v_vTexcoord.y * 0.5 + u_vTime) * 0.32;
	coordinates = vec2(v_vTexcoord.x + thing, v_vTexcoord.y);
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, coordinates);
}
       

