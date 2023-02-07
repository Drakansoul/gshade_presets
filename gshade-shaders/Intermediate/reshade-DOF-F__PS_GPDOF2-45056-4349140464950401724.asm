//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool DOF_AUTOFOCUS;                // Offset:    0 Size:     4
//   bool DOF_MOUSEDRIVEN_AF;           // Offset:    4 Size:     4
//   float2 DOF_FOCUSPOINT;             // Offset:    8 Size:     8
//   float DOF_FOCUSSAMPLES;            // Offset:   16 Size:     4
//   float DOF_FOCUSRADIUS;             // Offset:   20 Size:     4
//   float DOF_NEARBLURCURVE;           // Offset:   24 Size:     4
//   float DOF_FARBLURCURVE;            // Offset:   28 Size:     4
//   float DOF_MANUALFOCUSDEPTH;        // Offset:   32 Size:     4
//   float DOF_INFINITEFOCUS;           // Offset:   36 Size:     4
//   float DOF_BLURRADIUS;              // Offset:   40 Size:     4
//   float iRingDOFSamples;             // Offset:   44 Size:     4 [unused]
//   float iRingDOFRings;               // Offset:   48 Size:     4 [unused]
//   float fRingDOFThreshold;           // Offset:   52 Size:     4 [unused]
//   float fRingDOFGain;                // Offset:   56 Size:     4 [unused]
//   float fRingDOFBias;                // Offset:   60 Size:     4 [unused]
//   float fRingDOFFringe;              // Offset:   64 Size:     4 [unused]
//   float iMagicDOFBlurQuality;        // Offset:   68 Size:     4 [unused]
//   float fMagicDOFColorCurve;         // Offset:   72 Size:     4 [unused]
//   float iGPDOFQuality;               // Offset:   76 Size:     4
//   bool bGPDOFPolygonalBokeh;         // Offset:   80 Size:     4
//   float iGPDOFPolygonCount;          // Offset:   84 Size:     4
//   float fGPDOFBias;                  // Offset:   88 Size:     4
//   float fGPDOFBiasCurve;             // Offset:   92 Size:     4
//   float fGPDOFBrightnessThreshold;   // Offset:   96 Size:     4
//   float fGPDOFBrightnessMultiplier;  // Offset:  100 Size:     4
//   float fGPDOFChromaAmount;          // Offset:  104 Size:     4 [unused]
//   bool bMatsoDOFChromaEnable;        // Offset:  108 Size:     4 [unused]
//   float fMatsoDOFChromaPow;          // Offset:  112 Size:     4 [unused]
//   float fMatsoDOFBokehCurve;         // Offset:  116 Size:     4 [unused]
//   float iMatsoDOFBokehQuality;       // Offset:  120 Size:     4 [unused]
//   float fMatsoDOFBokehAngle;         // Offset:  124 Size:     4 [unused]
//   int iADOF_ShapeType;               // Offset:  128 Size:     4 [unused]
//   float iADOF_ShapeQuality;          // Offset:  132 Size:     4 [unused]
//   float fADOF_ShapeRotation;         // Offset:  136 Size:     4 [unused]
//   bool bADOF_RotAnimationEnable;     // Offset:  140 Size:     4 [unused]
//   float fADOF_RotAnimationSpeed;     // Offset:  144 Size:     4 [unused]
//   bool bADOF_ShapeCurvatureEnable;   // Offset:  148 Size:     4 [unused]
//   float fADOF_ShapeCurvatureAmount;  // Offset:  152 Size:     4 [unused]
//   bool bADOF_ShapeApertureEnable;    // Offset:  156 Size:     4 [unused]
//   float fADOF_ShapeApertureAmount;   // Offset:  160 Size:     4 [unused]
//   bool bADOF_ShapeAnamorphEnable;    // Offset:  164 Size:     4 [unused]
//   float fADOF_ShapeAnamorphRatio;    // Offset:  168 Size:     4 [unused]
//   bool bADOF_ShapeDistortEnable;     // Offset:  172 Size:     4 [unused]
//   float fADOF_ShapeDistortAmount;    // Offset:  176 Size:     4 [unused]
//   bool bADOF_ShapeDiffusionEnable;   // Offset:  180 Size:     4 [unused]
//   float fADOF_ShapeDiffusionAmount;  // Offset:  184 Size:     4 [unused]
//   bool bADOF_ShapeWeightEnable;      // Offset:  188 Size:     4 [unused]
//   float fADOF_ShapeWeightCurve;      // Offset:  192 Size:     4 [unused]
//   float fADOF_ShapeWeightAmount;     // Offset:  196 Size:     4 [unused]
//   float fADOF_BokehCurve;            // Offset:  200 Size:     4 [unused]
//   bool bADOF_ShapeChromaEnable;      // Offset:  204 Size:     4 [unused]
//   int iADOF_ShapeChromaMode;         // Offset:  208 Size:     4 [unused]
//   float fADOF_ShapeChromaAmount;     // Offset:  212 Size:     4 [unused]
//   bool bADOF_ImageChromaEnable;      // Offset:  216 Size:     4 [unused]
//   float iADOF_ImageChromaHues;       // Offset:  220 Size:     4 [unused]
//   float fADOF_ImageChromaCurve;      // Offset:  224 Size:     4 [unused]
//   float fADOF_ImageChromaAmount;     // Offset:  228 Size:     4 [unused]
//   float fADOF_SmootheningAmount;     // Offset:  232 Size:     4 [unused]
//   float2 MouseCoords;                // Offset:  240 Size:     8
//   float Timer;                       // Offset:  248 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__texHDR2                      texture  float4          2d             t2      1 
// __V__ReShade__BackBufferTex       texture  float4          2d             t4      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t6      1 
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
dcl_constantbuffer CB0[16], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 13
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t4.xyzw, s0
sample_l_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t6.yzwx, s0, l(0.000000)
mad r1.x, -r0.w, l(999.000000), l(1000.000000)
div r0.w, r0.w, r1.x
if_nz cb0[0].x
  mul r1.xy, cb0[15].xyxx, l(0.000260, 0.000468, 0.000000, 0.000000)
  movc r1.xy, cb0[0].yyyy, r1.xyxx, cb0[0].zwzz
  ftoi r1.z, cb0[1].x
  ilt r1.w, l(0), r1.z
  div r2.x, l(6.283185), cb0[1].x
  mov r3.x, cb0[1].y
  mov r3.y, l(1.796911)
  mov r2.y, l(0)
  mov r2.zw, r1.zzzw
  loop 
    breakc_z r2.w
    itof r3.z, r2.z
    mul r3.z, r2.x, r3.z
    sincos r4.x, r5.x, r3.z
    mul r5.y, r4.x, cb0[1].y
    mad r3.zw, r5.xxxy, r3.xxxy, r1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r3.z, r3.zwzz, t6.yzxw, s0, l(0.000000)
    mad r3.w, -r3.z, l(999.000000), l(1000.000000)
    div r3.z, r3.z, r3.w
    add r2.y, r2.y, r3.z
    iadd r2.z, r2.z, l(-1)
    ilt r2.w, l(0), r2.z
  endloop 
  div r1.x, r2.y, cb0[1].x
