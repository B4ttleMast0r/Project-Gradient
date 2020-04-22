//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (base_col.rgb == 0.0){
		base_col.a = 0.0;
	}else{
		base_col.g = 0.0;
		base_col.b = 0.0;
		base_col.r = base_col.r + 0.5;
		base_col.a = 0.5;
	}
	
    gl_FragColor = base_col;
}