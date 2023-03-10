//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ArcaneBloom_____tArcaneBloom_Bloom3Alt    texture  float4          2d            t20      1 
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
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t20
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
add r0.xyzw, v1.xyxy, l(-0.000000, -0.089846, 0.000000, -0.074871)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r0.zwzz, t20.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyxx, t20.xyzw, s0
mul r1.xyz, r1.xyzx, l(0.033159, 0.033159, 0.033159, 0.000000)
mad r0.xyz, r0.xyzx, l(0.017997, 0.017997, 0.017997, 0.000000), r1.xyzx
add r1.xyzw, v1.xyxy, l(0.000000, -0.059897, 0.000000, -0.044923)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t20.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t20.xyzw, s0
mad r0.xyz, r2.xyzx, l(0.054670, 0.054670, 0.054670, 0.000000), r0.xyzx
mad r0.xyz, r1.xyzx, l(0.080657, 0.080657, 0.080657, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(0.000000, -0.029949, 0.000000, -0.014974)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t20.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t20.xyzw, s0
mad r0.xyz, r2.xyzx, l(0.106483, 0.106483, 0.106483, 0.000000), r0.xyzx
mad r0.xyz, r1.xyzx, l(0.125794, 0.125794, 0.125794, 0.000000), r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t20.xyzw, s0
mad r0.xyz, r1.xyzx, l(0.132981, 0.132981, 0.132981, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(0.000000, 0.014974, 0.000000, 0.029949)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t20.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t20.xyzw, s0
mad r0.xyz, r2.xyzx, l(0.125794, 0.125794, 0.125794, 0.000000), r0.xyzx
mad r0.xyz, r1.xyzx, l(0.106483, 0.106483, 0.106483, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(0.000000, 0.044923, 0.000000, 0.059897)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t20.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t20.xyzw, s0
mad r0.xyz, r2.xyzx, l(0.080657, 0.080657, 0.080657, 0.000000), r0.xyzx
mad r0.xyz, r1.xyzx, l(0.054670, 0.054670, 0.054670, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(0.000000, 0.074871, 0.000000, 0.089846)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t20.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t20.xyzw, s0
mad r0.xyz, r2.xyzx, l(0.033159, 0.033159, 0.033159, 0.000000), r0.xyzx
mad o0.xyz, r1.xyzx, l(0.017997, 0.017997, 0.017997, 0.000000), r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 34 instruction slots used
