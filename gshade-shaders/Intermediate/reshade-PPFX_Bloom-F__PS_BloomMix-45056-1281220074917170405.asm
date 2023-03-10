//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool pEnableHDR;                   // Offset:    0 Size:     4 [unused]
//   int pTonemapMode;                  // Offset:    4 Size:     4 [unused]
//   float pTonemapCurve;               // Offset:    8 Size:     4 [unused]
//   float pTonemapExposure;            // Offset:   12 Size:     4 [unused]
//   float pTonemapContrast;            // Offset:   16 Size:     4 [unused]
//   float pTonemapSaturateBlacks;      // Offset:   20 Size:     4 [unused]
//   float pBloomRadius;                // Offset:   24 Size:     4 [unused]
//   float pBloomIntensity;             // Offset:   28 Size:     4
//   int pBloomBlendMode;               // Offset:   32 Size:     4
//   float pBloomThreshold;             // Offset:   36 Size:     4 [unused]
//   float pBloomCurve;                 // Offset:   40 Size:     4
//   float pBloomSaturation;            // Offset:   44 Size:     4
//   bool pEnableLensdirt;              // Offset:   48 Size:     4
//   float pLensdirtIntensity;          // Offset:   52 Size:     4
//   float pLensdirtCurve;              // Offset:   56 Size:     4
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
// __V__texColorHDRA                 texture  float4          2d             t6      1 
// __V__texBloomA                    texture  float4          2d            t10      1 
// __srgbV__texBDirt                 texture  float4          2d            t15      1 
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
dcl_constantbuffer CB0[4], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t15
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t6.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t10.xyzw, s0
if_nz cb0[3].x
  sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t15.xyzw, s0
  dp3 r0.w, |r1.xyzx|, l(0.212600, 0.715200, 0.072200, 0.000000)
  log r0.w, r0.w
  mul r0.w, r0.w, cb0[3].z
  exp r0.w, r0.w
  mul r2.xyz, r0.wwww, r2.xyzx
  mad r0.xyz, r2.xyzx, cb0[3].yyyy, r0.xyzx
endif 
log r1.xyz, |r1.xyzx|
mul r1.xyz, r1.xyzx, cb0[2].zzzz
exp r1.xyz, r1.xyzx
dp3 r0.w, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.xyz, -r0.wwww, r1.xyzx
mad r1.xyz, cb0[2].wwww, r1.xyzx, r0.wwww
max r0.w, r1.z, r1.y
max r0.w, r0.w, r1.x
max r0.w, r0.w, l(1.000000)
div r1.xyz, r1.xyzx, r0.wwww
mul r2.xyz, r1.xyzx, cb0[1].wwww
mad r3.xyz, r1.xyzx, cb0[1].wwww, r0.xyzx
ieq r0.w, cb0[2].x, l(1)
max r2.xyz, r0.xyzx, r2.xyzx
max r2.w, cb0[1].w, l(1.000000)
mov r1.w, cb0[1].w
movc r0.xyzw, r0.wwww, r2.xyzw, r1.xyzw
add r3.w, cb0[1].w, l(1.000000)
movc o0.xyzw, cb0[2].xxxx, r0.xyzw, r3.xyzw
ret 
// Approximately 31 instruction slots used
