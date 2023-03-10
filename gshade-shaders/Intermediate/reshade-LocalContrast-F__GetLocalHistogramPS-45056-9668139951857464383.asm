//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool CorrectGamma;                 // Offset:    0 Size:     4 [unused]
//   int ContrastLimit;                 // Offset:    4 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ReShade__BackBufferTex       texture  float4          2d             t0      1 
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
// SV_TARGET                0   xy          0   TARGET   float   xy  
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xy
dcl_temps 4
mov r0.xyzw, l(1.000000,0,0,-4)
mov r1.x, l(-1)
loop 
  breakc_z r1.x
  itof r2.y, r0.w
  mov r1.yzw, r0.xxyz
  mov r2.zw, l(0,0,-4,-1)
  loop 
    breakc_z r2.w
    itof r2.x, r2.z
    mad r3.xy, r2.xyxx, l(0.000260, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyxx, t0.xyzw, s0
    dp3 r2.x, l(0.212600, 0.715200, 0.072200, 0.000000), r3.xyzx
    min r1.y, r1.y, r2.x
    max r1.z, r1.z, r2.x
    add r1.w, r1.w, r2.x
    iadd r2.z, r2.z, l(1)
    ilt r2.w, r2.z, l(4)
  endloop 
  mov r0.xyz, r1.yzwy
  iadd r0.w, r0.w, l(1)
  ilt r1.x, r0.w, l(4)
endloop 
itof r0.w, cb0[0].y
mad r0.w, -r0.w, l(0.007874), l(1.000000)
mad r1.x, r0.z, l(0.015625), -r0.w
max r1.x, r1.x, l(0.000000)
min o0.x, r0.x, r1.x
mad r0.x, r0.z, l(0.015625), r0.w
min r0.x, r0.x, l(1.000000)
max o0.y, r0.x, r0.y
ret 
// Approximately 32 instruction slots used
