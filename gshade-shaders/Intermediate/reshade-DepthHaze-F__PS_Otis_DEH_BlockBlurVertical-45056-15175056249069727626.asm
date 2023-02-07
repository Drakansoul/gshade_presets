//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
// __V__Otis_FragmentBuffer1         texture  float4          2d             t4      1 
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
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t4.xyzw, s0
sample_l_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t2.xyzw, s0, l(0.000000)
mad r1.y, -r1.x, l(999.000000), l(1000.000000)
div r1.x, r1.x, r1.y
mov r2.x, l(0)
mov r3.xyzw, r0.xyzw
mov r1.yzw, l(0,1.000000,1.000000,-1)
loop 
  breakc_z r1.w
  mul r2.y, r1.z, l(0.000468)
  add r2.zw, r2.xxxy, v1.xxxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.x, r2.zwzz, t2.xyzw, s0, l(0.000000)
  mad r4.y, -r4.x, l(999.000000), l(1000.000000)
  div r4.x, r4.x, r4.y
  add r4.y, r1.x, -r4.x
  add r4.y, -|r4.y|, l(1.000000)
  div r4.z, l(1.000000, 1.000000, 1.000000, 1.000000), r1.z
  mul r4.y, r4.z, r4.y
  mul r4.w, r4.x, r4.y
  sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r2.zwzz, t4.xyzw, s0
  mad r5.xyzw, r5.xyzw, r4.wwww, r3.xyzw
  mad r2.z, r4.y, r4.x, r1.y
  add r2.yw, -r2.xxxy, v1.xxxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.x, r2.ywyy, t2.xyzw, s0, l(0.000000)
  mad r4.y, -r4.x, l(999.000000), l(1000.000000)
  div r4.x, r4.x, r4.y
  add r4.y, r1.x, -r4.x
  add r4.y, -|r4.y|, l(1.000000)
  mul r4.y, r4.z, r4.y
  mul r4.z, r4.x, r4.y
  sample_indexable(texture2d)(float,float,float,float) r6.xyzw, r2.ywyy, t4.xyzw, s0
  mad r3.xyzw, r6.xyzw, r4.zzzz, r5.xyzw
  mad r1.y, r4.y, r4.x, r2.z
  add r1.z, r1.z, l(1.000000)
  lt r1.w, r1.z, l(5.000000)
endloop 
div o0.xyzw, r3.xyzw, r1.yyyy
ret 
// Approximately 38 instruction slots used
