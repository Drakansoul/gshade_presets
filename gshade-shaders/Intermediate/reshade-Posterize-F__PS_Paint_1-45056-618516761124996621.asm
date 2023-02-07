//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__qUINT__BackBufferTex         texture  float4          2d             t0      1 
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 8
mov r0.xyzw, l(0,0,0,10000000000.000000)
mov r1.xyzw, l(0,0,0,0)
mov r2.x, l(-1)
loop 
  breakc_z r2.x
  itof r2.y, r1.w
  add r2.y, r2.y, l(0.250000)
  mul r2.y, r2.y, l(0.628319)
  sincos r3.x, r4.x, r2.y
  mov r4.y, r3.x
  mad r2.yz, -r4.xxyx, l(0.000000, 0.001042, 0.001872, 0.000000), v1.xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r2.yzw, r2.yzyy, t0.wxyz, s0, l(0.000000)
  mov r5.xyz, r2.yzwy
  mov r3.xyzw, l(0,0,0,0)
  mov r4.zw, l(0,0,-3,-1)
  loop 
    breakc_z r4.w
    itof r5.w, r4.z
    mul r6.xy, r4.xyxx, r5.wwww
    mad r6.xy, r6.xyxx, l(0.000260, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t0.xyzw, s0, l(0.000000)
    add r3.xyz, r3.xyzx, r6.xyzx
    add r7.xyz, -r5.xyzx, r6.xyzx
    max r5.w, |r7.y|, |r7.x|
    max r5.w, |r7.z|, r5.w
    add r3.w, r3.w, r5.w
    iadd r4.z, r4.z, l(1)
    ige r4.w, l(4), r4.z
    mov r5.xyz, r6.xyzx
  endloop 
  lt r2.y, r3.w, r0.w
  movc r0.xyzw, r2.yyyy, r3.xyzw, r0.xyzw
  add r1.xyz, r1.xyzx, r3.xyzx
  iadd r1.w, r1.w, l(1)
  ilt r2.x, r1.w, l(5)
endloop 
mul r0.xyz, r0.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000)
mad r1.xyz, -r1.xyzx, l(0.025000, 0.025000, 0.025000, 0.000000), r0.xyzx
dp3 r0.w, r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
mad o0.xyz, r0.wwww, l(0.700000, 0.700000, 0.700000, 0.000000), r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 42 instruction slots used
