//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float BLOOM_INTENSITY;             // Offset:    0 Size:     4
//   float BLOOM_CURVE;                 // Offset:    4 Size:     4
//   float BLOOM_SAT;                   // Offset:    8 Size:     4
//   float BLOOM_LAYER_MULT_1;          // Offset:   12 Size:     4 [unused]
//   float BLOOM_LAYER_MULT_2;          // Offset:   16 Size:     4 [unused]
//   float BLOOM_LAYER_MULT_3;          // Offset:   20 Size:     4 [unused]
//   float BLOOM_LAYER_MULT_4;          // Offset:   24 Size:     4 [unused]
//   float BLOOM_LAYER_MULT_5;          // Offset:   28 Size:     4 [unused]
//   float BLOOM_LAYER_MULT_6;          // Offset:   32 Size:     4 [unused]
//   float BLOOM_LAYER_MULT_7;          // Offset:   36 Size:     4 [unused]
//   float BLOOM_ADAPT_STRENGTH;        // Offset:   40 Size:     4 [unused]
//   float BLOOM_ADAPT_EXPOSURE;        // Offset:   44 Size:     4 [unused]
//   float BLOOM_ADAPT_SPEED;           // Offset:   48 Size:     4 [unused]
//   bool BLOOM_ADAPT_MODE;             // Offset:   52 Size:     4 [unused]
//   float BLOOM_TONEMAP_COMPRESSION;   // Offset:   56 Size:     4 [unused]
//   float FRAME_TIME;                  // Offset:   60 Size:     4 [unused]
//   int FRAME_COUNT;                   // Offset:   64 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__qUINT__BackBufferTex         texture  float4          2d             t0      1 
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
add r0.xyzw, v1.xyxy, l(0.000521, 0.000936, -0.000521, -0.000936)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r0.xyxx, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r0.zyzz, t0.xyzw, s0, l(0.000000)
add r1.xyz, r1.xyzx, r2.xyzx
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r0.zwzz, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xwxx, t0.xyzw, s0, l(0.000000)
add r1.xyz, r1.xyzx, r2.xyzx
add r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
mad r0.xyz, r1.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(0.001042, 0.001872, -0.001042, -0.001872)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r1.zyzz, t0.xyzw, s0, l(0.000000)
add r2.xyz, r2.xyzx, r3.xyzx
sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r1.zwzz, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xwxx, t0.xyzw, s0, l(0.000000)
add r2.xyz, r2.xyzx, r3.xyzx
add r1.xyz, r1.xyzx, r2.xyzx
mad r0.xyz, r1.xyzx, l(0.031250, 0.031250, 0.031250, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(0.001042, 0.000000, -0.001042, 0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t0.xyzw, s0, l(0.000000)
add r1.xyz, r1.xyzx, r2.xyzx
add r2.xyzw, v1.xyxy, l(0.000000, 0.001872, 0.000000, -0.001872)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
add r1.xyz, r1.xyzx, r3.xyzx
add r1.xyz, r2.xyzx, r1.xyzx
mad r0.xyz, r1.xyzx, l(0.062500, 0.062500, 0.062500, 0.000000), r0.xyzx
dp3_sat r0.w, r0.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
add r0.xyz, -r0.wwww, r0.xyzx
mad r0.xyz, cb0[0].zzzz, r0.xyzx, r0.wwww
log r1.x, r0.w
mul r1.x, r1.x, cb0[0].y
exp r1.x, r1.x
mul r1.y, cb0[0].x, cb0[0].x
mul r1.x, r1.x, r1.y
mul r1.x, r1.x, cb0[0].x
add r1.y, r0.w, l(0.001000)
mov o0.w, r0.w
div r0.w, r1.x, r1.y
mul o0.xyz, r0.wwww, r0.xyzx
ret 
// Approximately 44 instruction slots used
