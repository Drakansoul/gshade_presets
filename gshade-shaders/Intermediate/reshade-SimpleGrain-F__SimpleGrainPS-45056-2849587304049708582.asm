//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Intensity;                   // Offset:    0 Size:     4
//   int Framerate;                     // Offset:    4 Size:     4
//   int Coefficient;                   // Offset:    8 Size:     4
//   float Timer;                       // Offset:   12 Size:     4
//   int FrameCount;                    // Offset:   16 Size:     4
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
dcl_temps 3
mul r0.x, cb0[0].w, l(0.001000)
itof r0.y, cb0[0].y
mul r0.x, r0.y, r0.x
round_ni r0.x, r0.x
itof r0.y, cb0[1].x
movc r0.x, cb0[0].y, r0.x, r0.y
mul r0.y, r0.x, l(10000.000000)
ge r0.y, r0.y, -r0.y
movc r0.yz, r0.yyyy, l(0,10000.000000,0.000100,0), l(0,-10000.000000,-0.000100,0)
mul r0.x, r0.z, r0.x
frc r0.x, r0.x
mul r0.x, r0.x, r0.y
mul r0.x, r0.x, v1.x
mul r0.x, r0.x, v1.y
dp2 r0.x, r0.xxxx, l(12.989800, 78.233002, 0.000000, 0.000000)
sincos r0.x, null, r0.x
mul r0.x, r0.x, l(43758.542969)
frc r0.x, r0.x
mad r0.x, r0.x, l(0.809017), l(-0.500000)
movc r0.yzw, cb0[0].zzzz, l(0,0.299000,0.587000,0.114000), l(0,0.212600,0.715200,0.072200)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
dp3 r0.y, r1.xyzx, r0.yzwy
add r0.y, -r0.y, l(1.000000)
log r0.y, |r0.y|
mul r0.y, r0.y, l(1.618034)
exp r0.y, r0.y
mul r0.y, r0.y, cb0[0].x
mul r0.y, r0.y, l(0.100000)
mad r0.x, r0.y, r0.x, l(0.500000)
min r0.y, r0.x, l(0.500000)
max r0.x, r0.x, l(0.500000)
min r2.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
max r1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
mad r0.yzw, r2.xxyz, r0.yyyy, r1.xxyz
add r0.yzw, r0.xxxx, r0.yyzw
mad r0.xyz, -r1.xyzx, r0.xxxx, r0.yzwy
mad o0.xyz, r0.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.500000, -1.500000, -1.500000, 0.000000)
ret 
// Approximately 38 instruction slots used