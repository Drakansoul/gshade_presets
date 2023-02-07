//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float hueMid;                      // Offset:    0 Size:     4
//   float hueRange;                    // Offset:    4 Size:     4
//   float satLimit;                    // Offset:    8 Size:     4
//   float fxcolorMix;                  // Offset:   12 Size:     4
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
dcl_temps 4
mov r0.zw, l(0,0,-1.000000,0.666667)
mov r1.zw, l(0,0,0,-0.333333)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
mov_sat r2.xyz, r2.xyzx
mov r0.xy, r2.zyzz
mov r1.xy, r0.yxyy
lt r2.w, r0.y, r2.z
movc r0.xyzw, r2.wwww, r0.xyzw, r1.xyzw
lt r1.x, r2.x, r0.x
mov r3.xyz, r0.xywx
mov r3.w, r2.x
mov r0.xyw, r3.wywx
movc r0.xyzw, r1.xxxx, r3.xyzw, r0.xyzw
min r1.x, r0.y, r0.w
add r0.x, r0.x, -r1.x
mad r0.x, r0.x, l(6.000000), l(0.000000)
add r0.y, -r0.y, r0.w
div r0.x, r0.y, r0.x
add r0.x, r0.x, r0.z
add r0.x, |r0.x|, -cb0[0].x
add r0.yz, r0.xxxx, l(0.000000, 1.000000, -1.000000, 0.000000)
rcp r0.w, cb0[0].y
mul r0.xyz, r0.wwww, r0.xyzx
add r0.x, -|r0.x|, l(1.000000)
max r1.x, r0.x, l(0.000000)
add r0.xy, -|r0.yzyy|, l(1.000000, 1.000000, 0.000000, 0.000000)
max r1.yz, r0.xxyx, l(0.000000, 0.000000, 0.000000, 0.000000)
dp3 r0.x, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.y, r0.x, r0.x
mul r0.y, r0.x, r0.y
mad r0.z, r0.x, l(6.000000), l(-15.000000)
mad r0.x, r0.x, r0.z, l(10.000000)
mul r0.x, r0.x, r0.y
mul r0.x, r0.x, cb0[0].z
dp3 r0.y, r2.xyzx, l(0.212656, 0.715158, 0.072186, 0.000000)
add r1.xyz, -r0.yyyy, r2.xyzx
mad r0.xyz, r0.xxxx, r1.xyzx, r0.yyyy
add r0.xyz, -r2.xyzx, r0.xyzx
mad o0.xyz, cb0[0].wwww, r0.xyzx, r2.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 41 instruction slots used