//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int _895;                          // Offset:    0 Size:     4 [unused]
//   int _896;                          // Offset:    4 Size:     4 [unused]
//   int _897;                          // Offset:    8 Size:     4 [unused]
//   float InputExposure;               // Offset:   12 Size:     4 [unused]
//   float Exposure;                    // Offset:   16 Size:     4 [unused]
//   int InvTonemap;                    // Offset:   20 Size:     4 [unused]
//   int Tonemap;                       // Offset:   24 Size:     4 [unused]
//   float BloomAmount;                 // Offset:   28 Size:     4 [unused]
//   float BloomBrightness;             // Offset:   32 Size:     4 [unused]
//   float BloomSaturation;             // Offset:   36 Size:     4 [unused]
//   float BlurSize;                    // Offset:   40 Size:     4
//   float BlendingAmount;              // Offset:   44 Size:     4 [unused]
//   float BlendingBase;                // Offset:   48 Size:     4 [unused]
//   bool ShowBloom;                    // Offset:   52 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__FXShaders__Bloom5Tex         texture  float4          2d            t14      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t14
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 10
add r0.xyzw, v1.xyxy, l(-0.000000, 0.000000, 0.066667, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t14.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t14.xyzw, s0
add r2.xyzw, v1.xyxy, l(-0.133333, 0.000000, -0.066667, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.zwzz, t14.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t14.xyzw, s0
add r4.xyzw, v1.xyxy, l(-0.266667, 0.000000, -0.200000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.zwzz, t14.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.xyxx, t14.xyzw, s0
add r6.xyzw, v1.xyxy, l(-0.400000, -0.000000, -0.333333, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r7.xyzw, r6.xyxx, t14.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r6.xyzw, r6.zwzz, t14.xyzw, s0
mul r8.x, cb0[2].z, cb0[2].z
mul r8.x, r8.x, l(26.000000)
div r9.xyzw, l(-36.000000, -25.000000, -16.000000, -9.000000), r8.xxxx
div r8.xy, l(-4.000000, -1.000000, 0.000000, 0.000000), r8.xxxx
mul r8.xy, r8.xyxx, l(1.442695, 1.442695, 0.000000, 0.000000)
exp r8.xy, r8.xyxx
mul r9.xyzw, r9.xyzw, l(1.442695, 1.442695, 1.442695, 1.442695)
exp r9.xyzw, r9.xyzw
mul r6.xyzw, r6.xyzw, r9.yyyy
mad r6.xyzw, r7.xyzw, r9.xxxx, r6.xyzw
mad r4.xyzw, r4.xyzw, r9.zzzz, r6.xyzw
mad r4.xyzw, r5.xyzw, r9.wwww, r4.xyzw
mad r2.xyzw, r2.xyzw, r8.xxxx, r4.xyzw
mad r2.xyzw, r3.xyzw, r8.yyyy, r2.xyzw
add r1.xyzw, r1.xyzw, r2.xyzw
mad r0.xyzw, r0.xyzw, r8.yyyy, r1.xyzw
add r1.xyzw, v1.xyxy, l(0.133333, 0.000000, 0.200000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t14.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t14.xyzw, s0
mad r0.xyzw, r2.xyzw, r8.xxxx, r0.xyzw
mad r0.xyzw, r1.xyzw, r9.wwww, r0.xyzw
add r1.xyzw, v1.xyxy, l(0.266667, 0.000000, 0.333333, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t14.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t14.xyzw, s0
mad r0.xyzw, r2.xyzw, r9.zzzz, r0.xyzw
mad r0.xyzw, r1.xyzw, r9.yyyy, r0.xyzw
add r1.xy, v1.xyxx, l(0.400000, 0.000000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t14.xyzw, s0
mad r0.xyzw, r1.xyzw, r9.xxxx, r0.xyzw
add r1.x, r9.y, r9.x
add r1.x, r9.z, r1.x
add r1.x, r9.w, r1.x
add r1.x, r8.x, r1.x
mad r1.x, r8.y, l(2.000000), r1.x
add r1.x, r8.x, r1.x
add r1.x, r9.w, r1.x
add r1.x, r9.z, r1.x
add r1.x, r9.y, r1.x
add r1.x, r9.x, r1.x
add r1.x, r1.x, l(1.000000)
div o0.xyzw, r0.xyzw, r1.xxxx
ret 
// Approximately 54 instruction slots used
