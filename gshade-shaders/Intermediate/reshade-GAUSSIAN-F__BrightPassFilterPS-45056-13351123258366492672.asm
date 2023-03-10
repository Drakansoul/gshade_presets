//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int gGaussEffect;                  // Offset:    0 Size:     4 [unused]
//   float gGaussStrength;              // Offset:    4 Size:     4 [unused]
//   bool gAddBloom;                    // Offset:    8 Size:     4 [unused]
//   float gBloomStrength;              // Offset:   12 Size:     4 [unused]
//   float gBloomIntensity;             // Offset:   16 Size:     4
//   int gGaussBloomWarmth;             // Offset:   20 Size:     4 [unused]
//   int gN_PASSES;                     // Offset:   24 Size:     4 [unused]
//   float gBloomHW;                    // Offset:   28 Size:     4 [unused]
//   float gBloomVW;                    // Offset:   32 Size:     4 [unused]
//   float gBloomSW;                    // Offset:   36 Size:     4 [unused]
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 1
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
max r0.w, r0.z, r0.y
max r0.w, r0.w, r0.x
mul r0.w, |r0.w|, |r0.w|
mul r0.xyz, r0.wwww, r0.xyzx
mov r0.w, l(2.000000)
mul o0.xyzw, r0.xyzw, cb0[1].xxxx
ret 
// Approximately 8 instruction slots used
