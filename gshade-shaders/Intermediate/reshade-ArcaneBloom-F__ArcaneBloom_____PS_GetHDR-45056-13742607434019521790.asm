//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float uBloomIntensity;             // Offset:    0 Size:     4 [unused]
//   float uAdapt_Intensity;            // Offset:    4 Size:     4 [unused]
//   float uAdapt_Time;                 // Offset:    8 Size:     4 [unused]
//   float uAdapt_Sensitivity;          // Offset:   12 Size:     4 [unused]
//   float uAdapt_Precision;            // Offset:   16 Size:     4 [unused]
//   bool uAdapt_DoLimits;              // Offset:   20 Size:     4 [unused]
//   float2 uAdapt_Limits;              // Offset:   24 Size:     8 [unused]
//   float uExposure;                   // Offset:   32 Size:     4 [unused]
//   float uMaxBrightness;              // Offset:   36 Size:     4
//   float uWhitePoint;                 // Offset:   40 Size:     4 [unused]
//   float uTime;                       // Offset:   44 Size:     4 [unused]
//   float uFrameTime;                  // Offset:   48 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __srgbV__ArcaneBloom_____tArcaneBloom_BackBuffer    texture  float4          2d            t13      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t13
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 2
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t13.xyzw, s0
max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
min r0.xyz, r0.xyzx, l(32767.000000, 32767.000000, 32767.000000, 0.000000)
max r0.w, r0.z, r0.y
max r0.w, r0.w, r0.x
add r1.x, -r0.w, l(1.000000)
div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[2].y
max r1.x, r1.y, r1.x
div r0.w, r0.w, r1.x
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 12 instruction slots used
