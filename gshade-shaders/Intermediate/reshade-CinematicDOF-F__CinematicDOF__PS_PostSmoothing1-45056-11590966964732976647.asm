//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool UseAutoFocus;                 // Offset:    0 Size:     4 [unused]
//   bool UseMouseDrivenAutoFocus;      // Offset:    4 Size:     4 [unused]
//   float2 AutoFocusPoint;             // Offset:    8 Size:     8 [unused]
//   float AutoFocusTransitionSpeed;    // Offset:   16 Size:     4 [unused]
//   float ManualFocusPlane;            // Offset:   20 Size:     4 [unused]
//   float FocalLength;                 // Offset:   24 Size:     4 [unused]
//   float FNumber;                     // Offset:   28 Size:     4 [unused]
//   bool ShowOutOfFocusPlaneOnMouseDown;// Offset:   32 Size:     4 [unused]
//   float3 OutOfFocusPlaneColor;       // Offset:   36 Size:    12 [unused]
//   float OutOfFocusPlaneColorTransparency;// Offset:   48 Size:     4 [unused]
//   float3 FocusPlaneColor;            // Offset:   52 Size:    12 [unused]
//   float4 FocusCrosshairColor;        // Offset:   64 Size:    16 [unused]
//   float FarPlaneMaxBlur;             // Offset:   80 Size:     4 [unused]
//   float NearPlaneMaxBlur;            // Offset:   84 Size:     4 [unused]
//   float BlurQuality;                 // Offset:   88 Size:     4 [unused]
//   float BokehBusyFactor;             // Offset:   92 Size:     4 [unused]
//   float PostBlurSmoothing;           // Offset:   96 Size:     4
//   float HighlightAnamorphicFactor;   // Offset:  100 Size:     4 [unused]
//   float HighlightAnamorphicSpreadFactor;// Offset:  104 Size:     4 [unused]
//   float HighlightAnamorphicAlignmentFactor;// Offset:  108 Size:     4 [unused]
//   float HighlightBoost;              // Offset:  112 Size:     4 [unused]
//   float HighlightGammaFactor;        // Offset:  116 Size:     4 [unused]
//   float HighlightSharpeningFactor;   // Offset:  120 Size:     4 [unused]
//   int HighlightShape;                // Offset:  124 Size:     4 [unused]
//   float HighlightShapeRotationAngle; // Offset:  128 Size:     4 [unused]
//   float HighlightShapeGamma;         // Offset:  132 Size:     4 [unused]
//   bool MitigateUndersampling;        // Offset:  136 Size:     4 [unused]
//   bool ShowCoCValues;                // Offset:  140 Size:     4 [unused]
//   float2 MouseCoords;                // Offset:  144 Size:     8 [unused]
//   bool LeftMouseDown;                // Offset:  152 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s1                              sampler      NA          NA             s1      1 
// __s2                              sampler      NA          NA             s2      1 
// __V__CinematicDOF__texCDCoC       texture  float4          2d             t8      1 
// __V__CinematicDOF__texCDBuffer4    texture  float4          2d            t26      1 
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
dcl_immediateConstantBuffer { { 0, 0.132980, 0, 0},
                              { 1.458430, 0.232276, 0, 0},
                              { 3.403985, 0.135326, 0, 0},
                              { 5.351806, 0.051156, 0, 0},
                              { 7.302941, 0.012539, 0, 0},
                              { 9.258160, 0.001991, 0, 0} }
dcl_constantbuffer CB0[7], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t26
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
sample_l_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t8.xyzw, s2, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t26.xyzw, s1, l(0.000000)
dp3 r0.y, r1.xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
lt r0.x, |r0.x|, l(0.200000)
lt r0.z, cb0[6].x, l(0.010000)
or r0.x, r0.z, r0.x
lt r0.y, r0.y, l(0.300000)
or r0.x, r0.y, r0.x
if_z r0.x
  mul r0.xyz, r1.xyzx, l(0.132980, 0.132980, 0.132980, 0.000000)
  mul r2.xy, cb0[6].xxxx, l(0.000260, 0.000000, 0.000000, 0.000000)
  mov r3.xyz, r0.xyzx
  mov r0.w, l(1)
  mov r2.z, l(-1)
  loop 
    breakc_z r2.z
    mad r4.xy, r2.xyxx, icb[r0.w + 0].xxxx, v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r2.w, r4.xyxx, t8.yzwx, s2, l(0.000000)
    lt r2.w, |r2.w|, l(0.200000)
    and r3.w, r2.w, l(0x3f800000)
    mul r5.xyz, r1.xyzx, r3.wwww
    sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t26.xyzw, s1, l(0.000000)
    movc r2.w, r2.w, l(0), l(1.000000)
    mul r4.xyz, r2.wwww, r4.xyzx
    mul r4.xyz, r4.xyzx, icb[r0.w + 0].yyyy
    mad r4.xyz, r5.xyzx, icb[r0.w + 0].yyyy, r4.xyzx
    add r4.xyz, r3.xyzx, r4.xyzx
    mad r5.xy, -r2.xyxx, icb[r0.w + 0].xxxx, v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r2.w, r5.xyxx, t8.yzwx, s2, l(0.000000)
    lt r2.w, |r2.w|, l(0.200000)
    and r3.w, r2.w, l(0x3f800000)
    mul r6.xyz, r1.xyzx, r3.wwww
    sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xyxx, t26.xyzw, s1, l(0.000000)
    movc r2.w, r2.w, l(0), l(1.000000)
    mul r5.xyz, r2.wwww, r5.xyzx
    mul r5.xyz, r5.xyzx, icb[r0.w + 0].yyyy
    mad r5.xyz, r6.xyzx, icb[r0.w + 0].yyyy, r5.xyzx
    add r3.xyz, r4.xyzx, r5.xyzx
    iadd r0.w, r0.w, l(1)
    ilt r2.z, r0.w, l(6)
  endloop 
  mov r1.xyz, r3.xyzx
  mov_sat o0.xyzw, r1.xyzw
else 
  mov o0.xyzw, r1.xyzw
endif 
ret 
// Approximately 47 instruction slots used
