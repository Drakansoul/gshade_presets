//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s2                              sampler      NA          NA             s2      1 
// __V__CinematicDOF__texCDCoCTile    texture  float4          2d            t12      1 
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
dcl_resource_texture2d (float,float,float,float) t12
dcl_input_ps linear v1.xy
dcl_output o0.x
dcl_temps 3
mov r0.xyz, l(10.000000,-1.000000,-1,0)
loop 
  breakc_z r0.z
  mul r1.x, r0.y, l(0.001302)
  mov r0.w, r0.x
  mov r1.zw, l(0,0,-1.000000,-1)
  loop 
    breakc_z r1.w
    mul r1.y, r1.z, l(0.001188)
    add r2.xy, r1.xyxx, v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t12.yxzw, s2, l(0.000000)
    min r0.w, r0.w, r1.y
    add r1.z, r1.z, l(1.000000)
    lt r1.w, r1.z, l(2.000000)
  endloop 
  mov r0.x, r0.w
  add r0.y, r0.y, l(1.000000)
  lt r0.z, r0.y, l(2.000000)
endloop 
mov o0.x, r0.x
ret 
// Approximately 21 instruction slots used