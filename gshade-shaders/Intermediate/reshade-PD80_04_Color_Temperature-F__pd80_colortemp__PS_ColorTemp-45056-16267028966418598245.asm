//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   uint Kelvin;                       // Offset:    0 Size:     4
//   float LumPreservation;             // Offset:    4 Size:     4
//   float kMix;                        // Offset:    8 Size:     4
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
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
mov r0.x, l(1.000000)
utof r0.z, cb0[0].x
max r0.z, r0.z, l(1000.000000)
min r0.z, r0.z, l(40000.000000)
mad r1.xy, r0.zzzz, l(0.010000, 0.010000, 0.000000, 0.000000), l(-60.000000, -10.000000, 0.000000, 0.000000)
max r0.w, r1.x, l(0.000000)
log r1.x, r1.y
mad_sat r1.x, r1.x, l(0.376522), l(-1.196254)
log r0.w, r0.w
mul r1.yz, r0.wwww, l(0.000000, -0.133205, -0.075515, 0.000000)
exp r1.yz, r1.yyzy
mul r1.yz, r1.yyzy, l(0.000000, 1.292936, 1.129891, 0.000000)
min r1.yz, r1.yyzy, l(0.000000, 1.000000, 1.000000, 0.000000)
mul r0.w, r0.z, l(0.010000)
log r0.w, r0.w
mad r0.w, r0.w, l(0.270384), l(-0.631841)
min r0.y, r0.w, l(1.000000)
ge r0.w, l(6600.000000), r0.z
movc r2.xy, r0.wwww, r0.xyxx, r1.yzyy
lt r0.x, r0.z, l(1900.000000)
ge r0.y, r0.z, l(6600.000000)
movc r0.x, r0.x, l(0), r1.x
movc r2.z, r0.y, l(1.000000), r0.x
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
mad r1.xyz, r0.xyzx, r2.xyzx, -r0.xyzx
mad r1.xyz, cb0[0].zzzz, r1.xyzx, r0.xyzx
max r0.xyz, r0.yzxy, l(0.000001, 0.000001, 0.000001, 0.000000)
max r2.xyw, r1.yzyx, l(0.000001, 0.000001, 0.000000, 0.000001)
lt r0.w, r2.x, r2.y
mov r3.xy, r2.yxyy
mov r4.xy, r3.yxyy
mov r3.zw, l(0,0,-1.000000,0.666667)
mov r4.zw, l(0,0,0,-0.333333)
movc r3.xyzw, r0.wwww, r3.xyzw, r4.xyzw
lt r0.w, r2.w, r3.x
mov r2.xyz, r3.xywx
mov r3.xyw, r2.wywx
movc r2.xyzw, r0.wwww, r2.xyzw, r3.xyzw
min r0.w, r2.y, r2.w
add r0.w, -r0.w, r2.x
mad r1.w, -r0.w, l(0.500000), r2.x
mad r1.w, r1.w, l(2.000000), l(-1.000000)
add r1.w, -|r1.w|, l(1.000001)
div r1.w, r0.w, r1.w
mad r0.w, r0.w, l(6.000000), l(0.000001)
lt r2.x, r0.x, r0.y
movc r0.xy, r2.xxxx, r0.yxyy, r0.xyxx
lt r2.x, r0.z, r0.x
movc r0.xyz, r2.xxxx, r0.xyzx, r0.zyxz
min r0.y, r0.y, r0.z
add r0.y, -r0.y, r0.x
mad r0.x, -r0.y, l(0.500000), r0.x
mad r0.y, r0.x, l(2.000000), l(-1.000000)
add r0.y, -|r0.y|, l(1.000000)
mul r0.y, r1.w, r0.y
add r0.z, -r2.y, r2.w
div r0.z, r0.z, r0.w
add r0.z, r2.z, r0.z
mad r2.xyz, |r0.zzzz|, l(6.000000, 6.000000, 6.000000, 0.000000), l(-3.000000, -2.000000, -4.000000, 0.000000)
mad_sat r2.xyz, |r2.xyzx|, l(1.000000, -1.000000, -1.000000, 0.000000), l(-1.000000, 2.000000, 2.000000, 0.000000)
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
mad r0.xyz, r2.xyzx, r0.yyyy, r0.xxxx
add r0.xyz, -r1.xyzx, r0.xyzx
mad o0.xyz, cb0[0].yyyy, r0.xyzx, r1.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 66 instruction slots used