#line 1 "unknown"

#line 1 "C:\Program Files\GShade\gshade-shaders\Shaders\Chromakey.fx"
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
#line 11 "C:\Program Files\GShade\gshade-shaders\Shaders\Chromakey.fx"
#line 16
uniform float Threshold <
ui_label = "Threshold";
ui_type = "slider";
ui_min = 0.0; ui_max = 0.999; ui_step = 0.001;
ui_category = "Distance adjustment";
> = 0.5;
#line 23
uniform bool RadialX <
ui_label = "Horizontally radial depth";
ui_category = "Radial distance";
ui_category_closed = true;
> = false;
uniform bool RadialY <
ui_label = "Vertically radial depth";
ui_category = "Radial distance";
> = false;
#line 33
uniform int FOV <
ui_label = "FOV (horizontal)";
ui_type = "slider";
ui_tooltip = "Field of view in degrees";
ui_step = .01;
ui_min = 0; ui_max = 200;
ui_category = "Radial distance";
> = 90;
#line 42
uniform int CKPass <
ui_label = "Keying type";
ui_type = "combo";
ui_items = "Background key\0Foreground key\0";
ui_category = "Direction adjustment";
> = 0;
#line 49
uniform bool Floor <
ui_label = "Mask floor";
ui_category = "Floor masking (experimental)";
ui_category_closed = true;
> = false;
#line 55
uniform float FloorAngle <
ui_label = "Floor angle";
ui_type = "slider";
ui_category = "Floor masking (experimental)";
ui_min = 0.0; ui_max = 1.0;
> = 1.0;
#line 62
uniform int Precision <
ui_label = "Floor precision";
ui_type = "slider";
ui_category = "Floor masking (experimental)";
ui_min = 2; ui_max = 9216;
> = 4;
#line 69
uniform int Color <
ui_label = "Keying color";
ui_tooltip = "Ultimatte(tm) Super Blue and Green are industry standard colors for chromakey.\n"
"Ensure that you have the \"Clear Alpha Channel\" option disabled on GShade\'s \"Settings\" tab if you are using \"Alpha Transparency\".";
ui_type = "combo";
ui_items = "Pure Green (RGB 0,255,0)\0Pure Red (RGB 255,0,255)\0Pure Blue (RGB 0,255,0)\0Super Blue Ultimatte(tm) (RGB 18,46,184)\0Green Ultimatte(tm) (RGB 74,214,92)\0Custom\0Alpha Transparency\0";
ui_category = "Color settings";
ui_category_closed = false;
> = 6;
#line 79
uniform float3 CustomColor <
ui_type = "color";
ui_label = "Custom color";
ui_category = "Color settings";
> = float3(0.0, 1.0, 0.0);
#line 85
uniform bool AntiAliased <
ui_label = "Anti-aliased mask";
ui_tooltip = "Disabling this option will reduce masking gaps";
ui_category = "Additional settings";
ui_category_closed = true;
> = false;
#line 92
uniform bool InvertDepth <
ui_label = "Invert Depth";
ui_tooltip = "Inverts the depth buffer so that the color is applied to the foreground instead.";
ui_category = "Additional settings";
> = false;
#line 103
float MaskAA(float2 texcoord)
{
#line 106
float Depth;
if (InvertDepth)
Depth = 1 - ReShade::GetLinearizedDepth(texcoord);
else
Depth = ReShade::GetLinearizedDepth(texcoord);
#line 113
float2 Size;
Size.x = tan(radians(FOV*0.5));
Size.y = Size.x / (3840 * (1.0 / 2137));
if(RadialX) Depth *= length(float2((texcoord.x-0.5)*Size.x, 1.0));
if(RadialY) Depth *= length(float2((texcoord.y-0.5)*Size.y, 1.0));
#line 120
if(!AntiAliased) return step(Threshold, Depth);
#line 123
float hPixel = fwidth(Depth)*0.5;
#line 125
return smoothstep(Threshold-hPixel, Threshold+hPixel, Depth);
}
#line 128
float3 GetPosition(float2 texcoord)
{
#line 131
const float theta = radians(FOV*0.5);
#line 133
float3 position = float3( texcoord*2.0-1.0, ReShade::GetLinearizedDepth(texcoord) );
#line 135
position.xy *= position.z;
#line 137
return position;
}
#line 141
float3 GetNormal(float2 texcoord)
{
const float3 offset = float3(float2((1.0 / 3840), (1.0 / 2137)).xy, 0.0);
const float2 posCenter = texcoord.xy;
const float2 posNorth  = posCenter - offset.zy;
const float2 posEast   = posCenter + offset.xz;
#line 148
const float3 vertCenter = float3(posCenter - 0.5, 1.0) * ReShade::GetLinearizedDepth(posCenter);
const float3 vertNorth  = float3(posNorth - 0.5,  1.0) * ReShade::GetLinearizedDepth(posNorth);
const float3 vertEast   = float3(posEast - 0.5,   1.0) * ReShade::GetLinearizedDepth(posEast);
#line 152
return normalize(cross(vertCenter - vertNorth, vertCenter - vertEast)) * 0.5 + 0.5;
}
#line 159
float4 ChromakeyPS(float4 pos : SV_Position, float2 texcoord : TEXCOORD) : SV_Target
{
#line 162
float3 Screen;
switch(Color)
{
case 0:{ Screen = float3(0.0, 1.0, 0.0); break; }    
case 1:{ Screen = float3(1.0, 0.0, 0.0); break; }    
case 2:{ Screen = float3(0.0, 0.0, 1.0); break; }    
case 3:{ Screen = float3(0.07, 0.18, 0.72); break; } 
case 4:{ Screen = float3(0.29, 0.84, 0.36); break; } 
case 5:{ Screen = CustomColor;              break; } 
case 6:{ Screen = float3(0.0, 0.0, 0.0); break; } 
}
#line 175
float DepthMask = MaskAA(texcoord);
#line 177
if (Floor)
{
#line 180
bool FloorMask = (float)round( GetNormal(texcoord).y*Precision )/Precision==(float)round( FloorAngle*Precision )/Precision;
#line 182
if (FloorMask)
DepthMask = 1.0;
}
#line 186
if(bool(CKPass)) DepthMask = 1.0-DepthMask;
#line 188
return float4(lerp(tex2D(ReShade::BackBuffer, texcoord).rgb, Screen, DepthMask), DepthMask > Threshold && Color == 6 ? 0.0 : 1.0);
}
#line 196
technique Chromakey < ui_tooltip = "Generate green-screen wall based of depth"; >
{
pass
{
VertexShader = PostProcessVS;
PixelShader = ChromakeyPS;
}
}

