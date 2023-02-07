//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float EdgeThreshold;               // Offset:    0 Size:     4
//   float Subpix;                      // Offset:    4 Size:     4
//   int PmodeWarning;                  // Offset:    8 Size:     4 [unused]
//   bool Overdrive;                    // Offset:   12 Size:     4 [unused]
//   float SubpixBoost;                 // Offset:   16 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s1                              sampler      NA          NA             s1      1 
// __V__ReShade__BackBufferTex       texture  float4          2d             t0      1 
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
// TEXCOORD                 1   xyzw        2     NONE   float   xyzw
// TEXCOORD                 2   xyzw        3     NONE   float   xyzw
// TEXCOORD                 3   xyzw        4     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xy          0   TARGET   float   xy  
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_input_ps linear v2.xyzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyzw
dcl_output o0.xy
dcl_temps 7
max r0.x, cb0[0].x, l(0.050000)
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v1.xyxx, t0.wxyz, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v2.xyxx, t0.xyzw, s1
add r2.xyz, r0.yzwy, -r1.xyzx
max r1.w, |r2.y|, |r2.x|
max r2.x, |r2.z|, r1.w
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v2.zwzz, t0.xyzw, s1
add r4.xyz, r0.yzwy, -r3.xyzx
max r1.w, |r4.y|, |r4.x|
max r2.y, |r4.z|, r1.w
ge r2.zw, r2.xxxy, r0.xxxx
and r2.zw, r2.zzzw, l(0, 0, 0x3f800000, 0x3f800000)
dp2 r1.w, r2.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)
eq r1.w, r1.w, l(0.000000)
discard_nz r1.w
if_z r1.w
  sample_indexable(texture2d)(float,float,float,float) r4.xyz, v3.xyxx, t0.xyzw, s1
  add r4.xyz, r0.yzwy, -r4.xyzx
  max r1.w, |r4.y|, |r4.x|
  max r4.x, |r4.z|, r1.w
  sample_indexable(texture2d)(float,float,float,float) r5.xyz, v3.zwzz, t0.xyzw, s1
  add r5.xyz, r0.yzwy, -r5.xyzx
  max r1.w, |r5.y|, |r5.x|
  max r4.y, |r5.z|, r1.w
  max r4.xy, r2.xyxx, r4.xyxx
  sample_indexable(texture2d)(float,float,float,float) r5.xyz, v4.xyxx, t0.xyzw, s1
  add r5.xyz, r1.xyzx, -r5.xyzx
  max r1.w, |r5.y|, |r5.x|
  max r5.x, |r5.z|, r1.w
  sample_indexable(texture2d)(float,float,float,float) r6.xyz, v4.zwzz, t0.xyzw, s1
  add r6.xyz, r3.xyzx, -r6.xyzx
  max r1.w, |r6.y|, |r6.x|
  max r5.y, |r6.z|, r1.w
  max r4.xy, r4.xyxx, r5.xyxx
  max r1.w, r4.y, r4.x
  mad r3.w, cb0[0].y, l(0.650000), l(1.100000)
  mul r2.xy, r2.xyxx, r3.wwww
  ge r2.xy, r2.xyxx, r1.wwww
  and r2.xy, r2.xyxx, l(0x3f800000, 0x3f800000, 0, 0)
  mul r2.xy, r2.xyxx, r2.zwzz
else 
  mov r2.xy, l(0,0,0,0)
endif 
dp3 r0.y, r0.yzwy, l(0.212600, 0.715200, 0.072200, 0.000000)
dp3 r1.x, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
dp3 r1.y, r3.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r0.zw, r0.yyyy, -r1.xxxy
ge r1.zw, |r0.zzzw|, r0.xxxx
and r1.zw, r1.zzzw, l(0, 0, 0x3f800000, 0x3f800000)
dp2 r0.x, r1.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)
eq r0.x, r0.x, l(0.000000)
discard_nz r0.x
if_z r0.x
  sample_indexable(texture2d)(float,float,float,float) r3.xyz, v3.xyxx, t0.xyzw, s1
  dp3 r3.x, r3.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
  sample_indexable(texture2d)(float,float,float,float) r4.xyz, v3.zwzz, t0.xyzw, s1
  dp3 r3.y, r4.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
  add r0.xy, r0.yyyy, -r3.xyxx
  max r0.xy, |r0.xyxx|, |r0.zwzz|
  sample_indexable(texture2d)(float,float,float,float) r3.xyz, v4.xyxx, t0.xyzw, s1
  dp3 r3.x, r3.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
  sample_indexable(texture2d)(float,float,float,float) r4.xyz, v4.zwzz, t0.xyzw, s1
  dp3 r3.y, r4.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
  add r1.xy, r1.xyxx, -r3.xyxx
  max r0.xy, r0.xyxx, |r1.xyxx|
  max r0.x, r0.y, r0.x
  mad r0.y, cb0[0].y, l(0.650000), l(1.100000)
  mul r0.yz, |r0.zzwz|, r0.yyyy
  ge r0.xy, r0.yzyy, r0.xxxx
  and r0.xy, r0.xyxx, l(0x3f800000, 0x3f800000, 0, 0)
  mul r0.xy, r0.xyxx, r1.zwzz
else 
  mov r0.xy, l(0,0,0,0)
endif 
mul r0.xy, r0.xyxx, r2.xyxx
sqrt o0.xy, r0.xyxx
ret 
// Approximately 77 instruction slots used
