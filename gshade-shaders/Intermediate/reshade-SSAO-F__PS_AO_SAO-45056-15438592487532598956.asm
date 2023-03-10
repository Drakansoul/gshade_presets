//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float AO_TEXSCALE;                 // Offset:    0 Size:     4
//   float AO_SHARPNESS;                // Offset:    4 Size:     4 [unused]
//   bool AO_SHARPNESS_DETECT;          // Offset:    8 Size:     4
//   int AO_BLUR_STEPS;                 // Offset:   12 Size:     4 [unused]
//   int AO_DEBUG;                      // Offset:   16 Size:     4 [unused]
//   bool AO_LUMINANCE_CONSIDERATION;   // Offset:   20 Size:     4 [unused]
//   float AO_LUMINANCE_LOWER;          // Offset:   24 Size:     4 [unused]
//   float AO_LUMINANCE_UPPER;          // Offset:   28 Size:     4 [unused]
//   float AO_FADE_START;               // Offset:   32 Size:     4 [unused]
//   float AO_FADE_END;                 // Offset:   36 Size:     4
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
//   float iSAOSamples;                 // Offset:  124 Size:     4
//   float fSAOIntensity;               // Offset:  128 Size:     4
//   float fSAOClamp;                   // Offset:  132 Size:     4
//   float fSAORadius;                  // Offset:  136 Size:     4
//   float fSAOBias;                    // Offset:  140 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
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
dcl_immediateConstantBuffer { { 1, 0, 0, 0},
                              { 1, 0, 0, 0},
                              { 2, 0, 0, 0},
                              { 3, 0, 0, 0},
                              { 2, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 2, 0, 0, 0},
                              { 3, 0, 0, 0},
                              { 2, 0, 0, 0},
                              { 3, 0, 0, 0},
                              { 3, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 3, 0, 0, 0},
                              { 4, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 9, 0, 0, 0},
                              { 8, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 8, 0, 0, 0},
                              { 5, 0, 0, 0},
                              { 8, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 12, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 10, 0, 0, 0},
                              { 13, 0, 0, 0},
                              { 8, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 8, 0, 0, 0},
                              { 7, 0, 0, 0},
                              { 14, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 13, 0, 0, 0},
                              { 12, 0, 0, 0},
                              { 13, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 17, 0, 0, 0},
                              { 13, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 18, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 14, 0, 0, 0},
                              { 17, 0, 0, 0},
                              { 21, 0, 0, 0},
                              { 15, 0, 0, 0},
                              { 16, 0, 0, 0},
                              { 17, 0, 0, 0},
                              { 18, 0, 0, 0},
                              { 13, 0, 0, 0},
                              { 17, 0, 0, 0},
                              { 11, 0, 0, 0},
                              { 17, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 18, 0, 0, 0},
                              { 25, 0, 0, 0},
                              { 18, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 29, 0, 0, 0},
                              { 21, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 27, 0, 0, 0},
                              { 31, 0, 0, 0},
                              { 29, 0, 0, 0},
                              { 21, 0, 0, 0},
                              { 18, 0, 0, 0},
                              { 17, 0, 0, 0},
                              { 29, 0, 0, 0},
                              { 31, 0, 0, 0},
                              { 31, 0, 0, 0},
                              { 23, 0, 0, 0},
                              { 18, 0, 0, 0},
                              { 25, 0, 0, 0},
                              { 26, 0, 0, 0},
                              { 25, 0, 0, 0},
                              { 23, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 34, 0, 0, 0},
                              { 19, 0, 0, 0},
                              { 27, 0, 0, 0},
                              { 21, 0, 0, 0},
                              { 25, 0, 0, 0},
                              { 39, 0, 0, 0},
                              { 29, 0, 0, 0},
                              { 17, 0, 0, 0},
                              { 21, 0, 0, 0},
                              { 27, 0, 0, 0} }
dcl_constantbuffer CB0[9], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
div r0.xy, v1.xyxx, cb0[0].xxxx
lt r0.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r0.xxxy
or r0.z, r0.w, r0.z
discard_nz r0.z
sample_l_indexable(texture2d)(float,float,float,float) r0.z, r0.xyxx, t2.yzxw, s0, l(0.000000)
mad r0.w, -r0.z, l(999.000000), l(1000.000000)
div r0.z, r0.z, r0.w
if_z cb0[0].z
  mov o0.w, r0.z
