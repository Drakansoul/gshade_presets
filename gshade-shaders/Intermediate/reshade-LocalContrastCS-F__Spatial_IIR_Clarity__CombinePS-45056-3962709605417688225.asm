//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__Spatial_IIR_Clarity__Blur0    texture  float4          2d             t4      1 
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
// SV_TARGET                0   x           0   TARGET   float   x   
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.x
dcl_temps 1
mul r0.xy, v1.xyxx, l(0.500000, 1.000000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t4.xyzw, s0
mad r0.yz, v1.xxyx, l(0.000000, 0.500000, 1.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.yzyy, t4.yxzw, s0
add r0.x, r0.y, r0.x
mul o0.x, r0.x, l(0.500000)
ret 
// Approximately 7 instruction slots used
