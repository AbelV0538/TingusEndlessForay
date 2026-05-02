// shd_crt.fsh
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_resolution; // The size of your game (e.g., 1920, 1080)
uniform float u_time;       // To make scanlines move slightly (optional)

void main() {
    // 1. Distort coordinates for Curvature (Bulge)
    vec2 uv = v_vTexcoord;
    vec2 centered_uv = uv * 2.0 - 1.0;
    centered_uv *= 1.0 + pow(length(centered_uv) * 0.15, 2.0); // Adjust 0.15 for more/less bulge
    uv = (centered_uv + 1.0) * 0.5;

    // 2. Sample the texture (if outside bounds, draw black)
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }
    
    vec4 base_color = v_vColour * texture2D(gm_BaseTexture, uv);

    // 3. Apply Scanlines
    float scanline = sin(uv.y * u_resolution.y * 1.5) * 0.1; 
    base_color.rgb -= scanline;

    // 4. Vignette (Darken corners)
    float vignette = 16.0 * uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y);
    base_color.rgb *= pow(vignette, 0.1);

    gl_FragColor = base_color;
}