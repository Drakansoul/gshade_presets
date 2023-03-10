//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Timer;                       // Offset:    0 Size:     4 [unused]
//   bool HasDepth;                     // Offset:    4 Size:     4 [unused]
//   int DISTANCE;                      // Offset:    8 Size:     4
//   int HIGHLIGHT_DIST;                // Offset:   12 Size:     4 [unused]
//   float3 FOG_TINT;                   // Offset:   16 Size:    12 [unused]
//   int AUTO_COLOR;                    // Offset:   28 Size:     4 [unused]
//   int WIDTH;                         // Offset:   32 Size:     4 [unused]
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
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
// __V__TexColor                     texture  float4          2d             t4      1 
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
// SV_TARGET                0   xyz         0   TARGET   float   xyz 
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 3
sample_l_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t2.xyzw, s0, l(0.000000)
mad r0.y, -r0.x, l(999.000000), l(1000.000000)
div r0.x, r0.x, r0.y
add r0.y, -r0.x, l(1.000000)
ne r0.y, l(0.000000, 0.000000, 0.000000, 0.000000), r0.y
and r0.y, r0.y, l(0x3f800000)
mul r0.x, r0.y, r0.x
itof r0.y, cb0[0].z
mad r0.y, r0.y, l(0.020000), l(2.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t4.xyzw, s1
log r2.xyz, |r1.xyzx|
mul r0.yzw, r0.yyyy, r2.xxyz
exp r0.yzw, r0.yyzw
add r0.yzw, -r1.xxyz, r0.yyzw
mad r0.xyz, r0.xxxx, r0.yzwy, r1.xyzx
dp3 o0.xyz, r0.xyzx, l(0.212395, 0.701049, 0.086556, 0.000000)
ret 
// Approximately 17 instruction slots used
