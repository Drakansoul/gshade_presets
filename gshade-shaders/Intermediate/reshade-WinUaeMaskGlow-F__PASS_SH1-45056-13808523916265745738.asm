//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int shadowMask;                    // Offset:    0 Size:     4 [unused]
//   float MaskGamma;                   // Offset:    4 Size:     4 [unused]
//   float CGWG;                        // Offset:    8 Size:     4 [unused]
//   float maskDark;                    // Offset:   12 Size:     4 [unused]
//   float maskLight;                   // Offset:   16 Size:     4 [unused]
//   float slotmask;                    // Offset:   20 Size:     4 [unused]
//   int slotwidth;                     // Offset:   24 Size:     4 [unused]
//   int masksize;                      // Offset:   28 Size:     4 [unused]
//   int smasksize;                     // Offset:   32 Size:     4 [unused]
//   float bloom;                       // Offset:   36 Size:     4 [unused]
//   float glow;                        // Offset:   40 Size:     4 [unused]
//   float glow_size;                   // Offset:   44 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__Shinra01L                    texture  float4          2d             t4      1 
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
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t4.xyzw, s0
mul r1.xz, cb0[2].wwww, l(0.000260, 0.000000, 0.000521, 0.000000)
mov r1.yw, l(0,0,0,0)
add r2.xyzw, r1.xwzw, v1.xyxy
add r1.xyzw, -r1.xyzw, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t4.xyzw, s0
mul r3.xyzw, r3.xyzw, l(0.241730, 0.241730, 0.241730, 0.241730)
mad r0.xyzw, r0.xyzw, l(0.382925, 0.382925, 0.382925, 0.382925), r3.xyzw
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t4.xyzw, s0
mad r0.xyzw, r3.xyzw, l(0.241730, 0.241730, 0.241730, 0.241730), r0.xyzw
mad r0.xyzw, r2.xyzw, l(0.060598, 0.060598, 0.060598, 0.060598), r0.xyzw
mad r0.xyzw, r1.xyzw, l(0.060598, 0.060598, 0.060598, 0.060598), r0.xyzw
mul r1.xz, cb0[2].wwww, l(0.000781, 0.000000, 0.001042, 0.000000)
mov r1.yw, l(0,0,0,0)
add r2.xyzw, r1.xwzw, v1.xyxy
add r1.xyzw, -r1.xyzw, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t4.xyzw, s0
mad r0.xyzw, r3.xyzw, l(0.005977, 0.005977, 0.005977, 0.005977), r0.xyzw
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t4.xyzw, s0
mad r0.xyzw, r3.xyzw, l(0.005977, 0.005977, 0.005977, 0.005977), r0.xyzw
mad r0.xyzw, r2.xyzw, l(0.000229, 0.000229, 0.000229, 0.000229), r0.xyzw
mad r0.xyzw, r1.xyzw, l(0.000229, 0.000229, 0.000229, 0.000229), r0.xyzw
mul r1.x, cb0[2].w, l(0.001302)
mov r1.y, l(0)
add r1.zw, r1.xxxy, v1.xxxy
add r1.xy, -r1.xyxx, v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t4.xyzw, s0
mad r0.xyzw, r1.xyzw, l(0.000003, 0.000003, 0.000003, 0.000003), r0.xyzw
mad o0.xyzw, r2.xyzw, l(0.000003, 0.000003, 0.000003, 0.000003), r0.xyzw
ret 
// Approximately 35 instruction slots used
