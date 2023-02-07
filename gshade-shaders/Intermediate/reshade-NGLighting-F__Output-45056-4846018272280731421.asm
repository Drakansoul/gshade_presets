//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int Hints;                         // Offset:    0 Size:     4 [unused]
//   int GI;                            // Offset:    4 Size:     4
//   int UI_QUALITY_PRESET;             // Offset:    8 Size:     4 [unused]
//   float BUMP;                        // Offset:   12 Size:     4 [unused]
//   float roughness;                   // Offset:   16 Size:     4 [unused]
//   float EXP;                         // Offset:   20 Size:     4
//   float AO_Intensity;                // Offset:   24 Size:     4
//   float depthfade;                   // Offset:   28 Size:     4 [unused]
//   bool LinearConvert;                // Offset:   32 Size:     4
//   float2 SatExp;                     // Offset:   36 Size:     8
//   uint debug;                        // Offset:   44 Size:     4
//   int Credits;                       // Offset:   48 Size:     4 [unused]
//   int Preprocessordefinitionstooltip;// Offset:   52 Size:     4 [unused]
//   float Timer;                       // Offset:   56 Size:     4 [unused]
//   float Frame;                       // Offset:   60 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
// __V__TexColor                     texture  float4          2d             t4      1 
// __V__SSSR_FilterTex3              texture  float4          2d            t22      1 
// __V__SSSR_NormTex                 texture  float4          2d            t26      1 
// __V__SSSR_HLTex1                  texture  float4          2d            t36      1 
// __V__SSSR_RoughTex                texture  float4          2d            t38      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t26
dcl_resource_texture2d (float,float,float,float) t36
dcl_resource_texture2d (float,float,float,float) t38
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t4.xyzw, s0
sample_l_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t2.yzwx, s0, l(0.000000)
mad r1.x, -r0.w, l(999.000000), l(1000.000000)
div r0.w, r0.w, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t38.xyzw, s0
ieq r1.yz, cb0[2].wwww, l(0, 1, 0, 0)
movc r0.xyz, r1.yyyy, l(0.500000,0.500000,0.500000,0), r0.xyzx
or r1.y, r1.y, r1.z
if_nz r1.y
  if_nz cb0[0].y
    sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t22.wxyz, s0
    max r1.y, r2.z, r2.y
    max r1.y, r2.w, r1.y
    add r1.y, r1.y, l(1.000010)
    div r1.yzw, r2.yyzw, r1.yyyy
    log r2.yzw, r1.yyzw
    mul r2.yzw, r2.yyzw, l(0.000000, 2.200000, 2.200000, 2.200000)
    exp r2.yzw, r2.yyzw
    movc r1.yzw, cb0[2].xxxx, r2.yyzw, r1.yyzw
    add r2.yzw, -r1.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
    max r2.yzw, r2.yyzw, l(0.000000, 0.001000, 0.001000, 0.001000)
    div r1.yzw, r1.yyzw, r2.yyzw
    add r2.yzw, -r0.xxyz, l(0.000000, 1.000000, 1.000000, 1.000000)
    max r2.yzw, r2.yyzw, l(0.000000, 0.001000, 0.001000, 0.001000)
    div r2.yzw, r0.xxyz, r2.yyzw
    mul_sat r3.x, r2.x, l(4.000000)
    mov_sat r2.x, r2.x
    log r4.x, r2.x
    log r4.y, r3.x
    mul r3.xy, r4.xyxx, cb0[1].zzzz
    exp r3.xy, r3.xyxx
    min r3.xy, r3.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
    mul r3.zw, r1.yyyz, cb0[2].zzzz
    add r2.x, r3.w, r3.z
    mad r2.x, r1.w, cb0[2].z, r2.x
    mul r2.x, r2.x, l(0.333333)
    mad r1.yzw, r1.yyzw, cb0[2].zzzz, -r2.xxxx
    mad r1.yzw, cb0[2].yyyy, r1.yyzw, r2.xxxx
    mul r1.yzw, r3.yyyy, r1.yyzw
    mul r1.yzw, r0.xxyz, r1.yyzw
    mad r1.yzw, r2.yyzw, r3.xxxx, r1.yyzw
    add r2.xyz, r1.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
    div r1.yzw, r1.yyzw, r2.xxyz
  else 
    sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t22.xyzw, s0
    max r3.x, r2.y, r2.x
    max r3.x, r2.z, r3.x
    add r3.x, r3.x, l(1.000010)
    div r2.xyz, r2.xyzx, r3.xxxx
    log r3.xyz, r2.xyzx
    mul r3.xyz, r3.xyzx, l(2.200000, 2.200000, 2.200000, 0.000000)
    exp r3.xyz, r3.xyzx
    movc r2.xyz, cb0[2].xxxx, r3.xyzx, r2.xyzx
    add r3.xyz, -r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    max r3.xyz, r3.xyzx, l(0.001000, 0.001000, 0.001000, 0.000000)
    div r2.xyz, r2.xyzx, r3.xyzx
    sample_indexable(texture2d)(float,float,float,float) r3.xyz, v1.xyxx, t26.xyzw, s0
    mad r4.xy, v1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
    mul r5.z, r0.w, l(1000.000000)
    mul r4.xy, r4.xyxx, r5.zzzz
    mul r5.xy, r4.xyxx, l(0.872665, 0.872665, 0.000000, 0.000000)
    dp3 r3.w, r5.xyzx, r5.xyzx
    rsq r3.w, r3.w
    mul r4.xyz, r3.wwww, r5.xyzx
    dp3 r3.x, r3.xyzx, r4.xyzx
    add r3.x, -r3.x, l(1.000000)
    mad r3.y, r1.x, -cb0[1].y, cb0[1].y
    log r3.x, |r3.x|
    mul r3.x, r3.x, r3.y
    exp r3.x, r3.x
    mad r3.x, r3.x, l(0.950000), l(0.050000)
    mul r2.w, r2.w, r3.x
    mul r3.xy, r2.xyxx, cb0[2].zzzz
    add r3.x, r3.y, r3.x
    mad r3.x, r2.z, cb0[2].z, r3.x
    mul r3.x, r3.x, l(0.333333)
    mad r2.xyz, r2.xyzx, cb0[2].zzzz, -r3.xxxx
    mad r2.xyz, cb0[2].yyyy, r2.xyzx, r3.xxxx
    add r3.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    max r3.xyz, r3.xyzx, l(0.001000, 0.001000, 0.001000, 0.000000)
    div r3.xyz, r0.xyzx, r3.xyzx
    add r2.xyz, r2.xyzx, -r3.xyzx
    mad r2.xyz, r2.wwww, r2.xyzx, r3.xyzx
    add r3.xyz, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    div r1.yzw, r2.xxyz, r3.xxyz
  endif 
  movc r2.x, cb0[2].x, l(1.000022), l(1.000010)
  mul r1.yzw, r1.yyzw, r2.xxxx
else 
  ieq r2.x, cb0[2].w, l(2)
  if_nz r2.x
    sqrt r1.yzw, r0.wwww
  else 
    ieq r2.x, cb0[2].w, l(3)
    if_nz r2.x
      sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t26.xyzw, s0
      mad r1.yzw, r2.xxyz, l(0.000000, 0.500000, 0.500000, 0.500000), l(0.000000, 0.500000, 0.500000, 0.500000)
    else 
      ieq r2.x, cb0[2].w, l(4)
      if_nz r2.x
        sample_indexable(texture2d)(float,float,float,float) r2.x, v1.xyxx, t36.xyzw, s0
        mul r1.yzw, r2.xxxx, l(0.000000, 0.015625, 0.015625, 0.015625)
      else 
        ieq r2.x, cb0[2].w, l(5)
        and r1.yzw, r1.xxxx, r2.xxxx
      endif 
    endif 
  endif 
endif 
ge r0.w, l(0.000100), r0.w
movc o0.xyz, r0.wwww, r0.xyzx, r1.yzwy
ret 
// Approximately 112 instruction slots used