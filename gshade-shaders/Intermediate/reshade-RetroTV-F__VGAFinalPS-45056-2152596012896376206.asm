//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int2 display_size;                 // Offset:    0 Size:     8 [unused]
//   float2 pixel_mask_scale;           // Offset:    8 Size:     8 [unused]
//   float rf_noise;                    // Offset:   16 Size:     4 [unused]
//   float luma_sharpen;                // Offset:   20 Size:     4 [unused]
//   bool EnableTVCurvature;            // Offset:   24 Size:     4
//   float tv_curvature;                // Offset:   28 Size:     4 [unused]
//   int3 colorbits;                    // Offset:   32 Size:    12
//   bool EnableRollingFlicker;         // Offset:   44 Size:     4
//   float fRollingFlicker_Factor;      // Offset:   48 Size:     4
//   float fRollingFlicker_VSyncTime;   // Offset:   52 Size:     4
//   bool EnablePixelMask;              // Offset:   56 Size:     4
//   float pixelMaskBrightness;         // Offset:   60 Size:     4
//   bool EnableBurstCountAnimation;    // Offset:   64 Size:     4 [unused]
//   float framecount;                  // Offset:   68 Size:     4 [unused]
//   float fTimer;                      // Offset:   72 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s1                              sampler      NA          NA             s1      1 
// __V__pixel_mask                   texture  float4          2d             t4      1 
// __V__tv_border                    texture  float4          2d             t6      1 
// __V__ReShade__BackBufferTex       texture  float4          2d             t8      1 
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
// TEXCOORD                 1     zw        1     NONE   float       
// TEXCOORD                 2   xy          2     NONE   float   xy  
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
dcl_constantbuffer CB0[5], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t8
dcl_input_ps linear v1.xy
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 2
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t8.xyzw, s0
ishl r1.xyz, l(1, 1, 1, 0), cb0[2].xyzx
itof r1.xyz, r1.xyzx
mul r0.xyz, r0.xyzx, r1.xyzx
round_ni r0.xyz, r0.xyzx
div r0.xyz, r0.xyzx, r1.xyzx
mul r0.w, cb0[3].y, cb0[4].z
mul r0.w, r0.w, l(0.001000)
frc r1.x, |r0.w|
lt r0.w, -r0.w, l(0.000000)
movc r0.w, r0.w, -r1.x, r1.x
add r0.w, r0.w, v1.y
lt r1.x, r0.w, l(0.000000)
frc r1.y, |r0.w|
lt r0.w, -r0.w, l(0.000000)
movc r0.w, r0.w, -r1.y, r1.y
add r0.w, -r0.w, l(1.000000)
movc r0.w, r1.x, r0.w, r1.y
add r0.w, r0.w, l(-1.000000)
mad r0.w, cb0[3].x, r0.w, l(1.000000)
mul r1.xyz, r0.wwww, r0.xyzx
movc r0.xyz, cb0[2].wwww, r1.xyzx, r0.xyzx
if_nz cb0[3].z
  sample_indexable(texture2d)(float,float,float,float) r1.xyz, v2.xyxx, t4.xyzw, s1
  mul r1.xyz, r1.xyzx, cb0[3].wwww
  mul r0.xyz, r0.xyzx, r1.xyzx
endif 
if_nz cb0[1].z
  sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t6.xyzw, s0
  mul r0.xyz, r0.xyzx, r1.xyzx
endif 
mad o0.xyz, r0.xyzx, l(0.980000, 0.980000, 0.980000, 0.000000), l(0.020000, 0.020000, 0.020000, 0.000000)
mov o0.w, l(1.000000)
ret 
// Approximately 34 instruction slots used
