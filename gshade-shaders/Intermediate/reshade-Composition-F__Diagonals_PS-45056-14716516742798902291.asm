//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float4 UIGridColor;                // Offset:    0 Size:    16
//   float UIGridLineWidth;             // Offset:   16 Size:     4
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
// SV_TARGET                0   xyz         0   TARGET   float   xyz 
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 4
mad r0.x, cb0[1].x, l(0.000260), v1.x
ge r0.x, r0.x, v1.x
mad r0.y, -cb0[1].x, l(0.000260), v1.x
ge r0.y, v1.x, r0.y
and r0.x, r0.y, r0.x
mad r0.y, -v1.x, l(1.796912), l(1.000000)
mad r0.z, cb0[1].x, l(0.000468), r0.y
ge r0.z, r0.z, v1.y
and r0.z, r0.z, r0.x
mad r0.w, -cb0[1].x, l(0.000468), r0.y
eq r0.y, r0.y, l(-1.000000)
ge r0.w, v1.y, r0.w
and r0.z, r0.w, r0.z
mul r0.w, cb0[1].x, l(0.000468)
mad r1.x, v1.x, l(1.796912), r0.w
ge r1.x, r1.x, v1.y
and r1.x, r0.x, r1.x
mad r1.y, v1.x, l(1.796912), -r0.w
ge r1.y, v1.y, r1.y
and r1.x, r1.y, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.yzw, v1.xyxx, t0.wxyz, s0
movc r2.xyz, r1.xxxx, cb0[0].xyzx, r1.yzwy
eq r3.xy, v1.xxxx, l(-1.000000, -0.556510, 0.000000, 0.000000)
or r1.x, r3.y, r3.x
movc r2.xyz, r1.xxxx, r1.yzwy, r2.xyzx
movc r3.yzw, r0.zzzz, cb0[0].xxyz, r2.xxyz
or r0.y, r0.y, r3.x
movc r2.xyz, r0.yyyy, r2.xyzx, r3.yzwy
add r0.y, -v1.x, l(1.000000)
mad r0.z, r0.y, l(1.796912), r0.w
mad r0.w, r0.y, l(1.796912), -r0.w
eq r0.y, r0.y, l(-0.556510)
or r0.y, r0.y, r3.x
ge r0.w, v1.y, r0.w
ge r0.z, r0.z, v1.y
and r0.z, r0.z, r0.x
and r0.z, r0.w, r0.z
movc r3.yzw, r0.zzzz, cb0[0].xxyz, r2.xxyz
movc r0.yzw, r0.yyyy, r2.xxyz, r3.yyzw
mad r1.x, v1.x, l(1.796912), l(-0.796912)
mad r2.x, cb0[1].x, l(0.000468), r1.x
ge r2.x, r2.x, v1.y
and r0.x, r0.x, r2.x
mad r2.x, -cb0[1].x, l(0.000468), r1.x
eq r1.x, r1.x, l(-1.000000)
or r1.x, r1.x, r3.x
ge r2.x, v1.y, r2.x
and r0.x, r0.x, r2.x
movc r2.xyz, r0.xxxx, cb0[0].xyzx, r0.yzwy
movc r0.xyz, r1.xxxx, r0.yzwy, r2.xyzx
add r0.xyz, -r1.yzwy, r0.xyzx
mad o0.xyz, cb0[0].wwww, r0.xyzx, r1.yzwy
ret 
// Approximately 53 instruction slots used
