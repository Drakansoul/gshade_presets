//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int MXAO_GLOBAL_SAMPLE_QUALITY_PRESET;// Offset:    0 Size:     4 [unused]
//   float MXAO_SAMPLE_RADIUS;          // Offset:    4 Size:     4
//   float MXAO_SAMPLE_NORMAL_BIAS;     // Offset:    8 Size:     4
//   float MXAO_GLOBAL_RENDER_SCALE;    // Offset:   12 Size:     4 [unused]
//   float MXAO_SSAO_AMOUNT;            // Offset:   16 Size:     4 [unused]
//   float MXAO_SAMPLE_RADIUS_SECONDARY;// Offset:   20 Size:     4 [unused]
//   float MXAO_AMOUNT_FINE;            // Offset:   24 Size:     4 [unused]
//   float MXAO_AMOUNT_COARSE;          // Offset:   28 Size:     4 [unused]
//   float MXAO_GAMMA;                  // Offset:   32 Size:     4 [unused]
//   int MXAO_DEBUG_VIEW_ENABLE;        // Offset:   36 Size:     4 [unused]
//   int MXAO_BLEND_TYPE;               // Offset:   40 Size:     4 [unused]
//   float MXAO_FADE_DEPTH_START;       // Offset:   44 Size:     4 [unused]
//   float MXAO_FADE_DEPTH_END;         // Offset:   48 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__MXAO_DepthTex                texture  float4          2d             t6      1 
// __V__MXAO_NormalTex               texture  float4          2d             t8      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 1     zw        1     NONE   float       
// TEXCOORD                 2   x           2     NONE   float   x   
// TEXCOORD                 4    yzw        2     NONE   float    yzw
// TEXCOORD                 5   xyz         3     NONE   float   xyz 
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
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t8
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyz
dcl_output o0.xyzw
dcl_temps 7
max r0.x, v2.x, l(8.000000)
min r0.x, r0.x, l(32.000000)
mad r0.yzw, v1.xxyx, v3.xxyz, v2.yyzw
sample_l_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t6.xyzw, s0, l(0.000000)
mul r0.yzw, r0.yyzw, r1.xxxx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t8.xyzw, s0
mad r1.xyz, r1.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
mul r2.xyz, r0.wwww, r1.xyzx
mad r0.yzw, r2.xxyz, l(0.000000, 0.001000, 0.001000, 0.001000), r0.yyzw
mul r2.xy, cb0[0].yzyy, l(0.250000, 0.500000, 0.000000, 0.000000)
add r1.w, r0.w, l(2.000000)
mul r1.w, r0.x, r1.w
div r1.w, r2.x, r1.w
mul r2.x, cb0[0].y, cb0[0].y
div r2.x, l(-1.000000), r2.x
mul r3.xyzw, v0.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000)
ge r3.xyzw, r3.xyzw, -r3.zwzw
movc r3.xyzw, r3.xyzw, l(4.000000,4.000000,0.250000,0.250000), l(-4.000000,-4.000000,-0.250000,-0.250000)
mul r2.zw, r3.zzzw, v0.xxxy
frc r2.zw, r2.zzzw
mad r2.zw, r3.xxxy, r2.zzzw, l(0.000000, 0.000000, 0.100000, 0.100000)
round_ni r2.zw, r2.zzzw
dp2 r2.z, r2.zwzz, l(1.000000, 4.000000, 0.000000, 0.000000)
add r2.z, r2.z, l(1.000000)
mul r2.w, r2.z, l(2.399963)
sincos r3.x, r4.x, r2.w
mov r3.y, r4.x
mul r3.xy, r1.wwww, r3.xyxx
mov r3.zw, r3.xxxy
mov r2.w, l(0)
mov r4.xy, l(0,-1,0,0)
loop 
  breakc_z r4.y
  mul r4.zw, r3.zzzw, l(0.000000, 0.000000, 1.000000, 1.796911)
  itof r5.x, r4.x
  mad r5.y, r2.z, l(0.062500), r5.x
  mad r4.zw, r4.zzzw, r5.yyyy, v1.xxxy
  dp2 r6.x, r3.zwzz, l(0.764650, 0.644440, 0.000000, 0.000000)
  dp2 r6.y, r3.zwzz, l(-0.644440, 0.764650, 0.000000, 0.000000)
  mul r5.x, r1.w, r5.x
  mul_sat r5.x, r5.x, l(20.000000)
  mul r5.x, r5.x, l(3.000000)
  mad r5.yzw, r4.zzwz, v3.xxyz, v2.yyzw
  round_z r5.x, r5.x
  sample_l_indexable(texture2d)(float,float,float,float) r4.z, r4.zwzz, t6.yzxw, s0, r5.x
  mad r5.xyz, r5.yzwy, r4.zzzz, -r0.yzwy
  dp3 r4.z, r5.xyzx, r5.xyzx
  dp3 r4.w, r5.xyzx, r1.xyzx
  rsq r5.x, r4.z
  mad r4.z, r2.x, r4.z, l(1.000000)
  max r4.z, r4.z, l(0.000000)
  mad_sat r4.w, r4.w, r5.x, -r2.y
  mad r2.w, r4.z, r4.w, r2.w
  iadd r4.x, r4.x, l(1)
  itof r4.z, r4.x
  lt r4.y, r4.z, r0.x
  mov r3.zw, r6.xxxy
endloop 
mov o0.xyzw, r2.wwww
ret 
// Approximately 60 instruction slots used
