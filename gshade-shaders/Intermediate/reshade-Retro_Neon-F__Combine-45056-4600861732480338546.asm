//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float GLOW_COLOR;                  // Offset:    0 Size:     4
//   bool USE_PING;                     // Offset:    4 Size:     4
//   float LENS_DISTORT;                // Offset:    8 Size:     4 [unused]
//   float CHROMA_SHIFT;                // Offset:   12 Size:     4 [unused]
//   float EDGES_AMT;                   // Offset:   16 Size:     4 [unused]
//   bool DEBUG_CHEAT_MASK;             // Offset:   20 Size:     4
//   bool DEBUG_LINE_MODE;              // Offset:   24 Size:     4 [unused]
//   bool DEBUG_FADE_MULT;              // Offset:   28 Size:     4
//   float FRAME_TIME;                  // Offset:   32 Size:     4 [unused]
//   int FRAME_COUNT;                   // Offset:   36 Size:     4 [unused]
//   float timer;                       // Offset:   40 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__qUINT__DepthBufferTex        texture  float4          2d             t2      1 
// __V__TempTex1                     texture  float4          2d             t6      1 
// __V__GlowTex0                     texture  float4          2d             t8      1 
// __V__GlowTex1                     texture  float4          2d            t10      1 
// __V__GlowTex2                     texture  float4          2d            t12      1 
// __V__GlowTex3                     texture  float4          2d            t14      1 
// __V__GlowTex4                     texture  float4          2d            t16      1 
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
// TEXCOORD                 2   xyz         2     NONE   float   xyz 
// TEXCOORD                 3   xyz         3     NONE   float   xyz 
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
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t16
dcl_input_ps linear v1.xy
dcl_input_ps constant v2.xyz
dcl_input_ps constant v3.xyz
dcl_output o0.xyzw
dcl_temps 3
sample_l_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t2.xyzw, s0, l(0.000000)
mad r0.y, -r0.x, l(999.000000), l(1000.000000)
div_sat r0.x, r0.x, r0.y
sample_indexable(texture2d)(float,float,float,float) r0.y, v1.xyxx, t6.yxzw, s0
mul r0.z, r0.y, l(0.630000)
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t8.yzwx, s0
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t10.xyzw, s0
mul r1.x, r1.x, l(1.080000)
mad r0.w, r0.w, l(0.070000), r1.x
sample_indexable(texture2d)(float,float,float,float) r1.xy, v1.xyxx, t12.xwyz, s0
mad r0.w, r1.x, l(0.920000), r0.w
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t14.xyzw, s0
mad r0.w, r1.x, l(0.950000), r0.w
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t16.xyzw, s0
mad r0.w, r1.x, l(0.500000), r0.w
mad r1.xzw, v1.xxyx, v3.xxyz, v2.xxyz
mad r2.x, r0.x, l(1000.000000), l(1.000000)
mul r1.xzw, r1.xxzw, r2.xxxx
dp3 r1.x, r1.xzwx, r1.xzwx
sqrt r1.x, r1.x
sqrt r1.x, r1.x
mul r1.z, cb0[2].z, l(100000.000000)
ge r1.z, r1.z, -r1.z
movc r1.zw, r1.zzzz, l(0,0,100000.000000,0.000010), l(0,0,-100000.000000,-0.000010)
mul r1.w, r1.w, cb0[2].z
frc r1.w, r1.w
mul r1.z, r1.w, r1.z
mul r1.z, r1.z, l(0.000300)
mad r1.x, r1.x, l(0.090000), -r1.z
frc r1.x, r1.x
mul r1.z, r1.x, r1.x
mul r1.z, r1.z, r1.z
mul r1.x, r1.x, r1.z
mul r1.x, r1.x, l(0.800000)
mad r0.x, -r0.x, l(50.000000), l(1.000000)
max r0.x, r0.x, l(0.000000)
movc r0.x, cb0[1].w, r0.x, l(1.000000)
mul r0.x, r0.x, r1.x
movc r0.x, cb0[0].y, r0.x, l(0)
mad r0.y, r0.y, l(0.630000), r0.w
add r0.x, r0.x, r0.y
mad r1.xzw, cb0[0].xxxx, l(6.000000, 0.000000, 6.000000, 6.000000), l(-3.000000, 0.000000, -2.000000, -4.000000)
mad_sat r1.xzw, |r1.xxzw|, l(1.000000, 0.000000, -1.000000, -1.000000), l(-1.000000, 0.000000, 2.000000, 2.000000)
mad r0.xyz, r0.xxxx, r1.xzwx, r0.zzzz
if_nz cb0[1].y
  add r0.w, r1.y, r1.y
  mul r0.xyz, r0.wwww, r0.xyzx
endif 
mov o0.xyz, r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 51 instruction slots used
