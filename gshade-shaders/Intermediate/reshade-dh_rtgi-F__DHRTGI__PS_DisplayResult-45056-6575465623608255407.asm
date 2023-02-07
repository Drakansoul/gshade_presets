//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float frametime;                   // Offset:    0 Size:     4 [unused]
//   int framecount;                    // Offset:    4 Size:     4 [unused]
//   int random;                        // Offset:    8 Size:     4 [unused]
//   bool bDebug;                       // Offset:   12 Size:     4
//   float fPeviousDepth;               // Offset:   16 Size:     4 [unused]
//   bool bBrightnessOpacity;           // Offset:   20 Size:     4 [unused]
//   float fDepthMultiplier;            // Offset:   24 Size:     4 [unused]
//   bool bFrameAccuAuto;               // Offset:   28 Size:     4 [unused]
//   int iFrameAccu;                    // Offset:   32 Size:     4 [unused]
//   float fSkyDepth;                   // Offset:   36 Size:     4 [unused]
//   float fWeaponDepth;                // Offset:   40 Size:     4 [unused]
//   int iRayPreciseHit;                // Offset:   44 Size:     4 [unused]
//   int iRayPreciseHitSteps;           // Offset:   48 Size:     4 [unused]
//   float fRayStepPrecision;           // Offset:   52 Size:     4 [unused]
//   float fRayStepMultiply;            // Offset:   56 Size:     4 [unused]
//   float fRayHitDepthThreshold;       // Offset:   60 Size:     4 [unused]
//   float fRayBounce;                  // Offset:   64 Size:     4 [unused]
//   float fFadePower;                  // Offset:   68 Size:     4 [unused]
//   float fSaturateColor;              // Offset:   72 Size:     4 [unused]
//   float fSaturateColorPower;         // Offset:   76 Size:     4 [unused]
//   float fAOMultiplier;               // Offset:   80 Size:     4 [unused]
//   int iAODistance;                   // Offset:   84 Size:     4 [unused]
//   bool bNormalWeight;                // Offset:   88 Size:     4 [unused]
//   int iSmoothRadius;                 // Offset:   92 Size:     4 [unused]
//   int iSmoothLod;                    // Offset:   96 Size:     4 [unused]
//   float fSmoothPass;                 // Offset:  100 Size:     4 [unused]
//   float fSmoothDepthThreshold;       // Offset:  104 Size:     4 [unused]
//   float fSmoothNormalThreshold;      // Offset:  108 Size:     4 [unused]
//   float fSourceColor;                // Offset:  112 Size:     4 [unused]
//   float fSourceDesat;                // Offset:  116 Size:     4 [unused]
//   float fLightMult;                  // Offset:  120 Size:     4 [unused]
//   float fLightOffset;                // Offset:  124 Size:     4 [unused]
//   float fMaxLight;                   // Offset:  128 Size:     4 [unused]
//   float fLightNormalize;             // Offset:  132 Size:     4 [unused]
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
// __V__DHRTGI__smoothPass3Tex       texture  float4          2d            t24      1 
// __V__DHRTGI__smoothAOPass3Tex     texture  float4          2d            t26      1 
// __V__DHRTGI__resultTex            texture  float4          2d            t28      1 
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
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t24
dcl_resource_texture2d (float,float,float,float) t26
dcl_resource_texture2d (float,float,float,float) t28
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 2
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t28.xyzw, s0, l(0.000000)
if_nz cb0[0].w
  max r1.x, r0.y, r0.x
  max r1.x, r0.z, r1.x
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, v1.xyxx, t26.yxzw, s2, l(0.000000)
  max r1.x, r1.x, r1.y
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, v1.xyxx, t24.wxyz, s2, l(0.000000)
  mul o0.xyz, r1.yzwy, r1.xxxx
  mov o0.w, l(1.000000)
else 
  mov o0.xyzw, r0.xyzw
endif 
ret 
// Approximately 13 instruction slots used