//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float4 PatternColor;               // Offset:    0 Size:    16 [unused]
//   float2 PatternRange;               // Offset:   16 Size:     8 [unused]
//   float OutlineThreshold;            // Offset:   24 Size:     4 [unused]
//   float Posterization;               // Offset:   28 Size:     4 [unused]
//   float SmoothingScale;              // Offset:   32 Size:     4
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
mad r1.xy, -cb0[2].xxxx, l(0.000000, 0.000936, 0.000000, 0.000000), v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t0.xyzw, s0
add r0.xyz, -r0.xyzx, r1.xyzx
add r0.xyz, -|r0.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
dp3 r0.x, r0.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
lt r0.x, l(0.900000), r0.x
mov r1.w, l(1.000000)
and r2.xyzw, r0.xxxx, r1.xyzw
add r3.xyzw, r1.xyzw, r2.xyzw
movc r3.xyzw, r0.xxxx, r3.xyzw, r2.xyzw
add r3.xyzw, r1.xyzw, r3.xyzw
movc r3.xyzw, r0.xxxx, r3.xyzw, r2.xyzw
add r3.xyzw, r1.xyzw, r3.xyzw
movc r3.xyzw, r0.xxxx, r3.xyzw, r2.xyzw
add r1.xyzw, r1.xyzw, r3.xyzw
movc r0.xyzw, r0.xxxx, r1.xyzw, r2.xyzw
div o0.xyz, r0.xyzx, r0.wwww
mov o0.w, l(1.000000)
ret 
// Approximately 20 instruction slots used
