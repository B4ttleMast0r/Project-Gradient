//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelW;
//uniform float texelW;

void main()
{
	vec4 base_col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (base_col.rgb == 0.0){
		base_col.a = 0.0;
	}else{
		base_col.g = 0.0;
		base_col.b = 0.0;
		base_col.a = 0.0;
		base_col.r = base_col.r + 0.5;
		//base_col.a = 0.5;
		float xx = v_vTexcoord.x;
		xx *= 2.0;
		xx *= xx;
		xx *= xx;
		xx /= 2.0;
		xx += 0.2;
		base_col.a += xx;
	}
	
	
	
    gl_FragColor = base_col;
}