//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Timer;                       // Offset:    0 Size:     4
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.z, v1.xyxx, t0.xyzw, s0
mad r1.xyz, cb0[0].xxxx, l(0.000050, 0.000050, 0.000100, 0.000000), v1.yyyy
mul r1.xyz, r1.xyzx, l(272.000000, 136.000000, 4.000000, 0.000000)
round_ni r1.y, r1.y
mad r1.x, -r1.y, l(2.000000), r1.x
sincos r1.y, null, r1.z
mul r1.y, r1.y, l(0.020000)
mad r2.x, r1.x, l(0.000500), v1.x
max r1.x, r1.x, l(0.850000)
min r1.x, r1.x, l(1.000000)
mov r2.y, v1.y
add r2.xyzw, r2.xyxy, l(0.001000, 0.000000, -0.001000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.z, r2.zwzz, t0.xzyw, s0
sample_indexable(texture2d)(float,float,float,float) r0.x, r2.xyxx, t0.xyzw, s0
mul r0.y, r1.z, l(0.990000)
mov r0.w, l(1.000000)
mad o0.xyzw, r0.xyzw, r1.xxxx, r1.yyyy
ret 
// Approximately 18 instruction slots used
