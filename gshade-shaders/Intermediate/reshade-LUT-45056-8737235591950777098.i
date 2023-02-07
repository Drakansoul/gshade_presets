#line 1 "unknown"

#line 1 "C:\Program Files\GShade\gshade-shaders\Shaders\LUT.fx"
#line 43
uniform int fLUT_Selector <
ui_type = "combo";
ui_items = "GShade/Angelite\0LUT - Warm.fx\0Autumn\0ninjafada Gameplay\0ReShade | Custom\0Sleeps_Hungry\0Feli\0Lufreine Legacy\0Ipsusu Gameplay\0Potatoshade\0";
ui_label = "The LUT file to use.";
ui_tooltip = "Select a LUT!\n\nPlease note that the Potatoshade option will require you to obtain a copy of \"seilut.png\" from the Potoshade zip and place it in the \"?:\\Program Files\\GShade\\gshade-shaders\\Textures\" folder before it becomes usable.";
ui_bind = "LUTTexture_Source";
> = 0;
#line 51
uniform float fLUT_AmountChroma <
ui_type = "slider";
ui_min = 0.00; ui_max = 1.00;
ui_label = "LUT chroma amount";
ui_tooltip = "Intensity of color/chroma change of the LUT.";
> = 1.00;
#line 58
uniform float fLUT_AmountLuma <
ui_type = "slider";
ui_min = 0.00; ui_max = 1.00;
ui_label = "LUT luma amount";
ui_tooltip = "Intensity of luma change of the LUT.";
> = 1.00;
#line 1 "C:\Program Files\GShade\gshade-shaders\Shaders\ReShade.fxh"
#line 50
namespace ReShade
{
float GetAspectRatio() { return 3840 * (1.0 / 2137); }
float2 GetPixelSize() { return float2((1.0 / 3840), (1.0 / 2137)); }
float2 GetScreenSize() { return float2(3840, 2137); }
#line 60
texture BackBufferTex : COLOR;
texture DepthBufferTex : DEPTH;
#line 63
sampler BackBuffer { Texture = BackBufferTex; };
sampler DepthBuffer { Texture = DepthBufferTex; };
#line 67
float GetLinearizedDepth(float2 texcoord)
{
#line 72
texcoord.x /= 1;
texcoord.y /= 1;
#line 77
texcoord.x -= 0 / 2.000000001;
#line 82
texcoord.y += 0 / 2.000000001;
#line 84
float depth = tex2Dlod(DepthBuffer, float4(texcoord, 0, 0)).x * 1;
#line 93
const float N = 1.0;
depth /= 1000.0 - depth * (1000.0 - N);
#line 96
return depth;
}
}
#line 101
void PostProcessVS(in uint id : SV_VertexID, out float4 position : SV_Position, out float2 texcoord : TEXCOORD)
{
if (id == 2)
texcoord.x = 2.0;
else
texcoord.x = 0.0;
#line 108
if (id == 1)
texcoord.y = 2.0;
else
texcoord.y = 0.0;
#line 113
position = float4(texcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
}
#line 70 "C:\Program Files\GShade\gshade-shaders\Shaders\LUT.fx"
#line 118
texture texLUT < source = "lut_GShade.png"; > { Width = 32 * 32; Height = 32; Format = RGBA8; };
sampler	SamplerLUT 	{ Texture = texLUT; };
#line 125
void PS_LUT_Apply(float4 vpos : SV_Position, float2 texcoord : TEXCOORD, out float3 res : SV_Target0)
{
res = tex2D(ReShade::BackBuffer, texcoord.xy).xyz;
#line 129
float2 texelsize = 1.0 / 32;
texelsize.x /= 32;
#line 132
float3 lutcoord = float3((res.xy * 32 - res.xy + 0.5) * texelsize.xy, res.z * 32 - res.z);
const float lerpfact = frac(lutcoord.z);
lutcoord.x += (lutcoord.z - lerpfact) * texelsize.y;
#line 136
const float3 lutcolor = lerp(tex2D(SamplerLUT, lutcoord.xy).xyz, tex2D(SamplerLUT, float2(lutcoord.x+texelsize.y,lutcoord.y)).xyz, lerpfact);
#line 138
res = lerp(normalize(res), normalize(lutcolor), fLUT_AmountChroma) *
lerp(length(res),    length(lutcolor),    fLUT_AmountLuma);
#line 144
}
#line 151
technique LUT
{
pass LUT_Apply
{
VertexShader = PostProcessVS;
PixelShader = PS_LUT_Apply;
}
}

