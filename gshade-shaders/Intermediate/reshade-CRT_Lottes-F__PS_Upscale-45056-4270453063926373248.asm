//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float2 f2Warp;                     // Offset:    0 Size:     8 [unused]
//   float fThin;                       // Offset:    8 Size:     4 [unused]
//   float fBlur;                       // Offset:   12 Size:     4 [unused]
//   float fMask;                       // Offset:   16 Size:     4 [unused]
//   float fDownscale;                  // Offset:   20 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s1                              sampler      NA          NA             s1      1 
// __srgbV__ReShade__BackBufferTex    texture  float4          2d             t1      1 
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
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 1
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[1].y
add r0.yz, v1.xxyx, l(0.000000, -0.500000, -0.500000, 0.000000)
mad r0.xy, r0.yzyy, r0.xxxx, l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) o0.xyzw, r0.xyxx, t1.xyzw, s1
ret 
// Approximately 5 instruction slots used