else 
  add r1.xyzw, r0.xyxy, l(0.000000, 0.001000, 0.001000, 0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t2.yzwx, s0, l(0.000000)
  mad r1.x, -r0.w, l(999.000000), l(1000.000000)
  div r0.w, r0.w, r1.x
  sample_l_indexable(texture2d)(float,float,float,float) r1.x, r1.zwzz, t2.xyzw, s0, l(0.000000)
  mad r1.y, -r1.x, l(999.000000), l(1000.000000)
  div r1.x, r1.x, r1.y
  add r2.y, -r0.z, r0.w
  add r2.x, -r0.z, r1.x
  mul r1.xy, r2.xyxx, l(0.001000, 0.001000, 0.000000, 0.000000)
  mov r1.z, l(0.000001)
  dp3 r0.w, r1.xyzx, r1.xyzx
  rsq r0.w, r0.w
  mul r1.xyz, r0.wwww, r1.xyzx
  dp3 r0.w, r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
  mul o0.w, r0.w, l(0.100000)
endif 
min r0.w, cb0[2].y, l(0.999900)
lt r0.w, r0.w, r0.z
if_nz r0.w
  mov o0.xyz, l(1.000000,1.000000,1.000000,0)
else 
  mad r0.z, r0.z, l(-99.000000), l(101.000000)
  div r1.z, l(202.000000), r0.z
  mad r0.zw, r0.xxxy, l(0.000000, 0.000000, 2.240745, 1.246998), l(0.000000, 0.000000, -1.120081, -0.623207)
  mul r1.xy, r1.zzzz, r0.zwzz
  mad r0.z, r0.y, l(543.309998), r0.x
  sincos r0.z, null, r0.z
  mul r0.z, r0.z, l(493013.000000)
  frc r0.z, r0.z
  mul r0.z, r0.z, l(10.000000)
  deriv_rty_coarse r2.xyz, r1.zxyz
  dp3 r0.w, r2.xyzx, r2.xyzx
  rsq r0.w, r0.w
  mul r2.xyz, r0.wwww, r2.xyzx
  deriv_rtx_coarse r3.xyz, r1.yzxy
  dp3 r0.w, r3.xyzx, r3.xyzx
  rsq r0.w, r0.w
  mul r3.xyz, r0.wwww, r3.xyzx
  mul r4.xyz, r2.xyzx, r3.xyzx
  mad r2.xyz, r2.zxyz, r3.yzxy, -r4.xyzx
  dp3 r0.w, r2.xyzx, r2.xyzx
  rsq r0.w, r0.w
  mul r2.xyz, r0.wwww, r2.xyzx
  max r0.w, r1.z, l(0.100000)
  div r0.w, cb0[8].z, r0.w
  lt r1.w, l(0.000000), cb0[7].w
  ftoi r2.w, cb0[7].w
  iadd r2.w, r2.w, l(-1)
  div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[7].w
  utof r2.w, icb[r2.w + 0].x
  mul r2.w, r2.w, l(6.280000)
  div r3.y, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[8].z
  mov r3.zw, l(0,0,0,0)
  mov r4.x, r1.w
  loop 
    breakc_z r4.x
    itof r4.y, r3.w
    add r4.y, r4.y, l(0.500000)
    mul r4.y, r3.x, r4.y
    mad r4.z, r4.y, r2.w, r0.z
    sincos r5.x, r6.x, r4.z
    mul r4.y, r0.w, r4.y
    mov r6.y, r5.x
    mad r4.yz, r4.yyyy, r6.xxyx, r0.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r4.w, r4.yzyy, t2.yzwx, s0, l(0.000000)
    mad r5.x, -r4.w, l(999.000000), l(1000.000000)
    div r4.w, r4.w, r5.x
    mad r4.w, r4.w, l(-99.000000), l(101.000000)
    div r5.z, l(202.000000), r4.w
    mad r4.yz, r4.yyzy, l(0.000000, 2.240745, 1.246998, 0.000000), l(0.000000, -1.120081, -0.623207, 0.000000)
    mul r5.xy, r5.zzzz, r4.yzyy
    add r4.yzw, -r1.xxyz, r5.xxyz
    dp3 r5.x, r4.yzwy, r4.yzwy
    dp3 r4.y, r4.yzwy, r2.xyzx
    mad r4.z, -r5.x, r3.y, l(1.000000)
    add r4.y, r4.y, -cb0[8].w
    rsq r4.w, r5.x
    mul r4.y, r4.w, r4.y
    max r4.yz, r4.yyzy, l(0.000000, 0.000000, 0.000000, 0.000000)
    mad r3.z, r4.z, r4.y, r3.z
    iadd r3.w, r3.w, l(1)
    itof r4.y, r3.w
    lt r4.x, r4.y, cb0[7].w
  endloop 
  mul r0.x, cb0[8].z, cb0[8].z
  mul r0.y, r0.x, r0.x
  mul r0.x, r0.y, r0.x
  div r0.x, r3.z, r0.x
  div r0.y, l(3.000000), cb0[7].w
  mul r0.x, r0.y, r0.x
  sqrt r0.x, r0.x
  add r0.x, -r0.x, l(1.000000)
  max r0.x, r0.x, l(0.000000)
  log r0.x, r0.x
  mul r0.x, r0.x, cb0[8].x
  exp r0.y, r0.x
  mul r0.x, r0.x, l(0.200000)
  exp r0.x, r0.x
  mul r0.y, r0.y, r0.y
  mul r0.y, r0.y, r0.y
  mad r0.x, r0.y, l(1.200000), r0.x
  mad r0.x, r0.x, l(0.454545), l(-1.000000)
  mad o0.xyz, cb0[8].yyyy, r0.xxxx, l(1.000000, 1.000000, 1.000000, 0.000000)
endif 
ret 
// Approximately 116 instruction slots used
