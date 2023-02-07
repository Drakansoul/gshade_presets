//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float BLOOM_INTENSITY;             // Offset:    0 Size:     4 [unused]
//   float BLOOM_CURVE;                 // Offset:    4 Size:     4 [unused]
//   float BLOOM_SAT;                   // Offset:    8 Size:     4 [unused]
//   float BLOOM_LAYER_MULT_1;          // Offset:   12 Size:     4
//   float BLOOM_LAYER_MULT_2;          // Offset:   16 Size:     4
//   float BLOOM_LAYER_MULT_3;          // Offset:   20 Size:     4
//   float BLOOM_LAYER_MULT_4;          // Offset:   24 Size:     4
//   float BLOOM_LAYER_MULT_5;          // Offset:   28 Size:     4
//   float BLOOM_LAYER_MULT_6;          // Offset:   32 Size:     4
//   float BLOOM_LAYER_MULT_7;          // Offset:   36 Size:     4
//   float BLOOM_ADAPT_STRENGTH;        // Offset:   40 Size:     4
//   float BLOOM_ADAPT_EXPOSURE;        // Offset:   44 Size:     4
//   float BLOOM_ADAPT_SPEED;           // Offset:   48 Size:     4 [unused]
//   bool BLOOM_ADAPT_MODE;             // Offset:   52 Size:     4
//   float BLOOM_TONEMAP_COMPRESSION;   // Offset:   56 Size:     4
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
// __V__MXBLOOM_BloomTex1            texture  float4          2d             t6      1 
// __V__MXBLOOM_BloomTexAdapt        texture  float4          2d            t20      1 
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t20
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
add r0.xyzw, v1.xyxy, l(-0.000781, -0.001404, 0.000781, 0.001404)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r0.xyxx, t6.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r0.zyzz, t6.xyzw, s0, l(0.000000)
add r1.xyz, r1.xyzx, r2.xyzx
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r0.zwzz, t6.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xwxx, t6.xyzw, s0, l(0.000000)
add r1.xyz, r1.xyzx, r2.xyzx
add r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, l(0.062500, 0.062500, 0.062500, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t6.xyzw, s0
mad r0.xyz, r1.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r0.xyzx
add r1.xyzw, v1.xyxy, l(0.000781, 0.000000, 0.000000, 0.001404)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t6.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t6.xyzw, s0, l(0.000000)
add r3.xyzw, v1.xyxy, l(-0.000781, 0.000000, 0.000000, -0.001404)
sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t6.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t6.xyzw, s0, l(0.000000)
add r2.xyz, r2.xyzx, r4.xyzx
add r1.xyz, r1.xyzx, r2.xyzx
add r1.xyz, r3.xyzx, r1.xyzx
mad r0.xyz, r1.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r0.xyzx
mov r1.x, cb0[0].w
mov r1.yzw, cb0[1].xxyz
dp4 r0.w, r1.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
mov r1.x, cb0[1].w
mov r1.yz, cb0[2].xxyx
dp3 r1.x, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r0.w, r0.w, r1.x
div r0.xyz, r0.xyzx, r0.wwww
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s0
add r2.xyz, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, l(0.000000, 0.000000, 0.000000, 0.000000), t20.yzwx, s0
add r0.w, r0.w, l(0.001000)
mul r0.w, r0.w, l(8.000000)
rcp r0.w, r0.w
add r0.w, r0.w, l(-1.000000)
mad r0.w, cb0[2].z, r0.w, l(1.000000)
mul r2.xyz, r0.wwww, r2.xyzx
mul r0.xyz, r0.wwww, r0.xyzx
exp r0.w, cb0[2].w
mul r2.xyz, r0.wwww, r2.xyzx
mad r0.xyz, r0.xyzx, r0.wwww, r1.xyzx
mov o0.w, r1.w
movc r0.xyz, cb0[3].yyyy, r0.xyzx, r2.xyzx
max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
log r0.xyz, r0.xyzx
mul r0.xyz, r0.xyzx, cb0[3].zzzz
exp r0.xyz, r0.xyzx
add r1.xyz, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
div r0.xyz, r0.xyzx, r1.xyzx
log r0.xyz, r0.xyzx
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), cb0[3].z
mul r0.xyz, r0.xyzx, r0.wwww
exp o0.xyz, r0.xyzx
ret 
// Approximately 55 instruction slots used
