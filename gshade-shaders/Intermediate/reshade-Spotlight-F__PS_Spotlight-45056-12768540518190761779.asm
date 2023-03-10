//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int Spotlight_Quantity;            // Offset:    0 Size:     4 [unused]
//   float uXCenter;                    // Offset:    4 Size:     4
//   float uYCenter;                    // Offset:    8 Size:     4
//   float uBrightness;                 // Offset:   12 Size:     4
//   float uSize;                       // Offset:   16 Size:     4
//   float3 uColor;                     // Offset:   20 Size:    12
//   float uDistance;                   // Offset:   32 Size:     4
//   bool uBlendFix;                    // Offset:   36 Size:     4
//   bool uToggleTexture;               // Offset:   40 Size:     4
//   bool uToggleDepth;                 // Offset:   44 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s1                              sampler      NA          NA             s1      1 
// __srgbV__ReShade__BackBufferTex    texture  float4          2d             t1      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
mov r0.x, -cb0[0].y
mov r0.y, cb0[0].z
add r0.xy, r0.xyxx, v1.xyxx
mad r0.xy, r0.xyxx, l(3840.000000, 2137.000000, 0.000000, 0.000000), l(-1920.000000, -1068.500000, 0.000000, 0.000000)
dp2 r0.x, r0.xyxx, r0.xyxx
sqrt r0.x, r0.x
min r0.x, r0.x, cb0[1].x
add r0.x, -r0.x, cb0[1].x
div r0.x, r0.x, cb0[1].x
mul r0.y, r0.x, l(30.000000)
sincos r0.y, null, r0.y
mad r0.y, r0.y, l(0.500000), l(0.500000)
add r0.z, -r0.y, l(1.000000)
add r0.w, r0.x, r0.x
mad r0.y, r0.w, r0.z, r0.y
mad r0.y, r0.y, l(0.125000), l(0.437500)
mul r0.x, r0.x, r0.y
mul r0.x, r0.x, l(4.000000)
movc r0.x, cb0[2].z, r0.w, r0.x
sample_l_indexable(texture2d)(float,float,float,float) r0.y, v1.xyxx, t2.yxzw, s0, l(0.000000)
mad r0.z, -r0.y, l(999.000000), l(1000.000000)
div r0.y, r0.y, r0.z
add r0.y, -r0.y, l(1.000000)
log r0.y, |r0.y|
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[2].x
mul r0.y, r0.y, r0.z
exp r0.y, r0.y
mul r0.y, r0.y, r0.x
movc r0.x, cb0[2].w, r0.y, r0.x
mul r0.xyz, r0.xxxx, cb0[1].yzwy
mul r1.xyz, r0.xyzx, r0.xyzx
mul r0.xyz, r0.xyzx, r1.xyzx
mul r1.xyz, r0.xyzx, cb0[0].wwww
mad r0.xyz, r0.xyzx, cb0[0].wwww, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r1.xyz, r1.xyzx, l(0.001000, 0.001000, 0.001000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t1.xyzw, s1
mul r0.xyz, r0.xyzx, r2.xyzx
max r1.xyz, r1.xyzx, r0.xyzx
movc o0.xyz, cb0[2].yyyy, r0.xyzx, r1.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 41 instruction slots used
