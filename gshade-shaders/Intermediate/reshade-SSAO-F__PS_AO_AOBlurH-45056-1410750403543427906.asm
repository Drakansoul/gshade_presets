//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float AO_TEXSCALE;                 // Offset:    0 Size:     4 [unused]
//   float AO_SHARPNESS;                // Offset:    4 Size:     4
//   bool AO_SHARPNESS_DETECT;          // Offset:    8 Size:     4 [unused]
//   int AO_BLUR_STEPS;                 // Offset:   12 Size:     4
//   int AO_DEBUG;                      // Offset:   16 Size:     4 [unused]
//   bool AO_LUMINANCE_CONSIDERATION;   // Offset:   20 Size:     4 [unused]
//   float AO_LUMINANCE_LOWER;          // Offset:   24 Size:     4 [unused]
//   float AO_LUMINANCE_UPPER;          // Offset:   28 Size:     4 [unused]
//   float AO_FADE_START;               // Offset:   32 Size:     4 [unused]
//   float AO_FADE_END;                 // Offset:   36 Size:     4 [unused]
//   int iSSAOSamples;                  // Offset:   40 Size:     4 [unused]
//   bool iSSAOSmartSampling;           // Offset:   44 Size:     4 [unused]
//   float fSSAOSamplingRange;          // Offset:   48 Size:     4 [unused]
//   float fSSAODarkeningAmount;        // Offset:   52 Size:     4 [unused]
//   float fSSAOBrighteningAmount;      // Offset:   56 Size:     4 [unused]
//   int iRayAOSamples;                 // Offset:   60 Size:     4 [unused]
//   float fRayAOSamplingRange;         // Offset:   64 Size:     4 [unused]
//   float fRayAOMaxDepth;              // Offset:   68 Size:     4 [unused]
//   float fRayAOMinDepth;              // Offset:   72 Size:     4 [unused]
//   float fRayAOPower;                 // Offset:   76 Size:     4 [unused]
//   int iHBAOSamples;                  // Offset:   80 Size:     4 [unused]
//   float fHBAOSamplingRange;          // Offset:   84 Size:     4 [unused]
//   float fHBAOAmount;                 // Offset:   88 Size:     4 [unused]
//   float fHBAOClamp;                  // Offset:   92 Size:     4 [unused]
//   float fHBAOAttenuation;            // Offset:   96 Size:     4 [unused]
//   int iSSGISamples;                  // Offset:  100 Size:     4 [unused]
//   float fSSGISamplingRange;          // Offset:  104 Size:     4 [unused]
//   float fSSGIIlluminationMult;       // Offset:  108 Size:     4 [unused]
//   float fSSGIOcclusionMult;          // Offset:  112 Size:     4 [unused]
//   float fSSGIModelThickness;         // Offset:  116 Size:     4 [unused]
//   float fSSGISaturation;             // Offset:  120 Size:     4 [unused]
//   float iSAOSamples;                 // Offset:  124 Size:     4 [unused]
//   float fSAOIntensity;               // Offset:  128 Size:     4 [unused]
//   float fSAOClamp;                   // Offset:  132 Size:     4 [unused]
//   float fSAORadius;                  // Offset:  136 Size:     4 [unused]
//   float fSAOBias;                    // Offset:  140 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__texOcclusion2                texture  float4          2d             t8      1 
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
dcl_resource_texture2d (float,float,float,float) t8
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t8.wxyz, s0
ineg r0.y, cb0[0].w
ige r0.z, cb0[0].w, r0.y
mul r0.w, cb0[0].y, l(1000.000000)
mov r1.xy, l(0,0,0,0)
mov r1.zw, r0.yyyz
loop 
  breakc_z r1.w
  itof r2.x, r1.z
  mad r2.xy, r2.xxxx, l(0.000260, 0.000000, 0.000000, 0.000000), v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xy, r2.xyxx, t8.xwyz, s0, l(0.000000)
  imax r2.z, -r1.z, r1.z
  iadd r2.z, -r2.z, cb0[0].w
  itof r2.z, r2.z
  add r2.y, -r0.x, r2.y
  mad_sat r2.y, -r0.w, |r2.y|, l(1.000000)
  mul r2.w, r2.y, r2.z
  mad r1.x, r2.x, r2.w, r1.x
  mad r1.y, r2.z, r2.y, r1.y
  iadd r1.z, r1.z, l(1)
  ige r1.w, cb0[0].w, r1.z
endloop 
add r0.y, r1.y, l(0.000100)
div o0.x, r1.x, r0.y
mov o0.yz, l(0,0,0,0)
mov o0.w, r0.x
ret 
// Approximately 27 instruction slots used
