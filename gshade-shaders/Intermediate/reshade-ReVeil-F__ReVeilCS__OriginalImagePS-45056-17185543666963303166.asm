//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __V__ReVeilCS__BackBuffer         texture  float4          2d             t8      1 
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
dcl_resource_texture2d (float,float,float,float) t8
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 1
mul r0.xy, v1.xyxx, l(3840.000000, 2137.000000, 0.000000, 0.000000)
ftoi r0.xy, r0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyzw, t8.xyzw
mov o0.xyz, r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 7 instruction slots used