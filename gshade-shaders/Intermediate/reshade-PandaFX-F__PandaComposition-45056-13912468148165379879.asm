//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Blend_Amount;                // Offset:    0 Size:     4
//   float Contrast_R;                  // Offset:    4 Size:     4 [unused]
//   float Contrast_G;                  // Offset:    8 Size:     4 [unused]
//   float Contrast_B;                  // Offset:   12 Size:     4 [unused]
//   float Gamma_R;                     // Offset:   16 Size:     4 [unused]
//   float Gamma_G;                     // Offset:   20 Size:     4 [unused]
//   float Gamma_B;                     // Offset:   24 Size:     4 [unused]
//   bool Enable_Diffusion;             // Offset:   28 Size:     4 [unused]
//   bool Enable_Static_Dither;         // Offset:   32 Size:     4 [unused]
//   float Diffusion_1_Amount;          // Offset:   36 Size:     4
//   int Diffusion_1_Radius;            // Offset:   40 Size:     4 [unused]
//   float Diffusion_1_Gamma;           // Offset:   44 Size:     4
//   float Diffusion_1_Quality;         // Offset:   48 Size:     4 [unused]
//   float Diffusion_1_Desaturate;      // Offset:   52 Size:     4 [unused]
//   float Diffusion_2_Amount;          // Offset:   56 Size:     4
//   int Diffusion_2_Radius;            // Offset:   60 Size:     4 [unused]
//   float Diffusion_2_Gamma;           // Offset:   64 Size:     4
//   float Diffusion_2_Quality;         // Offset:   68 Size:     4 [unused]
//   float Diffusion_2_Desaturate;      // Offset:   72 Size:     4
//   float Diffusion_3_Amount;          // Offset:   76 Size:     4
//   int Diffusion_3_Radius;            // Offset:   80 Size:     4 [unused]
//   float Diffusion_3_Gamma;           // Offset:   84 Size:     4
//   float Diffusion_3_Quality;         // Offset:   88 Size:     4 [unused]
//   float Diffusion_3_Desaturate;      // Offset:   92 Size:     4
//   bool Enable_Bleach_Bypass;         // Offset:   96 Size:     4 [unused]
//   float Bleach_Bypass_Amount;        // Offset:  100 Size:     4
//   bool Enable_Dither;                // Offset:  104 Size:     4 [unused]
//   float Dither_Amount;               // Offset:  108 Size:     4
//   float framecount;                  // Offset:  112 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ReShade__BackBufferTex       texture  float4          2d             t0      1 
// __V__NoiseTex                     texture  float4          2d             t4      1 
// __V__prePassLayer                 texture  float4          2d             t6      1 
// __V__blurLayerVertical            texture  float4          2d            t10      1 
// __V__blurLayerVerticalMedRes      texture  float4          2d            t14      1 
// __V__blurLayerVerticalLoRes       texture  float4          2d            t18      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[8], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t18
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t10.xyzw, s0
dp3 r0.w, l(0.333300, 0.333300, 0.333300, 0.000000), r0.xyzx
add r1.xyz, -r0.xyzx, r0.wwww
mad r0.xyz, cb0[4].zzzz, r1.xyzx, r0.xyzx
mul r0.xyz, r0.xyzx, cb0[2].yyyy
max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
log r0.xyz, r0.xyzx
mul r0.xyz, r0.xyzx, cb0[2].wwww
exp r0.xyz, r0.xyzx
add r0.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t4.xyzw, s0
mad r1.yzw, -r1.xxyz, l(0.000000, 0.010000, 0.010000, 0.010000), l(0.000000, 1.000000, 1.000000, 1.000000)
mad_sat r0.xyz, -r1.yzwy, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r0.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t6.xyzw, s0
add r3.xyz, -r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r0.xyz, -r0.xyzx, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r0.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v1.xyxx, t14.xyzw, s0
dp3 r0.w, l(0.333300, 0.333300, 0.333300, 0.000000), r3.xyzx
add r4.xyz, -r3.xyzx, r0.wwww
mad r3.xyz, cb0[4].zzzz, r4.xyzx, r3.xyzx
mul r3.xyz, r3.xyzx, cb0[3].zzzz
max r3.xyz, r3.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
log r3.xyz, r3.xyzx
mul r3.xyz, r3.xyzx, cb0[4].xxxx
exp r3.xyz, r3.xyzx
add r3.xyz, -r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad_sat r3.xyz, -r1.yzwy, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r3.xyz, -r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r0.xyz, -r3.xyzx, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r0.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v1.xyxx, t18.xyzw, s0
dp3 r0.w, l(0.333300, 0.333300, 0.333300, 0.000000), r3.xyzx
add r4.xyz, -r3.xyzx, r0.wwww
mad r3.xyz, cb0[5].wwww, r4.xyzx, r3.xyzx
mul r3.xyz, r3.xyzx, cb0[4].wwww
max r3.xyz, r3.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
log r3.xyz, r3.xyzx
mul r3.xyz, r3.xyzx, cb0[5].yyyy
exp r3.xyz, r3.xyzx
add r3.xyz, -r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad_sat r1.yzw, -r1.yyzw, r3.xxyz, l(0.000000, 1.000000, 1.000000, 1.000000)
add r1.yzw, -r1.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
mad r2.xyz, -r1.yzwy, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
dp3 r0.x, l(0.333300, 0.333300, 0.333300, 0.000000), r2.xyzx
lt r0.y, l(0.500000), r0.x
add r0.z, -r0.x, l(1.000000)
add r0.x, r0.x, r0.x
mul r3.xyzw, r2.xyzw, r0.xxxx
add r0.x, r0.z, r0.z
add r4.xyzw, -r2.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
mad r4.xyzw, -r0.xxxx, r4.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
movc r0.xyzw, r0.yyyy, r4.xyzw, r3.xyzw
max r0.xyzw, r0.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
log r0.xyzw, r0.xyzw
mul r0.xyzw, r0.xyzw, l(0.600000, 0.600000, 0.600000, 0.600000)
exp r0.xyzw, r0.xyzw
add r0.xyzw, -r2.xyzw, r0.xyzw
mad r0.xyzw, cb0[6].yyyy, r0.xyzw, r2.xyzw
sqrt r1.yzw, r0.xxyz
add r1.yzw, -r0.xxyz, r1.yyzw
mul r2.x, -r1.x, cb0[7].x
mul r1.x, r1.x, cb0[7].x
dp2 r1.x, r1.xxxx, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r1.x, null, r1.x
mul r1.x, r1.x, l(43758.542969)
frc r1.x, r1.x
dp2 r2.x, r2.xxxx, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r2.x, null, r2.x
mul r2.x, r2.x, l(43758.542969)
frc r2.x, r2.x
mul r2.xy, r2.xxxx, v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t4.xyzw, s0
mad r2.y, r2.x, l(2.000000), l(-1.000000)
lt r2.x, l(0.500000), r2.x
mad r1.z, r2.y, r1.z, r0.y
mad r2.y, r2.y, -r0.y, r0.y
movc r2.y, r2.x, r1.z, r2.y
mul r3.xy, r1.xxxx, v1.xyxx
mul r1.xz, r1.xxxx, -v1.xxyx
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xzxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.z, r3.xyxx, t4.yzxw, s0
mad r3.x, r1.z, l(2.000000), l(-1.000000)
lt r1.z, l(0.500000), r1.z
mad r1.y, r3.x, r1.y, r0.x
mad r3.x, r3.x, -r0.x, r0.x
movc r2.x, r1.z, r1.y, r3.x
mad r1.y, r1.x, l(2.000000), l(-1.000000)
lt r1.x, l(0.500000), r1.x
mad r1.z, r1.y, r1.w, r0.z
mad r1.y, r1.y, -r0.z, r0.z
movc r2.z, r1.x, r1.z, r1.y
mov r2.w, r0.w
add r1.xyzw, -r0.xyzw, r2.xyzw
mad r0.xyzw, cb0[6].wwww, r1.xyzw, r0.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s0
add r0.xyzw, r0.xyzw, -r1.xyzw
mad o0.xyzw, cb0[0].xxxx, r0.xyzw, r1.xyzw
ret 
// Approximately 100 instruction slots used