else 
  mov r1.x, cb0[2].x
endif 
div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[2].y
mul_sat r1.x, r1.y, r1.x
mad r1.z, r1.x, l(-2.000000), l(3.000000)
mul r1.x, r1.x, r1.x
mul r1.x, r1.x, r1.z
mul_sat r0.w, r0.w, r1.y
mad r1.y, r0.w, l(-2.000000), l(3.000000)
mul r0.w, r0.w, r0.w
mul r1.z, r0.w, r1.y
lt r1.z, r1.z, r1.x
mad r0.w, r1.y, r0.w, -r1.x
div r1.y, r0.w, r1.x
add r2.xy, cb0[1].wzww, cb0[1].wzww
exp r1.w, r2.x
mad r1.x, r1.x, r1.w, -r1.x
div_sat r0.w, r0.w, r1.x
movc r0.w, r1.z, r1.y, r0.w
mad_sat r0.w, r0.w, l(0.500000), l(0.500000)
mad r1.x, r0.w, l(2.000000), l(-1.000000)
mul r1.y, |r1.x|, cb0[2].z
lt r1.z, r0.w, l(0.500000)
max r1.w, r2.y, l(1.000000)
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mul r1.w, r1.w, r1.y
movc r1.y, r1.z, r1.w, r1.y
lt r1.z, r1.y, l(1.200000)
if_nz r1.z
  mov o0.xyz, r0.xyzx
  mov o0.w, r0.w
  ret 
else 
  sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t2.xyzw, s0
