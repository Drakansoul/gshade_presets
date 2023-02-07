//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int _1312;                         // Offset:    0 Size:     4 [unused]
//   float uIntensity;                  // Offset:    4 Size:     4 [unused]
//   float uSaturation;                 // Offset:    8 Size:     4 [unused]
//   float3 ColorFilter;                // Offset:   16 Size:    12 [unused]
//   int BloomBlendMode;                // Offset:   28 Size:     4 [unused]
//   float uLensDirtAmount;             // Offset:   32 Size:     4 [unused]
//   int AdaptMode;                     // Offset:   36 Size:     4 [unused]
//   float uAdaptAmount;                // Offset:   40 Size:     4 [unused]
//   float uAdaptSensitivity;           // Offset:   44 Size:     4
//   float uAdaptExposure;              // Offset:   48 Size:     4 [unused]
//   bool uAdaptUseLimits;              // Offset:   52 Size:     4
//   float2 uAdaptLimits;               // Offset:   56 Size:     8
//   float uAdaptTime;                  // Offset:   64 Size:     4
//   float uAdaptPrecision;             // Offset:   68 Size:     4
//   int uAdaptFormula;                 // Offset:   72 Size:     4
//   float uMean;                       // Offset:   76 Size:     4 [unused]
//   float uVariance;                   // Offset:   80 Size:     4 [unused]
//   float uGhostingAmount;             // Offset:   84 Size:     4 [unused]
//   float3 DepthMultiplier;            // Offset:   96 Size:    12 [unused]
//   float2 DepthRange;                 // Offset:  112 Size:     8 [unused]
//   float DepthSmoothness;             // Offset:  120 Size:     4 [unused]
//   float uMaxBrightness;              // Offset:  124 Size:     4 [unused]
//   bool uNormalizeBrightness;         // Offset:  128 Size:     4 [unused]
//   bool MagicMode;                    // Offset:  132 Size:     4
//   float uSigma;                      // Offset:  136 Size:     4 [unused]
//   float uPadding;                    // Offset:  140 Size:     4 [unused]
//   float FrameTime;                   // Offset:  144 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s2                              sampler      NA          NA             s2      1 
// __V__FXShaders__NeoBloom_DownSample    texture  float4          2d             t4      1 
// __V__FXShaders__NeoBloom_LastAdapt    texture  float4          2d            t12      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float       
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
dcl_constantbuffer CB0[10], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t12
dcl_output o0.xyzw
dcl_temps 2
add r0.x, -cb0[4].y, l(11.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.xyz, l(0.500000, 0.500000, 0.000000, 0.000000), t4.xyzw, s0, r0.x
add r1.xyz, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
div r1.xyz, r0.xyzx, r1.xyzx
movc r0.xyz, cb0[8].yyyy, r0.xyzx, r1.xyzx
switch cb0[4].z
  case l(0)
  dp3 r0.w, r0.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
  break 
  case l(1)
  max r1.x, r0.z, r0.y
  max r0.w, r0.x, r1.x
  break 
  case l(2)
  dp3 r0.w, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
  break 
  case l(3)
  dp3 r0.w, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
  break 
  default 
  mov r0.w, l(0)
  break 
endswitch 
mul r0.x, r0.w, cb0[2].w
max r0.y, r0.x, cb0[3].z
min r0.y, r0.y, cb0[3].w
movc r0.x, cb0[3].y, r0.y, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, l(0.000000, 0.000000, 0.000000, 0.000000), t12.yxzw, s2
mul r0.z, cb0[9].x, l(0.001000)
max r0.w, cb0[4].x, l(0.001000)
div_sat r0.z, r0.z, r0.w
add r0.x, -r0.y, r0.x
mad o0.x, r0.z, r0.x, r0.y
mov o0.yzw, l(0,0,0,1.000000)
ret 
// Approximately 35 instruction slots used