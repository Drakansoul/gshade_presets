//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__target1                      texture  float4          2d             t2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 1     zw        1     NONE   float       
// TEXCOORD                 2   xy          2     NONE   float       
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
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
add r0.xyzw, v1.xyxy, l(-0.008203, 0.000000, 0.008203, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r0.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.zwzz, t2.xyzw, s0
add r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, l(-0.000900, 0.008200, 0.008200, 0.000000)
add r1.xyzw, v1.xyxy, l(-0.009375, 0.000000, 0.009375, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t2.xyzw, s0
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(-0.002000, 0.004600, 0.004600, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(-0.007031, 0.000000, 0.007031, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t2.xyzw, s0
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(0.003800, 0.018200, 0.018200, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(-0.005859, 0.000000, 0.005859, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t2.xyzw, s0
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(0.017800, 0.035300, 0.035300, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(-0.004688, 0.000000, 0.004688, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t2.xyzw, s0
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(0.044500, 0.050100, 0.050100, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(-0.003516, 0.000000, 0.003516, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t2.xyzw, s0
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(0.081700, 0.083200, 0.083200, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(-0.002344, 0.000000, 0.002344, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t2.xyzw, s0
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(0.121400, 0.106200, 0.106200, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(-0.001172, 0.000000, 0.001172, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t2.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t2.xyzw, s0
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(0.151900, 0.122200, 0.122200, 0.000000), r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t2.xyzw, s0
mad o0.xyz, r1.xyzx, l(0.163400, 0.128000, 0.128000, 0.000000), r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 44 instruction slots used