endif 
dp3 r1.z, r2.xyzx, l(0.333300, 0.333300, 0.333300, 0.000000)
add r1.z, r1.z, -cb0[6].x
mul r1.z, r1.z, cb0[6].y
max r1.z, r1.z, l(0.000000)
mad r1.x, r1.z, |r1.x|, l(1.000000)
mul r1.xzw, r1.xxxx, r2.xxyz
mov_sat r2.x, cb0[5].z
add r2.x, -r2.x, l(1.000000)
mul r1.xzw, r1.xxzw, r2.xxxx
div r2.x, l(360.000000), cb0[5].y
add r2.y, cb0[4].w, l(1.000000)
mul r2.y, r2.y, cb0[4].w
mul r2.z, r2.y, cb0[5].y
mul r2.yz, r2.yyzy, l(0.000000, 4.000000, 0.500000, 0.000000)
ftoi r2.yz, r2.yyzy
movc r2.y, cb0[5].x, r2.z, r2.y
ilt r2.z, l(0), r2.y
ftoi r2.w, cb0[5].y
mul r3.x, r2.x, l(0.017453)
sincos r3.x, r4.x, r3.x
mul r0.w, r0.w, l(0.990000)
mov r5.xy, l(1.000000,0,0,0)
mov r5.z, r4.x
mov r5.w, r3.x
mov r3.z, l(0)
mov r4.xyzw, l(0,0,0,0)
mov r6.xyz, r1.xzwx
mov r3.w, cb0[5].x
mov r6.w, l(1.000000)
mov r7.xyzw, l(0,0,0,0)
mov r8.x, r2.z
loop 
  breakc_z r8.x
  ieq r8.y, r7.z, l(0)
  itof r8.zw, r7.zzzx
  mul r9.x, r8.w, r8.z
  ge r9.x, r9.x, -r9.x
  movc r8.w, r9.x, r8.w, -r8.w
  div r9.x, l(1.000000, 1.000000, 1.000000, 1.000000), r8.w
  mul r8.z, r8.z, r9.x
  frc r8.z, r8.z
  mul r8.z, r8.z, r8.w
  eq r8.z, r8.z, l(0.000000)
  or r8.z, r8.y, r8.z
  movc r8.y, r7.x, r8.z, r8.y
  iadd r3.y, r7.y, l(1)
  iadd r8.z, r2.w, r7.x
  iadd r8.w, r7.x, l(8)
  movc r9.xyzw, r3.wwww, r5.xyzw, r4.xyzw
  movc r3.x, r3.w, r8.z, r8.w
  movc r9.xyzw, r8.yyyy, r9.xyzw, r4.xyzw
  movc r7.xyz, r8.yyyy, r3.xyzx, r7.xyzx
  iadd r7.z, r7.z, l(1)
  itof r3.x, r7.y
  div r3.y, r2.x, r3.x
  itof r8.y, r7.z
  mul r8.z, r3.y, r8.y
  div r8.z, r8.z, r2.x
  frc r8.z, r8.z
  mul r8.z, r2.x, r8.z
  lt r8.w, r8.z, l(0.000001)
  mad r3.y, r3.y, r8.y, r2.x
  mul r3.y, r3.y, l(0.017453)
  sincos r10.x, r11.x, r3.y
  mov r12.xy, r9.zwzz
  mov r12.z, r11.x
  mov r12.w, r10.x
  movc r10.xyzw, r8.wwww, r12.xyzw, r9.xyzw
  div r3.y, r8.z, r2.x
  add r8.zw, -r10.xxxy, r10.zzzw
  mad r8.zw, r3.yyyy, r8.zzzw, r10.xxxy
  div r3.y, l(0.785398), r3.x
  mul r3.y, r8.y, r3.y
  sincos r11.x, r12.x, r3.y
  movc r4.xyzw, r3.wwww, r10.xyzw, r9.xyzw
  mov r12.y, r11.x
  movc r8.yz, r3.wwww, r8.zzwz, r12.xxyx
  mul r8.yz, r3.xxxx, r8.yyzy
  mul r8.yz, r1.yyyy, r8.yyzy
  mul r8.yz, r8.yyzy, l(0.000000, 0.000260, 0.000468, 0.000000)
  div r8.yz, r8.yyzy, cb0[4].wwww
  add r8.yz, r8.yyzy, v1.xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r9.xyzw, r8.yzyy, t2.xyzw, s0, l(0.000000)
  dp3 r3.y, r9.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
  add r3.y, r3.y, -cb0[6].x
  mul r3.y, r3.y, cb0[6].y
  max r3.y, r3.y, l(0.000000)
  mad r8.y, r9.w, l(2.000000), l(-1.000000)
  mad r3.y, r3.y, |r8.y|, l(1.000000)
  mul r9.xyz, r3.yyyy, r9.xyzx
  ge r3.y, r9.w, r0.w
  mul r8.y, |r8.y|, |r8.y|
  mul r8.y, r8.y, r8.y
  movc r3.y, r3.y, l(1.000000), r8.y
  div r3.x, r3.x, cb0[4].w
  log r3.x, |r3.x|
  mul r3.x, r3.x, cb0[5].w
  exp r3.x, r3.x
  mad r3.x, cb0[5].z, r3.x, l(1.000000)
  mul r8.yzw, r3.yyyy, r9.xxyz
  mad r6.xyz, r8.yzwy, r3.xxxx, r6.xyzx
  mad r6.w, r3.y, r3.x, r6.w
  iadd r7.w, r7.w, l(1)
  ilt r8.x, r7.w, r2.y
endloop 
div r1.xzw, r6.xxyz, r6.wwww
add r0.w, r1.y, l(-1.200000)
mul_sat r0.w, r0.w, l(1.250000)
mad r1.y, r0.w, l(-2.000000), l(3.000000)
mul r0.w, r0.w, r0.w
mul r0.w, r0.w, r1.y
add r1.xyz, -r0.xyzx, r1.xzwx
mad o0.xyz, r0.wwww, r1.xyzx, r0.xyzx
mov o0.w, r6.w
ret 
// Approximately 180 instruction slots used
