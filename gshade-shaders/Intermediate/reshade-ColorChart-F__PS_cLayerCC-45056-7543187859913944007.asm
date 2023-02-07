//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int cLayerCC_Mode;                 // Offset:    0 Size:     4
//   float cLayerCC_Scale;              // Offset:    4 Size:     4
//   float cLayerCC_PosX;               // Offset:    8 Size:     4
//   float cLayerCC_PosY;               // Offset:   12 Size:     4
//   float Color_Chart_Brightness;      // Offset:   16 Size:     4
//   float Color_Chart_Saturation;      // Offset:   20 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ReShade__BackBufferTex       texture  float4          2d             t0      1 
// __V__Color_Chart_Texture          texture  float4          2d             t4      1 
// __V__Color_Chart_BG_S_Texture     texture  float4          2d             t6      1 
// __V__Gray_Chart_Texture           texture  float4          2d             t8      1 
// __V__Color_Chart_BG_Texture       texture  float4          2d            t10      1 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t10
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
mul r0.x, cb0[0].y, cb0[0].y
mul r0.xy, r0.xxxx, l(0.156250, 0.187178, 0.000000, 0.000000)
div r0.xy, l(1.000000, 1.000000, 1.000000, 1.000000), r0.xyxx
mov r1.xz, v1.xxyx
mov r1.yw, -cb0[0].zzzw
dp2 r0.z, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
dp2 r0.w, r1.zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r1.xy, r0.xyxx, r0.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0
add r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t4.xyzw, s0
mov_sat r1.zw, r1.xxxy
eq r1.zw, r1.zzzw, r1.xxxy
and r1.z, r1.w, r1.z
and r1.z, r1.z, l(0x3f800000)
mul r3.xyzw, r1.zzzz, r2.xyzw
ne r4.xy, cb0[1].xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
mad r2.xyz, -r2.xyzx, r1.zzzz, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.xyz, -r2.xyzx, r2.xyzx, -r3.xyzx
lt r1.w, cb0[1].x, l(0.000000)
mul r2.w, cb0[1].x, l(0.500000)
movc r1.w, r1.w, r2.w, cb0[1].x
add r2.xyz, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad_sat r2.xyz, r1.wwww, r2.xyzx, r3.xyzx
movc r2.xyz, r4.xxxx, r2.xyzx, r3.xyzx
dp3 r1.w, r2.xyzx, l(0.212656, 0.715158, 0.072186, 0.000000)
add r2.w, cb0[1].y, l(1.000000)
add r3.xyz, -r1.wwww, r2.xyzx
mad_sat r3.xyz, r2.wwww, r3.xyzx, r1.wwww
movc r2.xyz, r4.yyyy, r3.xyzx, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r1.xyxx, t10.xyzw, s0
mul r1.w, r1.z, r4.w
switch cb0[0].x
  case l(1)
  mad r4.xyz, r4.xyzx, r1.zzzz, -r0.xyzx
  mad r4.xyz, r1.wwww, r4.xyzx, r0.xyzx
  add r5.xyz, r2.xyzx, -r4.xyzx
  mad r4.xyz, r3.wwww, r5.xyzx, r4.xyzx
  sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r1.xyxx, t8.xyzw, s0
  mul r2.w, r1.z, r5.w
  mad r5.xyz, r5.xyzx, r1.zzzz, -r4.xyzx
  mad r3.xyz, r2.wwww, r5.xyzx, r4.xyzx
  break 
  case l(2)
  add r4.xyz, -r0.xyzx, r2.xyzx
  mad r3.xyz, r3.wwww, r4.xyzx, r0.xyzx
  break 
  default 
  sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t6.xyzw, s0
  mul r1.y, r1.z, r1.x
  mad r4.xyz, r1.xxxx, r1.zzzz, -r0.xyzx
  mad r1.xyz, r1.yyyy, r4.xyzx, r0.xyzx
  add r2.xyz, -r1.xyzx, r2.xyzx
  mad r3.xyz, r3.wwww, r2.xyzx, r1.xyzx
  break 
endswitch 
add r1.xyz, -r0.xyzx, r3.xyzx
mad o0.xyz, r1.wwww, r1.xyzx, r0.xyzx
mov o0.w, r0.w
ret 
// Approximately 60 instruction slots used
