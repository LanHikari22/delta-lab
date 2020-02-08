#version 410

out vec4 fragColor;

uniform vec2  iResolution;
uniform float iTime;

vec2 cmplx_mul(vec2 a, vec2 b) {
    return vec2(a.x * b.x - a.y * b.y, a.y * b.x + a.x * b.y);
}

vec2 cmplx_pow2(vec2 z) {
    return vec2((z.x * z.x) - (z.y * z.y), 2.0 * z.x * z.y);
}

vec2 scaleFragCoord(vec2 fragCoord, vec2 viewSize)
{
    vec2 c;
    
    if (viewSize.x > viewSize.y) {
        c = vec2(
            (4.0 * fragCoord.x / viewSize.x) - 2.0,
            (4.0 * (fragCoord.y - (viewSize.y / 2.0)) / viewSize.x)
        );
    }
    else {
        c = vec2(
            (4.0 * (fragCoord.x - (viewSize.x / 2.0)) / viewSize.y),
            (4.0 * fragCoord.y / viewSize.y) - 2.0
        );
    }
    
    return c;
}

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

vec4 iterColorSmooth(int iter, vec2 z, float power)
{
    float log_zn = log( z.x*z.x + z.y*z.y ) / power;
    float log_pwr = log(power);
    float nu = log( log_zn / log_pwr ) / log_pwr;
    
    float j = float(iter) - nu + 1.0;
    float hue = mix(floor(j) + 0.0, floor(j) + 1.0, mod(j, 1.0)) / 20.0;
    
    hue *= 2.0;
    hue += iTime / 128.0;
    
    return vec4(hsv2rgb(vec3(hue, 1.0, 1.0)), 1.0);
}

#define MAX_ITER 500
#define BAILOUT  20.0

vec4 drawMandelbrot(vec2 c)
{
    vec2 z = vec2(0.0, 0.0);
    for (int i = 0; i < MAX_ITER; ++i)
    {
        z = cmplx_pow2(z) + c;
        if (length(z) > BAILOUT)
        {
            return iterColorSmooth(i, z, 2.0);
        }
    }
    return vec4(0.0, 0.0, 0.0, 1.0);
}

void main(void)
{
    vec2 c = scaleFragCoord(gl_FragCoord.xy, iResolution.xy);
    fragColor = drawMandelbrot(c);
}
