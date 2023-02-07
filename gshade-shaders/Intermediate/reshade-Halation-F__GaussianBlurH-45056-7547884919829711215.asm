//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int halationRadius;                // Offset:    0 Size:     4
//   float halationOffset;              // Offset:    4 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__HalationTex                  texture  float4          2d             t4      1 
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
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 5
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t4.xyzw, s0
switch cb0[0].x
  case l(0)
  mad r1.xyzw, cb0[0].yyyy, l(0.000308, 0.000000, 0.000789, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t4.xyzw, s0, l(0.000000)
  mul r2.xyz, r2.xyzx, l(0.295960, 0.295960, 0.295960, 0.000000)
  mad r2.xyz, r0.xyzx, l(0.398940, 0.398940, 0.398940, 0.000000), r2.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.000308, 0.000000, 0.000789, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r2.xyz, r4.xyzx, l(0.295960, 0.295960, 0.295960, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r1.xyzx, l(0.004566, 0.004566, 0.004566, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.004566, 0.004566, 0.004566, 0.000000), r1.xyzx
  mad r2.xy, cb0[0].yyyy, l(0.001303, 0.000000, 0.000000, 0.000000), v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.000001, 0.000001, 0.000001, 0.000000), r1.xyzx
  mad r2.xy, -cb0[0].yyyy, l(0.001303, 0.000000, 0.000000, 0.000000), v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r0.xyz, r2.xyzx, l(0.000001, 0.000001, 0.000001, 0.000000), r1.xyzx
  break 
  case l(1)
  mad r1.xyzw, cb0[0].yyyy, l(0.000380, 0.000000, 0.000886, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t4.xyzw, s0, l(0.000000)
  mul r2.xyz, r2.xyzx, l(0.232276, 0.232276, 0.232276, 0.000000)
  mad r2.xyz, r0.xyzx, l(0.132980, 0.132980, 0.132980, 0.000000), r2.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.000380, 0.000000, 0.000886, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r2.xyz, r4.xyzx, l(0.232276, 0.232276, 0.232276, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r1.xyzx, l(0.135326, 0.135326, 0.135326, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.135326, 0.135326, 0.135326, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.001394, 0.000000, 0.001902, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.051156, 0.051156, 0.051156, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.001394, 0.000000, 0.001902, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.051156, 0.051156, 0.051156, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.012539, 0.012539, 0.012539, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.012539, 0.012539, 0.012539, 0.000000), r1.xyzx
  mad r2.xy, cb0[0].yyyy, l(0.002411, 0.000000, 0.000000, 0.000000), v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.001991, 0.001991, 0.001991, 0.000000), r1.xyzx
  mad r2.xy, -cb0[0].yyyy, l(0.002411, 0.000000, 0.000000, 0.000000), v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r0.xyz, r2.xyzx, l(0.001991, 0.001991, 0.001991, 0.000000), r1.xyzx
  break 
  case l(2)
  mad r1.xyzw, cb0[0].yyyy, l(0.000388, 0.000000, 0.000905, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t4.xyzw, s0, l(0.000000)
  mul r2.xyz, r2.xyzx, l(0.128470, 0.128470, 0.128470, 0.000000)
  mad r2.xyz, r0.xyzx, l(0.066490, 0.066490, 0.066490, 0.000000), r2.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.000388, 0.000000, 0.000905, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r2.xyz, r4.xyzx, l(0.128470, 0.128470, 0.128470, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r1.xyzx, l(0.111918, 0.111918, 0.111918, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.111918, 0.111918, 0.111918, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.001422, 0.000000, 0.001940, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.087313, 0.087313, 0.087313, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.001422, 0.000000, 0.001940, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.087313, 0.087313, 0.087313, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.061001, 0.061001, 0.061001, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.061001, 0.061001, 0.061001, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.002457, 0.000000, 0.002974, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.038166, 0.038166, 0.038166, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.002457, 0.000000, 0.002974, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.038166, 0.038166, 0.038166, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.021384, 0.021384, 0.021384, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.021384, 0.021384, 0.021384, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.003491, 0.000000, 0.004009, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.010729, 0.010729, 0.010729, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.003491, 0.000000, 0.004009, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.010729, 0.010729, 0.010729, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.004821, 0.004821, 0.004821, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.004821, 0.004821, 0.004821, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.004526, 0.000000, 0.005044, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.001940, 0.001940, 0.001940, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.004526, 0.000000, 0.005044, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.001940, 0.001940, 0.001940, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.000699, 0.000699, 0.000699, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r0.xyz, r2.xyzx, l(0.000699, 0.000699, 0.000699, 0.000000), r1.xyzx
  break 
  case l(3)
  mad r1.xyzw, cb0[0].yyyy, l(0.000389, 0.000000, 0.000909, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t4.xyzw, s0, l(0.000000)
  mul r2.xyz, r2.xyzx, l(0.087299, 0.087299, 0.087299, 0.000000)
  mad r2.xyz, r0.xyzx, l(0.044327, 0.044327, 0.044327, 0.000000), r2.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.000389, 0.000000, 0.000909, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r2.xyz, r4.xyzx, l(0.087299, 0.087299, 0.087299, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r1.xyzx, l(0.082089, 0.082089, 0.082089, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.082089, 0.082089, 0.082089, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.001428, 0.000000, 0.001947, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.073482, 0.073482, 0.073482, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.001428, 0.000000, 0.001947, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.073482, 0.073482, 0.073482, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.062617, 0.062617, 0.062617, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.062617, 0.062617, 0.062617, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.002466, 0.000000, 0.002986, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.050796, 0.050796, 0.050796, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.002466, 0.000000, 0.002986, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.050796, 0.050796, 0.050796, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.039226, 0.039226, 0.039226, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.039226, 0.039226, 0.039226, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.003505, 0.000000, 0.004024, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.028837, 0.028837, 0.028837, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.003505, 0.000000, 0.004024, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.028837, 0.028837, 0.028837, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.020181, 0.020181, 0.020181, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.020181, 0.020181, 0.020181, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.004543, 0.000000, 0.005063, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.013445, 0.013445, 0.013445, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.004543, 0.000000, 0.005063, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.013445, 0.013445, 0.013445, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.008527, 0.008527, 0.008527, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.008527, 0.008527, 0.008527, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.005582, 0.000000, 0.006101, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.005148, 0.005148, 0.005148, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.005582, 0.000000, 0.006101, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.005148, 0.005148, 0.005148, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.002959, 0.002959, 0.002959, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.002959, 0.002959, 0.002959, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.006620, 0.000000, 0.007140, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.001619, 0.001619, 0.001619, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.006620, 0.000000, 0.007140, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.001619, 0.001619, 0.001619, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.000843, 0.000843, 0.000843, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r0.xyz, r2.xyzx, l(0.000843, 0.000843, 0.000843, 0.000000), r1.xyzx
  break 
  case l(4)
  mad r1.xyzw, cb0[0].yyyy, l(0.000389, 0.000000, 0.000909, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t4.xyzw, s0, l(0.000000)
  mul r2.xyz, r2.xyzx, l(0.065916, 0.065916, 0.065916, 0.000000)
  mad r2.xyz, r0.xyzx, l(0.033245, 0.033245, 0.033245, 0.000000), r2.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.000389, 0.000000, 0.000909, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r2.xyz, r4.xyzx, l(0.065916, 0.065916, 0.065916, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r1.xyzx, l(0.063671, 0.063671, 0.063671, 0.000000), r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.063671, 0.063671, 0.063671, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.001428, 0.000000, 0.001947, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.059819, 0.059819, 0.059819, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.001428, 0.000000, 0.001947, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.059819, 0.059819, 0.059819, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.054664, 0.054664, 0.054664, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.054664, 0.054664, 0.054664, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.002466, 0.000000, 0.002986, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.048587, 0.048587, 0.048587, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.002466, 0.000000, 0.002986, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.048587, 0.048587, 0.048587, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.042005, 0.042005, 0.042005, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.042005, 0.042005, 0.042005, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.003505, 0.000000, 0.004024, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.035321, 0.035321, 0.035321, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.003505, 0.000000, 0.004024, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.035321, 0.035321, 0.035321, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.028888, 0.028888, 0.028888, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.028888, 0.028888, 0.028888, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.004543, 0.000000, 0.005069, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.022981, 0.022981, 0.022981, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.004543, 0.000000, 0.005069, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.022981, 0.022981, 0.022981, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.017782, 0.017782, 0.017782, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.017782, 0.017782, 0.017782, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.005589, 0.000000, 0.006109, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.013382, 0.013382, 0.013382, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.005589, 0.000000, 0.006109, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.013382, 0.013382, 0.013382, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.009796, 0.009796, 0.009796, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.009796, 0.009796, 0.009796, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.006629, 0.000000, 0.007149, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.006975, 0.006975, 0.006975, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.006629, 0.000000, 0.007149, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.006975, 0.006975, 0.006975, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.004830, 0.004830, 0.004830, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.004830, 0.004830, 0.004830, 0.000000), r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.007669, 0.000000, 0.008189, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r3.xyzx, l(0.003253, 0.003253, 0.003253, 0.000000), r1.xyzx
  mad r3.xyzw, -cb0[0].yyyy, l(0.007669, 0.000000, 0.008189, 0.000000), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r4.xyzx, l(0.003253, 0.003253, 0.003253, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.002132, 0.002132, 0.002132, 0.000000), r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r3.zwzz, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.002132, 0.002132, 0.002132, 0.000000), r1.xyzx
  mad r2.xy, cb0[0].yyyy, l(0.008709, 0.000000, 0.000000, 0.000000), v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r1.xyz, r2.xyzx, l(0.001358, 0.001358, 0.001358, 0.000000), r1.xyzx
  mad r2.xy, -cb0[0].yyyy, l(0.008709, 0.000000, 0.000000, 0.000000), v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t4.xyzw, s0, l(0.000000)
  mad r0.xyz, r2.xyzx, l(0.001358, 0.001358, 0.001358, 0.000000), r1.xyzx
  break 
  default 
  break 
endswitch 
mov_sat o0.xyz, r0.xyzx
ret 
// Approximately 270 instruction slots used
