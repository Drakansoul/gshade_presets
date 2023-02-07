//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool EnableLevels;                 // Offset:    0 Size:     4
//   float3 InputBlackPoint;            // Offset:    4 Size:    12
//   float3 InputWhitePoint;            // Offset:   16 Size:    12
//   float3 InputGamma;                 // Offset:   32 Size:    12
//   float3 OutputBlackPoint;           // Offset:   48 Size:    12
//   float3 OutputWhitePoint;           // Offset:   64 Size:    12
//   float3 ColorRangeShift;            // Offset:   80 Size:    12
//   int ColorRangeShiftSwitch;         // Offset:   92 Size:     4
//   bool HighlightClipping;            // Offset:   96 Size:     4
//   bool enableACESFilmRec2020old;     // Offset:  100 Size:     4
//   bool enableACESFilmRec2020;        // Offset:  104 Size:     4
//   bool enableACESFitted;             // Offset:  108 Size:     4
//   int3 ACESLuminancePercentage;      // Offset:  112 Size:    12
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
dcl_constantbuffer CB0[8], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 5
itof r0.x, cb0[5].w
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v1.xyxx, t0.wxyz, s0
mad r1.xyz, cb0[5].xyzx, r0.xxxx, r0.yzwy
add r1.xyz, r1.xyzx, -cb0[0].yzwy
add r2.xyz, -cb0[0].yzwy, cb0[1].xyzx
div r1.xyz, r1.xyzx, r2.xyzx
log r1.xyz, |r1.xyzx|
mul r1.xyz, r1.xyzx, cb0[2].xyzx
exp r1.xyz, r1.xyzx
add r2.xyz, -cb0[3].xyzx, cb0[4].xyzx
mad r1.xyz, r1.xyzx, r2.xyzx, cb0[3].xyzx
movc r0.xyz, cb0[0].xxxx, r1.xyzx, r0.yzwy
itof r1.xyz, cb0[7].xyzx
mul r2.xyz, r0.xyzx, r1.xyzx
mad r3.xyz, r2.xyzx, l(0.079000, 0.079000, 0.079000, 0.000000), l(2.120000, 2.120000, 2.120000, 0.000000)
mul r4.xyz, r2.xyzx, l(0.005000, 0.005000, 0.005000, 0.000000)
mad r2.xyz, r2.xyzx, l(0.006000, 0.006000, 0.006000, 0.000000), l(5.920000, 5.920000, 5.920000, 0.000000)
mad r2.xyz, r4.xyzx, r2.xyzx, l(1.900000, 1.900000, 1.900000, 0.000000)
mul r3.xyz, r3.xyzx, r4.xyzx
div r2.xyz, r3.xyzx, r2.xyzx
movc r0.xyz, cb0[6].yyyy, r2.xyzx, r0.xyzx
mul r1.xyz, r1.xyzx, r0.xyzx
mad r2.xyz, r1.xyzx, l(0.004900, 0.004900, 0.004900, 0.000000), l(0.300000, 0.300000, 0.300000, 0.000000)
mul r3.xyz, r1.xyzx, l(0.005000, 0.005000, 0.005000, 0.000000)
mul r1.xyz, r1.xyzx, r3.xyzx
mul r2.xyz, r2.xyzx, r3.xyzx
mad r1.xyz, r1.xyzx, l(0.001100, 0.001100, 0.001100, 0.000000), l(0.025000, 0.025000, 0.025000, 0.000000)
div r1.xyz, r2.xyzx, r1.xyzx
movc r0.xyz, cb0[6].zzzz, r1.xyzx, r0.xyzx
dp3 r1.x, l(0.597190, 0.354580, 0.048230, 0.000000), r0.xyzx
dp3 r1.y, l(0.076000, 0.908340, 0.015660, 0.000000), r0.xyzx
dp3 r1.z, l(0.028400, 0.133830, 0.837770, 0.000000), r0.xyzx
add r2.xyz, r1.xyzx, l(0.024579, 0.024579, 0.024579, 0.000000)
mad r2.xyz, r1.xyzx, r2.xyzx, l(-0.000091, -0.000091, -0.000091, 0.000000)
mad r3.xyz, r1.xyzx, l(0.983729, 0.983729, 0.983729, 0.000000), l(0.432951, 0.432951, 0.432951, 0.000000)
mad r1.xyz, r1.xyzx, r3.xyzx, l(0.238081, 0.238081, 0.238081, 0.000000)
div r1.xyz, r2.xyzx, r1.xyzx
dp3_sat r2.x, l(1.604750, -0.531080, -0.073670, 0.000000), r1.xyzx
dp3_sat r2.y, l(-0.102080, 1.108130, -0.006050, 0.000000), r1.xyzx
dp3_sat r2.z, l(-0.003270, -0.072760, 1.076020, 0.000000), r1.xyzx
movc r0.xyz, cb0[6].wwww, r2.xyzx, r0.xyzx
mov_sat r1.xyz, r0.xyzx
lt r2.xyz, r1.xyzx, r0.xyzx
lt r1.xyz, r0.xyzx, r1.xyzx
or r0.w, r2.y, r2.x
or r0.w, r2.z, r0.w
movc r3.xyz, r0.wwww, l(1.000000,1.000000,0,0), r0.xyzx
and r0.w, r2.y, r2.x
and r0.w, r2.z, r0.w
movc r2.xyz, r0.wwww, l(1.000000,0,0,0), r3.xyzx
or r0.w, r1.y, r1.x
or r0.w, r1.z, r0.w
movc r2.xyz, r0.wwww, l(0,1.000000,1.000000,0), r2.xyzx
and r0.w, r1.y, r1.x
and r0.w, r1.z, r0.w
movc r1.xyz, r0.wwww, l(0,0,1.000000,0), r2.xyzx
movc o0.xyz, cb0[6].xxxx, r1.xyzx, r0.xyzx
ret 
// Approximately 58 instruction slots used
