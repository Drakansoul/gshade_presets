//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float3 Color;                      // Offset:    0 Size:    12
//   bool Debug;                        // Offset:   12 Size:     4
//   bool CustomFarPlane;               // Offset:   16 Size:     4
//   float FarPlane;                    // Offset:   20 Size:     4
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
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
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
// SV_TARGET                0   xyz         0   TARGET   float   xyz 
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 5
add r0.xyzw, v1.xyxy, l(-0.000000, -0.000468, 0.000260, 0.000000)
or r1.x, cb0[0].w, cb0[1].x
if_nz r1.x
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, v1.xyxx, t2.yxzw, s0, l(0.000000)
  add r1.z, cb0[1].y, l(-1.000000)
  mad r1.z, -r1.y, r1.z, cb0[1].y
  div r1.y, r1.y, r1.z
else 
  sample_l_indexable(texture2d)(float,float,float,float) r1.z, v1.xyxx, t2.yzxw, s0, l(0.000000)
  mad r1.w, -r1.z, l(999.000000), l(1000.000000)
  div r1.y, r1.z, r1.w
endif 
add r2.xz, v1.yyxy, l(-0.500000, 0.000000, -0.500000, 0.000000)
mov r2.y, l(1.000000)
mul r1.yzw, r1.yyyy, r2.xxyz
if_nz r1.x
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r0.xyxx, t2.xyzw, s0, l(0.000000)
  add r2.y, cb0[1].y, l(-1.000000)
  mad r2.y, -r2.x, r2.y, cb0[1].y
  div r2.x, r2.x, r2.y
else 
  sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t2.xyzw, s0, l(0.000000)
  mad r0.y, -r0.x, l(999.000000), l(1000.000000)
  div r2.x, r0.x, r0.y
endif 
add r3.yz, v1.xxyx, l(0.000000, -0.500000, -0.500468, 0.000000)
mov r3.x, l(1.000000)
if_nz r1.x
  sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.zwzz, t2.xyzw, s0, l(0.000000)
  add r0.y, cb0[1].y, l(-1.000000)
  mad r0.y, -r0.x, r0.y, cb0[1].y
  div r0.x, r0.x, r0.y
else 
  sample_l_indexable(texture2d)(float,float,float,float) r0.y, r0.zwzz, t2.yxzw, s0, l(0.000000)
  mad r0.z, -r0.y, l(999.000000), l(1000.000000)
  div r0.x, r0.y, r0.z
endif 
add r4.xz, v1.yyxy, l(-0.500000, 0.000000, -0.499740, 0.000000)
mov r4.y, l(1.000000)
mad r0.yzw, -r3.xxyz, r2.xxxx, r1.zzwy
mad r1.xyz, -r4.xyzx, r0.xxxx, r1.yzwy
mul r2.xyz, r0.yzwy, r1.xyzx
mad r0.xyz, r0.wyzw, r1.yzxy, -r2.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
mad r0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)
if_nz cb0[0].w
  mov o0.xyz, r0.xyzx
else 
  mul r1.xyz, r0.zxyz, l(0.500000, 1.000000, 0.500000, 0.000000)
  mad r0.xyz, r0.yzxy, l(1.000000, 0.500000, 0.500000, 0.000000), -r1.xyzx
  max r0.x, r0.y, r0.x
  max r0.x, r0.z, r0.x
  sample_indexable(texture2d)(float,float,float,float) r0.yzw, v1.xyxx, t0.wxyz, s0
  min r1.x, r0.x, l(0.500000)
  max r0.x, r0.x, l(0.500000)
  add r1.y, r0.x, r0.x
  mad r1.x, r1.x, r1.x, r1.y
  mad r0.x, -r0.x, r0.x, r1.x
  mad r0.x, r0.x, l(2.000000), l(-1.500000)
  mad o0.xyz, cb0[0].xyzx, r0.xxxx, r0.yzwy
endif 
ret 
// Approximately 64 instruction slots used