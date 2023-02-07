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
//   int UI_QUALITY_PRESET;             // Offset:    8 Size:     4
//   float BUMP;                        // Offset:   12 Size:     4 [unused]
//   float roughness;                   // Offset:   16 Size:     4 [unused]
//   float EXP;                         // Offset:   20 Size:     4 [unused]
//   float AO_Intensity;                // Offset:   24 Size:     4 [unused]
//   float depthfade;                   // Offset:   28 Size:     4
//   bool LinearConvert;                // Offset:   32 Size:     4
//   float2 SatExp;                     // Offset:   36 Size:     8 [unused]
//   uint debug;                        // Offset:   44 Size:     4 [unused]
//   int Credits;                       // Offset:   48 Size:     4 [unused]
//   int Preprocessordefinitionstooltip;// Offset:   52 Size:     4 [unused]
//   float Timer;                       // Offset:   56 Size:     4 [unused]
//   float Frame;                       // Offset:   60 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s2                              sampler      NA          NA             s2      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
// __V__TexColor                     texture  float4          2d             t4      1 
// __V__SSSR_NormTex                 texture  float4          2d            t26      1 
// __V__SSSR_LowResDepthTex          texture  float4          2d            t30      1 
// __V__SSSR_HLTex0                  texture  float4          2d            t34      1 
// __V__SSSR_RoughTex                texture  float4          2d            t38      1 
// __V__SSSR_BlueNoise               texture  float4          2d            t40      1 
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
// SV_TARGET                1   x           1   TARGET   float   x   
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 2.000000, 17, 0, 0},
                              { 1.140000, 65, 0, 0},
                              { 1.045000, 161, 0, 0},
                              { 1.020000, 321, 0, 0},
                              { 1.012000, 501, 0, 0} }
dcl_constantbuffer CB0[4], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t26
dcl_resource_texture2d (float,float,float,float) t30
dcl_resource_texture2d (float,float,float,float) t34
dcl_resource_texture2d (float,float,float,float) t38
dcl_resource_texture2d (float,float,float,float) t40
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_output o1.x
dcl_temps 9
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t26.xyzw, s0
lt r1.x, l(0.990000), r0.w
if_nz r1.x
  movc o0.w, cb0[0].y, l(1.000000), l(0)
  mov o0.xyz, l(0,0,0,0)
  mov o1.x, l(0)
