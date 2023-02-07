//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float3 uColor;                     // Offset:    0 Size:    12 [unused]
//   float uAmount;                     // Offset:   12 Size:     4 [unused]
//   float uThreshold;                  // Offset:   16 Size:     4 [unused]
//   float uCutOff;                     // Offset:   20 Size:     4 [unused]
//   float uCurve;                      // Offset:   24 Size:     4 [unused]
//   float2 uScale;                     // Offset:   32 Size:     8
//   float uMaxBrightness;              // Offset:   40 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__tBadBloom_Threshold          texture  float4          2d             t4      1 
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
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
mul r0.xz, cb0[2].xxxx, l(0.002932, 0.000000, 0.001716, 0.000000)
mov r0.yw, l(0,0,0,0)
add r0.xyzw, r0.xyzw, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t4.xyzw, s0
mul r1.xyzw, r1.xyzw, l(0.304005, 0.304005, 0.304005, 0.304005)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t4.xyzw, s0
mad r1.xyzw, r2.xyzw, l(0.204164, 0.204164, 0.204164, 0.204164), r1.xyzw
mul r2.xz, cb0[2].xxxx, l(0.001466, 0.000000, 0.000858, 0.000000)
mov r2.yw, l(0,0,0,0)
add r2.xyzw, -r2.xyzw, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t4.xyzw, s0
mad r1.xyzw, r3.xyzw, l(0.304005, 0.304005, 0.304005, 0.304005), r1.xyzw
mad r0.xyzw, r0.xyzw, l(0.093913, 0.093913, 0.093913, 0.093913), r1.xyzw
mad r0.xyzw, r2.xyzw, l(0.093913, 0.093913, 0.093913, 0.093913), r0.xyzw
mov r1.xz, l(0,0,0,0)
mul r1.yw, cb0[2].yyyy, l(0.000000, 0.005268, 0.000000, 0.003083)
add r1.xyzw, r1.xyzw, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t4.xyzw, s0
mad r0.xyzw, r2.xyzw, l(0.304005, 0.304005, 0.304005, 0.304005), r0.xyzw
mov r2.x, l(0)
mul r2.yw, cb0[2].yyyy, l(0.000000, 0.002634, 0.000000, 0.001542)
add r2.xyzw, -r2.xyxw, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t4.xyzw, s0
mad r0.xyzw, r3.xyzw, l(0.304005, 0.304005, 0.304005, 0.304005), r0.xyzw
mad r0.xyzw, r1.xyzw, l(0.093913, 0.093913, 0.093913, 0.093913), r0.xyzw
mad r0.xyzw, r2.xyzw, l(0.093913, 0.093913, 0.093913, 0.093913), r0.xyzw
mul o0.xyzw, r0.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000)
ret 
// Approximately 32 instruction slots used
