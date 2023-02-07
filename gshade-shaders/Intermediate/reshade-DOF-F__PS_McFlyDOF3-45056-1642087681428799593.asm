//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool DOF_AUTOFOCUS;                // Offset:    0 Size:     4 [unused]
//   bool DOF_MOUSEDRIVEN_AF;           // Offset:    4 Size:     4 [unused]
//   float2 DOF_FOCUSPOINT;             // Offset:    8 Size:     8 [unused]
//   float DOF_FOCUSSAMPLES;            // Offset:   16 Size:     4 [unused]
//   float DOF_FOCUSRADIUS;             // Offset:   20 Size:     4 [unused]
//   float DOF_NEARBLURCURVE;           // Offset:   24 Size:     4 [unused]
//   float DOF_FARBLURCURVE;            // Offset:   28 Size:     4 [unused]
//   float DOF_MANUALFOCUSDEPTH;        // Offset:   32 Size:     4 [unused]
//   float DOF_INFINITEFOCUS;           // Offset:   36 Size:     4 [unused]
//   float DOF_BLURRADIUS;              // Offset:   40 Size:     4 [unused]
//   float iRingDOFSamples;             // Offset:   44 Size:     4 [unused]
//   float iRingDOFRings;               // Offset:   48 Size:     4 [unused]
//   float fRingDOFThreshold;           // Offset:   52 Size:     4 [unused]
//   float fRingDOFGain;                // Offset:   56 Size:     4 [unused]
//   float fRingDOFBias;                // Offset:   60 Size:     4 [unused]
//   float fRingDOFFringe;              // Offset:   64 Size:     4 [unused]
//   float iMagicDOFBlurQuality;        // Offset:   68 Size:     4 [unused]
//   float fMagicDOFColorCurve;         // Offset:   72 Size:     4 [unused]
//   float iGPDOFQuality;               // Offset:   76 Size:     4 [unused]
//   bool bGPDOFPolygonalBokeh;         // Offset:   80 Size:     4 [unused]
//   float iGPDOFPolygonCount;          // Offset:   84 Size:     4 [unused]
//   float fGPDOFBias;                  // Offset:   88 Size:     4 [unused]
//   float fGPDOFBiasCurve;             // Offset:   92 Size:     4 [unused]
//   float fGPDOFBrightnessThreshold;   // Offset:   96 Size:     4 [unused]
//   float fGPDOFBrightnessMultiplier;  // Offset:  100 Size:     4 [unused]
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
//   float fADOF_SmootheningAmount;     // Offset:  232 Size:     4
//   float2 MouseCoords;                // Offset:  240 Size:     8 [unused]
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
// __V__ReShade__BackBufferTex       texture  float4          2d             t4      1 
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
dcl_immediateConstantBuffer { { 1.000000, 0, 0, 0},
                              { 0.750000, 0, 0, 0},
                              { 0.500000, 0, 0, 0} }
dcl_constantbuffer CB0[15], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t4.wxyz, s0
mad r0.y, r0.x, l(2.000000), l(-1.000000)
add r0.y, |r0.y|, l(-0.300000)
add_sat r0.y, r0.y, r0.y
mad r0.z, r0.y, l(-2.000000), l(3.000000)
mul r0.y, r0.y, r0.y
mul r0.y, r0.y, r0.z
mul r0.y, r0.y, cb0[14].z
mul r0.yz, r0.yyyy, l(0.000000, 0.000260, 0.000468, 0.000000)
mov r0.w, l(0.000100)
mov r1.xyzw, l(0.000100,0.000100,0.000100,-2)
mov r2.x, l(-1)
loop 
  breakc_z r2.x
  imax r2.y, -r1.w, r1.w
  itof r3.x, r1.w
  mov r4.xyz, r1.xyzx
  mov r2.z, r0.w
  mov r2.w, l(-2)
  mov r3.z, l(-1)
  loop 
    breakc_z r3.z
    imax r3.w, -r2.w, r2.w
    mul r4.w, icb[r3.w + 0].x, icb[r2.y + 0].x
    itof r3.y, r2.w
    mad r5.xy, r3.xyxx, r0.yzyy, v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xyxx, t4.xyzw, s0, l(0.000000)
    mad r4.xyz, r5.xyzx, r4.wwww, r4.xyzx
    mad r2.z, icb[r2.y + 0].x, icb[r3.w + 0].x, r2.z
    iadd r2.w, r2.w, l(1)
    ige r3.z, l(2), r2.w
  endloop 
  mov r1.xyz, r4.xyzx
  mov r0.w, r2.z
  iadd r1.w, r1.w, l(1)
  ige r2.x, l(2), r1.w
endloop 
div o0.xyz, r1.xyzx, r0.wwww
mov o0.w, r0.x
ret 
// Approximately 40 instruction slots used
