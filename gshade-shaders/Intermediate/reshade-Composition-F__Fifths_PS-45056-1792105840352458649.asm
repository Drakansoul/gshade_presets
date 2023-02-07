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
dcl_temps 5
mad r0.xyzw, cb0[1].xxxx, l(0.000468, 0.000468, 0.000468, 0.000468), l(0.200000, 0.400000, 0.600000, 0.800000)
ge r0.xyzw, r0.xyzw, v1.yyyy
mad r1.xy, cb0[1].xxxx, l(0.000468, 0.000260, 0.000000, 0.000000), v1.yxyy
ge r1.xy, r1.xyxx, v1.yxyy
mad r1.zw, -cb0[1].xxxx, l(0.000000, 0.000000, 0.000468, 0.000260), v1.yyyx
ge r1.zw, v1.yyyx, r1.zzzw
and r1.y, r1.w, r1.y
and r0.xyzw, r0.xyzw, r1.yyyy
mad r2.xyzw, -cb0[1].xxxx, l(0.000468, 0.000468, 0.000468, 0.000468), l(0.200000, 0.400000, 0.600000, 0.800000)
ge r2.xyzw, v1.yyyy, r2.xyzw
and r0.xyzw, r0.xyzw, r2.xyzw
mad r2.xyzw, cb0[1].xxxx, l(0.000260, 0.000260, 0.000260, 0.000260), l(0.200000, 0.400000, 0.600000, 0.800000)
ge r2.xyzw, r2.xyzw, v1.xxxx
mad r3.xyzw, -cb0[1].xxxx, l(0.000260, 0.000260, 0.000260, 0.000260), l(0.200000, 0.400000, 0.600000, 0.800000)
ge r3.xyzw, v1.xxxx, r3.xyzw
and r2.xyzw, r2.xyzw, r3.xyzw
and r2.xyzw, r1.xxxx, r2.xyzw
and r1.xyzw, r1.zzzz, r2.xyzw
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
movc r3.xyz, r1.xxxx, cb0[0].xyzx, r2.xyzx
eq r4.xy, v1.yxyy, l(-1.000000, -1.000000, 0.000000, 0.000000)
movc r3.xyz, r4.xxxx, r2.xyzx, r3.xyzx
movc r3.xyz, r1.yyyy, cb0[0].xyzx, r3.xyzx
movc r3.xyz, r4.xxxx, r2.xyzx, r3.xyzx
movc r1.xyz, r1.zzzz, cb0[0].xyzx, r3.xyzx
movc r1.xyz, r4.xxxx, r2.xyzx, r1.xyzx
movc r1.xyz, r1.wwww, cb0[0].xyzx, r1.xyzx
movc r1.xyz, r4.xxxx, r2.xyzx, r1.xyzx
movc r3.xyz, r0.xxxx, cb0[0].xyzx, r1.xyzx
movc r3.xyz, r4.yyyy, r1.xyzx, r3.xyzx
movc r3.xyz, r0.yyyy, cb0[0].xyzx, r3.xyzx
movc r3.xyz, r4.yyyy, r1.xyzx, r3.xyzx
movc r0.xyz, r0.zzzz, cb0[0].xyzx, r3.xyzx
movc r0.xyz, r4.yyyy, r1.xyzx, r0.xyzx
movc r0.xyz, r0.wwww, cb0[0].xyzx, r0.xyzx
movc r0.xyz, r4.yyyy, r1.xyzx, r0.xyzx
add r0.xyz, -r2.xyzx, r0.xyzx
mad o0.xyz, cb0[0].wwww, r0.xyzx, r2.xyzx
ret 
// Approximately 39 instruction slots used