else 
  sample_l_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t38.xyzw, s0, l(0.000000)
  movc r1.x, cb0[0].y, l(1.000000), r1.x
  sample_indexable(texture2d)(float,float,float,float) r1.y, v1.xyxx, t34.yxzw, s0
  max r1.y, r1.y, l(1.000000)
  movc r1.z, cb0[0].y, l(64.000000), r1.y
  mul r2.xyzw, v1.xyxy, l(3840.000000, 2137.000000, 491520.000000, 273536.000000)
  ge r3.xyzw, r2.zwzw, -r2.zwzw
  movc r3.xyzw, r3.xyzw, l(128.000000,128.000000,0.007812,0.007812), l(-128.000000,-128.000000,-0.007812,-0.007812)
  mul r2.zw, r2.xxxy, r3.zzzw
  frc r2.zw, r2.zzzw
  mul r1.w, r1.z, cb0[3].w
  ge r1.w, r1.w, -r1.w
  movc r1.z, r1.w, r1.z, -r1.z
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.z
  mul r1.w, r1.w, cb0[3].w
  frc r1.w, r1.w
  mul r1.z, r1.w, r1.z
  mul r3.zw, r1.zzzz, l(0.000000, 0.000000, 8.000000, 0.125000)
  ge r1.w, r3.z, -r3.z
  movc r4.xy, r1.wwww, l(8.000000,0.125000,0,0), l(-8.000000,-0.125000,0,0)
  mul r1.z, r1.z, r4.y
  frc r1.z, r1.z
  mul r1.z, r1.z, r4.x
  ftoi r4.x, r1.z
  round_ni r1.z, r3.w
  mul r1.w, r1.z, l(8.000000)
  ge r1.w, r1.w, -r1.w
  movc r3.zw, r1.wwww, l(0,0,8.000000,0.125000), l(0,0,-8.000000,-0.125000)
  mul r1.z, r1.z, r3.w
  frc r1.z, r1.z
  mul r1.z, r1.z, r3.z
  ftoi r4.y, r1.z
  ishl r1.zw, r4.xxxy, l(0, 0, 7, 7)
  itof r1.zw, r1.zzzw
  mad r1.zw, r3.xxxy, r2.zzzw, r1.zzzw
  mul r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.000977, 0.000977)
  sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.zwzz, t40.xyzw, s2
  mul r1.z, cb0[3].w, l(64.000000)
  ge r1.z, r1.z, -r1.z
  movc r1.zw, r1.zzzz, l(0,0,64.000000,0.015625), l(0,0,-64.000000,-0.015625)
  mul r1.w, r1.w, cb0[3].w
  frc r1.w, r1.w
  mul r1.z, r1.w, r1.z
  mad r1.zw, r1.zzzz, l(0.000000, 0.000000, 5.588238, 5.588238), r2.xxxy
  dp2 r1.z, r1.zwzz, l(0.067111, 0.005837, 0.000000, 0.000000)
  frc r1.z, r1.z
  mul r1.z, r1.z, l(52.982918)
  frc r1.z, r1.z
  mul r1.w, r1.y, cb0[3].w
  ge r1.w, r1.w, -r1.w
  movc r1.w, r1.w, r1.y, -r1.y
  div r2.x, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
  mul r2.x, r2.x, cb0[3].w
  frc r2.x, r2.x
  mul r1.w, r1.w, r2.x
  mad r2.xyzw, r1.wwww, l(0.008309, 0.008309, 0.008309, 0.008309), v1.xyxy
  dp2 r1.w, r2.zwzz, l(1.000000, 73.000000, 0.000000, 0.000000)
  sincos r1.w, null, r1.w
  mul r1.w, r1.w, l(437580.531250)
  frc r4.x, r1.w
  add r2.xyzw, r2.xyzw, l(0.643217, 0.643217, 0.192168, 0.192168)
  dp2 r1.w, r2.xyxx, l(1.000000, 73.000000, 0.000000, 0.000000)
  sincos r1.w, null, r1.w
  mul r1.w, r1.w, l(437580.531250)
  frc r4.y, r1.w
  dp2 r1.w, r2.zwzz, l(1.000000, 73.000000, 0.000000, 0.000000)
  sincos r1.w, null, r1.w
  mul r1.w, r1.w, l(437580.531250)
  frc r4.z, r1.w
  lt r1.y, l(64.000000), r1.y
  movc r2.xyz, r1.yyyy, r4.xyzx, r3.xyzx
  mad r1.yw, v1.xxxy, l(0.000000, 2.000000, 0.000000, 2.000000), l(0.000000, -1.000000, 0.000000, -1.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, v1.xyxx, t2.yzwx, s0, l(0.000000)
  mad r3.x, -r2.w, l(999.000000), l(1000.000000)
  div r2.w, r2.w, r3.x
  mul r3.zw, r2.wwww, l(0.000000, 0.000000, 1000.000000, -1.000000)
  mul r1.yw, r1.yyyw, r3.zzzz
  mul r3.xy, r1.ywyy, l(0.872665, 0.872665, 0.000000, 0.000000)
  dp3 r1.y, r3.xyzx, r3.xyzx
  rsq r1.y, r1.y
  mul r4.xyz, r1.yyyy, r3.xyzx
  dp3 r1.y, r4.xyzx, r0.xyzx
  add r1.y, r1.y, r1.y
  mad r0.xyz, r0.xyzx, -r1.yyyy, r4.xyzx
  mad r2.xyz, r2.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
  dp3 r1.y, r2.xyzx, r2.xyzx
  rsq r1.y, r1.y
  mul r2.xyz, r1.yyyy, r2.xyzx
  add r4.xyzw, v1.xyxy, l(0.000000, 0.000468, -0.000000, -0.000468)
  mad r5.xyzw, r4.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, r4.xyxx, t2.yxzw, s0, l(0.000000)
  mad r1.w, -r1.y, l(999.000000), l(1000.000000)
  div r1.y, r1.y, r1.w
  mul r6.zw, r1.yyyy, l(0.000000, 0.000000, 1000.000000, 2000.000000)
  mul r1.yw, r5.xxxy, r6.zzzz
  mul r6.xy, r1.ywyy, l(0.872665, 0.872665, 0.000000, 0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, r4.zwzz, t2.yxzw, s0, l(0.000000)
  mad r1.w, -r1.y, l(999.000000), l(1000.000000)
  div r1.y, r1.y, r1.w
  mul r4.zw, r1.yyyy, l(0.000000, 0.000000, 1000.000000, 2000.000000)
  mul r1.yw, r4.zzzz, r5.zzzw
  mul r4.xy, r1.ywyy, l(0.872665, 0.872665, 0.000000, 0.000000)
  add r5.xyzw, v1.xyxy, l(0.000260, 0.000000, -0.000260, -0.000000)
  mad r7.xyzw, r5.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, r5.xyxx, t2.yxzw, s0, l(0.000000)
  mad r1.w, -r1.y, l(999.000000), l(1000.000000)
  div r1.y, r1.y, r1.w
  mul r8.zw, r1.yyyy, l(0.000000, 0.000000, 1000.000000, 2000.000000)
  mul r1.yw, r7.xxxy, r8.zzzz
  mul r8.xy, r1.ywyy, l(0.872665, 0.872665, 0.000000, 0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, r5.zwzz, t2.yxzw, s0, l(0.000000)
  mad r1.w, -r1.y, l(999.000000), l(1000.000000)
  div r1.y, r1.y, r1.w
  mul r5.zw, r1.yyyy, l(0.000000, 0.000000, 1000.000000, 2000.000000)
  mul r1.yw, r5.zzzz, r7.zzzw
  mul r5.xy, r1.ywyy, l(0.872665, 0.872665, 0.000000, 0.000000)
  add r7.xyzw, v1.xyxy, l(0.000000, 0.000936, -0.000000, -0.000936)
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, r7.xyxx, t2.yxzw, s0, l(0.000000)
  mad r1.w, -r1.y, l(999.000000), l(1000.000000)
  div r1.y, r1.y, r1.w
  sample_l_indexable(texture2d)(float,float,float,float) r1.w, r7.zwzz, t2.yzwx, s0, l(0.000000)
  mad r7.x, -r1.w, l(999.000000), l(1000.000000)
  div r1.w, r1.w, r7.x
  add r7.xyzw, v1.xyxy, l(0.000521, 0.000000, -0.000521, -0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r7.x, r7.xyxx, t2.xyzw, s0, l(0.000000)
  mad r7.y, -r7.x, l(999.000000), l(1000.000000)
  div r7.x, r7.x, r7.y
  sample_l_indexable(texture2d)(float,float,float,float) r7.y, r7.zwzz, t2.yxzw, s0, l(0.000000)
  mad r7.z, -r7.y, l(999.000000), l(1000.000000)
  div r7.y, r7.y, r7.z
  mad r1.y, -r1.y, l(1000.000000), r6.w
  mad r1.w, -r1.w, l(1000.000000), r4.w
  mad r4.w, -r7.x, l(1000.000000), r8.w
  mad r5.w, -r7.y, l(1000.000000), r5.w
  add r6.xyz, -r3.zxyz, r6.zxyz
  add r5.xyz, -r3.yzxy, r5.yzxy
  mad r1.w, -r2.w, l(1000.000000), r1.w
  mad r1.y, -r2.w, l(1000.000000), r1.y
  lt r1.y, |r1.w|, |r1.y|
  add r4.xyz, r3.zxyz, -r4.zxyz
  movc r4.xyz, r1.yyyy, r4.xyzx, r6.xyzx
  mad r1.y, -r2.w, l(1000.000000), r4.w
  mad r1.w, -r2.w, l(1000.000000), r5.w
  lt r1.y, |r1.y|, |r1.w|
  add r6.xyz, r3.yzxy, -r8.yzxy
  movc r5.xyz, r1.yyyy, r6.xyzx, r5.xyzx
  mul r6.xyz, r4.xyzx, r5.xyzx
  mad r4.xyz, r4.zxyz, r5.yzxy, -r6.xyzx
  dp3 r1.y, r4.xyzx, r4.xyzx
  rsq r1.y, r1.y
  mul r4.xyz, r1.yyyy, r4.xyzx
  dp3 r1.y, r2.xyzx, r4.xyzx
  lt r1.y, l(0.000000), r1.y
  movc r2.xyz, r1.yyyy, -r2.xyzx, r2.xyzx
  dp3 r1.y, r0.xyzx, r2.xyzx
  mul r1.y, r1.y, l(3.141593)
  sincos null, r1.y, r1.y
  mad r1.y, r1.y, l(0.500000), l(0.500000)
  add r1.yw, -r1.yyyx, l(0.000000, 1.000000, 0.000000, 1.001000)
  div r1.x, r1.x, r1.w
  rsq r1.x, r1.x
  log r1.y, r1.y
  mul r1.x, r1.y, r1.x
  exp r1.x, r1.x
  add r4.xyz, -r0.xyzx, r2.xyzx
  mad r0.xyz, r1.xxxx, r4.xyzx, r0.xyzx
  movc r0.xyz, cb0[0].yyyy, r2.xyzx, r0.xyzx
  add r1.x, r1.z, l(1.000000)
  mul r1.x, r3.z, r1.x
  mul r1.x, r1.x, l(0.010000)
  mad r1.yzw, r0.xxyz, r1.xxxx, r3.xxyz
  mov r2.w, l(0)
  mov r2.xyz, r1.yzwy
  mov r4.z, r1.x
  mov r4.xyw, l(0,0,0,0)
  mov r5.x, l(-1)
  loop 
    breakc_z r5.x
    mul r5.yz, r2.xxyx, l(0.000000, 1.145916, 1.145916, 0.000000)
    div r5.yz, r5.yyzy, r2.zzzz
    mad r5.yz, r5.yyzy, l(0.000000, 0.500000, 0.500000, 0.000000), l(0.000000, 0.500000, 0.500000, 0.000000)
    sample_l_indexable(texture2d)(float,float,float,float) r5.w, r5.yzyy, t30.yzwx, s0, l(0.000000)
    add r5.w, -r2.z, r5.w
    lt r6.x, r5.w, r3.w
    max r6.y, r4.z, l(1.000000)
    mul r6.y, r6.y, l(-5.000000)
    lt r5.w, r6.y, r5.w
    and r5.w, r5.w, r6.x
    if_nz r5.w
      mov r4.xy, r5.yzyy
      mov r2.w, l(1.000000)
      break 
    endif 
    mad r2.xyz, r0.xyzx, r4.zzzz, r2.xyzx
    mov r5.w, cb0[0].z
    mul r4.z, r4.z, icb[r5.w + 0].x
    iadd r4.w, r4.w, l(1)
    mov r5.w, cb0[0].z
    ult r5.x, r4.w, icb[r5.w + 0].y
    mov r4.xy, r5.yzyy
    mov r2.w, l(0)
  endloop 
  ge r0.x, r4.x, l(1.000000)
  ge r0.y, l(0.000000), r4.y
  or r0.x, r0.y, r0.x
  if_nz r0.x
    mov r0.xyz, l(0,0,0,0)
  else 
    sample_indexable(texture2d)(float,float,float,float) r1.xyz, r4.xyxx, t4.xyzw, s0
    mul r0.xyz, r2.wwww, r1.xyzx
  endif 
  add r1.xyz, -r3.xyzx, r2.xyzx
  dp3 r1.x, r1.xyzx, r1.xyzx
  sqrt r1.x, r1.x
  ne r1.y, l(0.000000, 0.000000, 0.000000, 0.000000), r2.w
  movc r1.x, r1.y, r1.x, l(1000.000000)
  max r1.yzw, r0.xxyz, l(0.000000, 0.000000, 0.000000, 0.000000)
  log r1.yzw, r1.yyzw
  mul r1.yzw, r1.yyzw, l(0.000000, 0.454545, 0.454545, 0.454545)
  exp r1.yzw, r1.yyzw
  movc r0.xyz, cb0[2].xxxx, r1.yzwy, r0.xyzx
  max r1.y, r0.y, r0.x
  max r1.y, r0.z, r1.y
  add r1.y, -r1.y, l(1.000010)
  div r0.xyz, r0.xyzx, r1.yyyy
  add r1.y, r0.y, r0.x
  add r1.y, r0.z, r1.y
  mul r1.z, r1.y, l(0.333333)
  div r0.xyz, r0.xyzx, r1.zzzz
  lt r1.y, l(300.000000), r1.y
  movc r1.y, r1.y, l(100.000000), r1.z
  mul r0.xyz, r0.xyzx, r1.yyyy
  max r3.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  add r0.x, -cb0[1].w, l(1.001000)
  div r0.x, cb0[1].w, r0.x
  log r0.y, r0.w
  mul r0.x, r0.y, r0.x
  exp r0.x, r0.x
  add r0.x, -r0.x, l(1.000000)
  mul r3.w, r0.x, r2.w
  mul r0.y, r1.x, l(0.020000)
  min r0.y, r0.y, l(1.000000)
  mul r1.yzw, r2.wwww, r3.xxyz
  mul r2.xyz, r0.xxxx, r1.yzwy
  add r0.y, r0.y, l(-1.000000)
  mad r2.w, r0.x, r0.y, l(1.000000)
  movc o0.xyzw, cb0[0].yyyy, r2.xyzw, r3.xyzw
  mov o1.x, r1.x
endif 
ret 
// Approximately 257 instruction slots used
