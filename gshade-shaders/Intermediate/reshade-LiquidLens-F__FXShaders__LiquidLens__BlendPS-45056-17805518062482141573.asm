//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int _908;                          // Offset:    0 Size:     4 [unused]
//   float Brightness;                  // Offset:    4 Size:     4 [unused]
//   float Saturation;                  // Offset:    8 Size:     4 [unused]
//   float Threshold;                   // Offset:   12 Size:     4 [unused]
//   int Tonemapper;                    // Offset:   16 Size:     4
//   float BlurSize;                    // Offset:   20 Size:     4 [unused]
//   float BlurSigma;                   // Offset:   24 Size:     4 [unused]
//   float FisheyeAmount;               // Offset:   28 Size:     4
//   float FisheyeZoom;                 // Offset:   32 Size:     4
//   int FisheyeScaleType;              // Offset:   36 Size:     4
//   float TintAmount;                  // Offset:   40 Size:     4
//   float4 Tint1;                      // Offset:   48 Size:    16
//   float4 Tint2;                      // Offset:   64 Size:    16
//   float4 Tint3;                      // Offset:   80 Size:    16
//   float4 Tint4;                      // Offset:   96 Size:    16
//   float4 Tint5;                      // Offset:  112 Size:    16
//   float4 Tint6;                      // Offset:  128 Size:    16
//   float4 Tint7;                      // Offset:  144 Size:    16
//   float Scale1;                      // Offset:  160 Size:     4
//   float Scale2;                      // Offset:  164 Size:     4
//   float Scale3;                      // Offset:  168 Size:     4
//   float Scale4;                      // Offset:  172 Size:     4
//   float Scale5;                      // Offset:  176 Size:     4
//   float Scale6;                      // Offset:  180 Size:     4
//   float Scale7;                      // Offset:  184 Size:     4
//   bool ShowLens;                     // Offset:  188 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __srgbV__FXShaders__LiquidLens__BackBufferTex    texture  float4          2d             t1      1 
// __V__FXShaders__LiquidLens__LensATex    texture  float4          2d             t2      1 
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
dcl_constantbuffer CB0[12], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t1.xyzw, s0
switch cb0[1].x
  case l(1)
  mad r2.xyz, -r0.xyzx, l(0.150000, 0.150000, 0.150000, 0.000000), l(0.005000, 0.005000, 0.005000, 0.000000)
  mad r3.xyz, r0.xyzx, l(0.150000, 0.150000, 0.150000, 0.000000), l(-0.005000, -0.005000, -0.005000, 0.000000)
  mul r4.xyz, r0.xyzx, l(0.072000, 0.072000, 0.072000, 0.000000)
  mad r5.xyz, r0.xyzx, l(0.045000, 0.045000, 0.045000, 0.000000), l(-0.042000, -0.042000, -0.042000, 0.000000)
  mul r4.xyz, r4.xyzx, r5.xyzx
  mad r3.xyz, |r3.xyzx|, |r3.xyzx|, -r4.xyzx
  sqrt r3.xyz, r3.xyzx
  add r2.xyz, r2.xyzx, -r3.xyzx
  mad r3.xyz, r0.xyzx, l(0.300000, 0.300000, 0.300000, 0.000000), l(-0.280000, -0.280000, -0.280000, 0.000000)
  mul r3.xyz, r3.xyzx, l(0.300000, 0.300000, 0.300000, 0.000000)
  div r1.xyz, r2.xyzx, r3.xyzx
  mov r1.xyz, |r1.xyzx|
  break 
  case l(2)
  mad r2.xyz, -r0.xyzx, l(0.432951, 0.432951, 0.432951, 0.000000), l(0.024579, 0.024579, 0.024579, 0.000000)
  mad r3.xyz, r0.xyzx, l(0.432951, 0.432951, 0.432951, 0.000000), l(-0.024579, -0.024579, -0.024579, 0.000000)
  mad r4.xyz, r0.xyzx, l(0.983729, 0.983729, 0.983729, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
  mul r5.xyz, r4.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
  mad r6.xyz, r0.xyzx, l(0.238081, 0.238081, 0.238081, 0.000000), l(0.000091, 0.000091, 0.000091, 0.000000)
  mul r5.xyz, r5.xyzx, r6.xyzx
  mad r3.xyz, |r3.xyzx|, |r3.xyzx|, -r5.xyzx
  sqrt r3.xyz, r3.xyzx
  add r2.xyz, r2.xyzx, -r3.xyzx
  add r3.xyz, r4.xyzx, r4.xyzx
  div r1.xyz, r2.xyzx, r3.xyzx
  mov r1.xyz, |r1.xyzx|
  break 
  case l(3)
  mad r2.xyz, r0.xyzx, l(0.590000, 0.590000, 0.590000, 0.000000), l(-0.030000, -0.030000, -0.030000, 0.000000)
  mad r3.xyz, r0.xyzx, l(1.405600, 1.405600, 1.405600, 0.000000), l(0.000900, 0.000900, 0.000900, 0.000000)
  mad r3.xyz, -r0.xyzx, l(0.035400, 0.035400, 0.035400, 0.000000), r3.xyzx
  mul r4.xyz, r0.xyzx, r0.xyzx
  mad r3.xyz, -r4.xyzx, l(1.360800, 1.360800, 1.360800, 0.000000), r3.xyzx
  mad r3.xyz, r4.xyzx, l(0.348100, 0.348100, 0.348100, 0.000000), r3.xyzx
  sqrt r3.xyz, r3.xyzx
  add r2.xyz, r2.xyzx, r3.xyzx
  mad r3.xyz, -r0.xyzx, l(2.430000, 2.430000, 2.430000, 0.000000), l(2.510000, 2.510000, 2.510000, 0.000000)
  add r3.xyz, r3.xyzx, r3.xyzx
  div r1.xyz, r2.xyzx, r3.xyzx
  break 
  case l(4)
  mul r2.xyz, r0.xyzx, l(-0.155000, -0.155000, -0.155000, 0.000000)
  max r3.xyz, r0.xyzx, l(0.010000, 0.010000, 0.010000, 0.000000)
  add r3.xyz, r3.xyzx, l(-1.019000, -1.019000, -1.019000, 0.000000)
  div r1.xyz, r2.xyzx, r3.xyzx
  break 
  case l(5)
  max r1.w, r0.z, r0.y
  max r1.w, r0.x, r1.w
  add r1.w, -r1.w, l(1.000000)
  max r1.w, r1.w, l(0.100000)
  rcp r1.w, r1.w
  mul r1.xyz, r0.xyzx, r1.wwww
  break 
  default 
  add r2.xyz, r0.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
  min r2.xyz, r2.xyzx, l(-0.100000, -0.100000, -0.100000, 0.000000)
  div r1.xyz, r0.xyzx, r2.xyzx
  mov r1.xyz, -r1.xyzx
  break 
endswitch 
mul r0.x, cb0[1].w, l(10.000000)
mul r0.y, cb0[2].x, l(3.000000)
mad r2.xy, v1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
switch cb0[2].y
  case l(0)
  mov r2.zw, l(0,0,1.000000,0.556510)
  break 
  case l(1)
  mov r2.zw, l(0,0,1.796911,1.000000)
  break 
  default 
  mov r2.zw, r2.xxxy
  break 
endswitch 
mul r2.zw, r2.zzzw, r2.xxxy
mad r0.z, -r2.z, r2.z, l(1.000000)
mad r0.z, -r2.w, r2.w, r0.z
sqrt r0.z, r0.z
mad r0.y, r0.z, r0.y, l(-1.000000)
mad r0.x, r0.x, r0.y, l(1.000000)
mad r0.xy, r2.xyxx, r0.xxxx, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r2.xyzw, cb0[10].xyzw, l(4.000000, 4.000000, 4.000000, 4.000000)
mad r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), l(-0.500000, -0.500000, 0.000000, 0.000000)
mad r3.xyzw, r0.xyxy, r2.xxyy, l(0.500000, 0.500000, 0.500000, 0.500000)
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t2.xyzw, s0
mad r5.xyz, cb0[3].xyzx, cb0[3].wwww, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r5.xyz, cb0[2].zzzz, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t2.xyzw, s0
mad r6.xyz, cb0[4].xyzx, cb0[4].wwww, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r6.xyz, cb0[2].zzzz, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r3.xyz, r3.xyzx, r6.xyzx
mad r3.xyz, r4.xyzx, r5.xyzx, r3.xyzx
mad r2.xyzw, r0.xyxy, r2.zzww, l(0.500000, 0.500000, 0.500000, 0.500000)
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r2.xyxx, t2.xyzw, s0
mad r5.xyz, cb0[5].xyzx, cb0[5].wwww, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r5.xyz, cb0[2].zzzz, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r3.xyz, r4.xyzx, r5.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t2.xyzw, s0
mad r4.xyz, cb0[6].xyzx, cb0[6].wwww, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, cb0[2].zzzz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.xyz, r2.xyzx, r4.xyzx, r3.xyzx
mul r3.xyz, cb0[11].xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
mad r4.xyzw, r0.xyxy, r3.xxyy, l(0.500000, 0.500000, 0.500000, 0.500000)
sample_indexable(texture2d)(float,float,float,float) r3.xyw, r4.xyxx, t2.xywz, s0
mad r5.xyz, cb0[7].xyzx, cb0[7].wwww, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r5.xyz, cb0[2].zzzz, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.xyz, r3.xywx, r5.xyzx, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.xyw, r4.zwzz, t2.xywz, s0
mad r4.xyz, cb0[8].xyzx, cb0[8].wwww, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, cb0[2].zzzz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.xyz, r3.xywx, r4.xyzx, r2.xyzx
mad r0.xy, r0.xyxx, r3.zzzz, l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyxx, t2.xyzw, s0
mad r3.xyz, cb0[9].xyzx, cb0[9].wwww, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r3.xyz, cb0[2].zzzz, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r0.xyz, r0.xyzx, r3.xyzx, r2.xyzx
mul r2.xyz, r0.xyzx, l(0.142857, 0.142857, 0.142857, 0.000000)
mad r0.xyz, r0.xyzx, l(0.142857, 0.142857, 0.142857, 0.000000), r1.xyzx
movc r0.xyz, cb0[11].wwww, r2.xyzx, r0.xyzx
switch cb0[1].x
  case l(1)
  mad r2.xyz, r0.xyzx, l(0.150000, 0.150000, 0.150000, 0.000000), l(0.050000, 0.050000, 0.050000, 0.000000)
  mad r2.xyz, r0.xyzx, r2.xyzx, l(0.004000, 0.004000, 0.004000, 0.000000)
  mad r3.xyz, r0.xyzx, l(0.150000, 0.150000, 0.150000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)
  mad r3.xyz, r0.xyzx, r3.xyzx, l(0.060000, 0.060000, 0.060000, 0.000000)
  div r2.xyz, r2.xyzx, r3.xyzx
  add r1.xyz, r2.xyzx, l(-0.066667, -0.066667, -0.066667, 0.000000)
  break 
  case l(2)
  add r2.xyz, r0.xyzx, l(0.024579, 0.024579, 0.024579, 0.000000)
  mad r2.xyz, r0.xyzx, r2.xyzx, l(-0.000091, -0.000091, -0.000091, 0.000000)
  mad r3.xyz, r0.xyzx, l(0.983729, 0.983729, 0.983729, 0.000000), l(0.432951, 0.432951, 0.432951, 0.000000)
  mad r3.xyz, r0.xyzx, r3.xyzx, l(0.238081, 0.238081, 0.238081, 0.000000)
  div_sat r1.xyz, r2.xyzx, r3.xyzx
  break 
  case l(3)
  mad r2.xyz, r0.xyzx, l(2.510000, 2.510000, 2.510000, 0.000000), l(0.030000, 0.030000, 0.030000, 0.000000)
  mul r2.xyz, r0.xyzx, r2.xyzx
  mad r3.xyz, r0.xyzx, l(2.430000, 2.430000, 2.430000, 0.000000), l(0.590000, 0.590000, 0.590000, 0.000000)
  mad r3.xyz, r0.xyzx, r3.xyzx, l(0.140000, 0.140000, 0.140000, 0.000000)
  div_sat r1.xyz, r2.xyzx, r3.xyzx
  break 
  case l(4)
  add r2.xyz, r0.xyzx, l(0.155000, 0.155000, 0.155000, 0.000000)
  div r2.xyz, r0.xyzx, r2.xyzx
  mul r1.xyz, r2.xyzx, l(1.019000, 1.019000, 1.019000, 0.000000)
  break 
  case l(5)
  max r1.w, r0.z, r0.y
  max r1.w, r0.x, r1.w
  add r1.w, r1.w, l(1.000000)
  rcp r1.w, r1.w
  mul r1.xyz, r0.xyzx, r1.wwww
  break 
  default 
  add r2.xyz, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  div r1.xyz, r0.xyzx, r2.xyzx
  break 
endswitch 
mov o0.xyz, r1.xyzx
mov o0.w, r0.w
ret 
// Approximately 166 instruction slots used
