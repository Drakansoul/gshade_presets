//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s2                              sampler      NA          NA             s2      1 
// __V__CinematicDOF__texCDCoCTileTmp    texture  float4          2d            t10      1 
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
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t10
dcl_input_ps linear v1.xy
dcl_output o0.x
dcl_temps 2
add r0.xyzw, v1.xyxy, l(0.000000, 0.000468, -0.000000, -0.000468)
sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t10.xyzw, s2, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.y, r0.zwzz, t10.yxzw, s2, l(0.000000)
min r0.x, r0.x, l(10.000000)
min r0.x, r0.y, r0.x
add r1.xyzw, v1.xyxy, l(0.000000, 0.000936, -0.000000, -0.000936)
sample_l_indexable(texture2d)(float,float,float,float) r0.y, r1.xyxx, t10.yxzw, s2, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.z, r1.zwzz, t10.yzxw, s2, l(0.000000)
min r0.x, r0.y, r0.x
min o0.x, r0.z, r0.x
ret 
// Approximately 11 instruction slots used