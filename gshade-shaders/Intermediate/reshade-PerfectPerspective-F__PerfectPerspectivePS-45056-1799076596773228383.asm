//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   uint FovAngle;                     // Offset:    0 Size:     4
//   uint FovType;                      // Offset:    4 Size:     4
//   float K;                           // Offset:    8 Size:     4
//   float S;                           // Offset:   12 Size:     4
//   bool UseVignette;                  // Offset:   16 Size:     4
//   float CroppingFactor;              // Offset:   20 Size:     4
//   bool MirrorBorder;                 // Offset:   24 Size:     4
//   bool BorderVignette;               // Offset:   28 Size:     4
//   float4 BorderColor;                // Offset:   32 Size:    16
//   float BorderCorner;                // Offset:   48 Size:     4
//   uint BorderGContinuity;            // Offset:   52 Size:     4
//   bool DebugModePreview;             // Offset:   56 Size:     4
//   uint DebugMode;                    // Offset:   60 Size:     4
//   float DimDebugBackground;          // Offset:   64 Size:     4
//   uint GridLook;                     // Offset:   68 Size:     4
//   uint GridSize;                     // Offset:   72 Size:     4
//   uint GridWidth;                    // Offset:   76 Size:     4
//   float GridTilt;                    // Offset:   80 Size:     4
//   uint ResScaleScreen;               // Offset:   84 Size:     4
//   uint ResScaleVirtual;              // Offset:   88 Size:     4
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
// __V__ReShade__BackBufferTex       texture  float4          2d             t0      1 
// __srgbV__ReShade__BackBufferTex    texture  float4          2d             t1      1 
// __V__BlueNoise__BlueNoiseTex      texture  float4          2d             t4      1 
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
dcl_constantbuffer CB0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 8
ieq r0.x, cb0[0].x, l(0)
eq r0.y, cb0[0].z, l(1.000000)
ine r0.z, cb0[1].x, l(0)
not r0.w, r0.z
and r0.y, r0.w, r0.y
or r0.x, r0.y, r0.x
if_nz r0.x
  if_nz cb0[3].z
    switch cb0[3].w
      case l(1)
      ftou r1.xy, v0.xyxx
      mov r1.zw, l(0,0,0,0)
      ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyzw, t1.xyzw
      utof r2.xy, cb0[5].zyzz
      mul r2.xz, r2.xxxx, l(3840.000000, 0.000000, 2137.000000, 0.000000)
      div r2.xy, r2.xzxx, r2.yyyy
      mul r2.xy, r2.xyxx, v1.xyxx
      deriv_rtx_coarse r3.xy, r2.xyxx
      deriv_rty_coarse r3.zw, r2.xxxy
      dp2 r1.w, r3.xzxx, r3.xzxx
      sqrt r1.w, r1.w
      dp2 r2.x, r3.ywyy, r3.ywyy
      sqrt r2.x, r2.x
      dp2 r1.w, r1.wwww, r2.xxxx
      add r2.xyzw, r1.wwww, l(-1.000000, -1.000000, -2.000000, -2.000000)
      max r2.xyzw, r2.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
      min r2.xyzw, r2.xyzw, l(1.000000, 0.500000, 1.000000, 0.500000)
      max r2.xz, r2.xxzx, l(0.500000, 0.000000, 0.500000, 0.000000)
      mad r2.yw, r2.yyyw, r2.yyyw, r2.xxxz
      mad r2.xz, r2.xxzx, r2.xxzx, -r2.xxzx
      add r2.xy, -r2.xzxx, r2.ywyy
      mad r2.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.500000, -1.500000, 0.000000, 0.000000)
      mad r2.xzw, r2.xxxx, l(-0.858824, 0.000000, 0.000000, 0.858824), l(0.921569, 0.000000, 0.062745, 0.062745)
      add r3.xyz, -r2.xzwx, l(0.062745, 0.921569, 0.062745, 0.000000)
      mad r2.xyz, r2.yyyy, r3.xyzx, r2.xzwx
      ge r3.xyz, l(0.003131, 0.003131, 0.003131, 0.000000), r1.xyzx
      mul r4.xyz, r1.xyzx, l(12.920000, 12.920000, 12.920000, 0.000000)
      log r1.xyz, |r1.xyzx|
      mul r1.xyz, r1.xyzx, l(0.416667, 0.416667, 0.416667, 0.000000)
      exp r1.xyz, r1.xyzx
      mad r1.xyz, r1.xyzx, l(1.055000, 1.055000, 1.055000, 0.000000), l(-0.055000, -0.055000, -0.055000, 0.000000)
      movc r1.xyz, r3.xyzx, r4.xyzx, r1.xyzx
      dp3 r1.x, l(0.299000, 0.587000, 0.114000, 0.000000), r1.xyzx
      mul r1.x, r1.x, cb0[4].x
      mad r1.x, r1.x, l(0.858824), l(0.062745)
      ge r1.y, l(0.040499), r1.x
      mul r1.z, r1.x, l(0.077399)
      add r1.x, |r1.x|, l(0.055000)
      mul r1.x, r1.x, l(0.947867)
      log r1.x, r1.x
      mul r1.x, r1.x, l(2.400000)
      exp r1.x, r1.x
      movc r1.x, r1.y, r1.z, r1.x
      add r1.yzw, -r1.xxxx, r2.xxyz
      mad r0.xyw, r1.yzyw, l(0.618034, 0.618034, 0.000000, 0.618034), r1.xxxx
      break 
      default 
      ftou r1.xy, v0.xyxx
      mov r1.zw, l(0,0,0,0)
      ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyzw, t1.xyzw
      mad r2.xy, v1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
      mul r2.xy, r2.xyxx, l(0.873803, 0.486280, 0.000000, 0.000000)
      ne r1.w, cb0[5].x, l(0.000000)
      mul r2.z, cb0[5].x, l(0.017453)
      sincos r3.x, r4.x, r2.z
      mov r5.x, -r3.x
      mov r5.y, r4.x
      mov r5.z, r3.x
      dp2 r3.x, r5.yzyy, r2.xyxx
      dp2 r3.y, r5.xyxx, r2.xyxx
      movc r2.xy, r1.wwww, r3.xyxx, r2.xyxx
      deriv_rtx_coarse r3.xy, r2.xyxx
      deriv_rty_coarse r3.zw, r2.xxxy
      utof r2.zw, cb0[4].zzzw
      mul r2.xy, r2.zzzz, r2.xyxx
      frc r2.xy, r2.xyxx
      add r2.xy, r2.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
      dp2 r1.w, r3.xzxx, r3.xzxx
      rsq r4.x, r1.w
      dp2 r1.w, r3.ywyy, r3.ywyy
      rsq r4.y, r1.w
      div r3.xy, r4.xyxx, r2.zzzz
      mul r2.xy, r2.xyxx, r3.xyxx
      mad_sat r2.xy, r2.wwww, l(0.500000, 0.500000, 0.000000, 0.000000), -|r2.xyxx|
      add r1.xyz, r1.xyzx, l(-0.005182, -0.005182, -0.005182, 0.000000)
      mad r3.xyz, cb0[4].xxxx, r1.xyzx, l(0.005182, 0.005182, 0.005182, 0.000000)
      switch cb0[4].y
        case l(1)
        add r2.zw, -r2.xxxy, l(0.000000, 0.000000, 1.000000, 1.000000)
        mul r1.w, r2.w, r2.z
        mul r0.xyw, r1.wwww, r3.xyxz
        break 
        case l(2)
        add r2.zw, -r2.xxxy, l(0.000000, 0.000000, 1.000000, 1.000000)
        mul r1.w, r2.w, r2.z
        add r4.xyz, -r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
        mad r0.xyw, -r1.wwww, r4.xyxz, l(1.000000, 1.000000, 0.000000, 1.000000)
        break 
        case l(3)
        add r4.xyz, -r3.xyzx, l(1.000000, 0.000000, 0.000000, 0.000000)
        mad r3.xyz, r2.yyyy, r4.xyzx, r3.xyzx
        add r4.xyz, -r3.xyzx, l(0.000000, 1.000000, 0.000000, 0.000000)
        mad r0.xyw, r2.xxxx, r4.xyxz, r3.xyxz
        break 
        default 
        add r2.xy, -r2.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
        mul r1.w, r2.y, r2.x
        mad r1.xyz, cb0[4].xxxx, r1.xyzx, l(-0.994819, -0.994819, 0.005182, 0.000000)
        mad r0.xyw, r1.wwww, r1.xyxz, l(1.000000, 1.000000, 0.000000, 0.000000)
        break 
      endswitch 
      break 
    endswitch 
    ge r1.xyz, l(0.003131, 0.003131, 0.003131, 0.000000), r0.xywx
    mul r2.xyz, r0.xywx, l(12.920000, 12.920000, 12.920000, 0.000000)
    log r0.xyw, |r0.xyxw|
    mul r0.xyw, r0.xyxw, l(0.416667, 0.416667, 0.000000, 0.416667)
    exp r0.xyw, r0.xyxw
    mad r0.xyw, r0.xyxw, l(1.055000, 1.055000, 0.000000, 1.055000), l(-0.055000, -0.055000, 0.000000, -0.055000)
    movc r0.xyw, r1.xyxz, r2.xyxz, r0.xyxw
    ftou r1.xy, v0.xyxx
    mul r0.xyw, r0.xyxw, l(255.000000, 255.000000, 0.000000, 255.000000)
    and r1.xy, r1.xyxx, l(63, 63, 0, 0)
    mov r1.zw, l(0,0,0,0)
    ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyzw, t4.xyzw
    frc r2.xyz, r0.xywx
    ge r1.xyz, r2.xyzx, r1.xyzx
    round_pi r2.xyz, r0.xywx
    round_ni r0.xyw, r0.xyxw
    movc r0.xyw, r1.xyxz, r2.xyxz, r0.xyxw
    mul o0.xyz, r0.xywx, l(0.003922, 0.003922, 0.003922, 0.000000)
    ret 
  else 
    sample_indexable(texture2d)(float,float,float,float) r0.xyw, v1.xyxx, t0.xywz, s0
    mov o0.xyz, r0.xywx
    ret 
  endif 
endif 
utof r0.x, cb0[0].x
mad r0.yw, v1.xxxy, l(0.000000, 2.000000, 0.000000, 2.000000), l(0.000000, -1.000000, 0.000000, -1.000000)
mul r0.xyw, r0.xyxw, l(0.008727, 0.873803, 0.000000, 0.486280)
switch cb0[0].y
  case l(1)
  mov r1.x, l(1.000000)
  break 
  case l(2)
  mov r1.x, l(0.486280)
  break 
  case l(3)
  mov r1.x, l(0.648374)
  break 
  case l(4)
  mov r1.x, l(0.864498)
  break 
  default 
  mov r1.x, l(0.873803)
  break 
endswitch 
lt r1.y, l(0.000000), cb0[0].z
mul r1.z, r0.x, cb0[0].z
sincos r2.x, r3.x, r1.z
div r1.z, r2.x, r3.x
mul r1.w, r1.x, cb0[0].z
div r1.z, r1.z, r1.w
lt r2.y, cb0[0].z, l(0.000000)
div r1.w, r2.x, r1.w
div r2.x, r0.x, r1.x
movc r1.w, r2.y, r1.w, r2.x
movc r1.z, r1.y, r1.z, r1.w
eq r1.w, cb0[0].w, l(1.000000)
dp2 r2.x, r0.ywyy, r0.ywyy
mul r2.z, r0.w, r0.w
div r2.z, r2.z, cb0[0].w
mad r2.z, r0.y, r0.y, r2.z
movc r1.w, r1.w, r2.x, r2.z
rsq r2.x, r1.w
sqrt r1.w, r1.w
sincos r0.x, r3.x, r0.x
div r0.x, r0.x, r3.x
div r2.z, r0.x, r1.x
mul r3.xy, r2.zzzz, l(0.873803, 0.486280, 0.000000, 0.000000)
min r2.w, |r3.x|, l(1.000000)
max r3.z, |r3.x|, l(1.000000)
div r3.z, l(1.000000, 1.000000, 1.000000, 1.000000), r3.z
mul r2.w, r2.w, r3.z
mul r3.z, r2.w, r2.w
mad r3.w, r3.z, l(0.020835), l(-0.085133)
mad r3.w, r3.z, r3.w, l(0.180141)
mad r3.w, r3.z, r3.w, l(-0.330299)
mad r3.z, r3.z, r3.w, l(0.999866)
mul r3.w, r2.w, r3.z
lt r4.x, l(1.000000), |r3.x|
mad r3.w, r3.w, l(-2.000000), l(1.570796)
and r3.w, r4.x, r3.w
mad r2.w, r2.w, r3.z, r3.w
min r3.x, r3.x, l(1.000000)
lt r3.x, r3.x, -r3.x
movc r2.w, r3.x, -r2.w, r2.w
mul r3.x, r2.w, cb0[0].z
sincos r3.x, r4.x, r3.x
div r3.z, r3.x, r4.x
mul r3.w, r1.z, cb0[0].z
div r3.xz, r3.xxzx, r3.wwww
div r2.w, r2.w, r1.z
movc r2.w, r2.y, r3.x, r2.w
movc r2.w, r1.y, r3.z, r2.w
mul r2.w, r2.w, l(1.144423)
rsq r3.x, cb0[0].w
mul r3.y, r3.x, r3.y
min r3.z, |r3.y|, l(1.000000)
max r4.x, |r3.y|, l(1.000000)
div r4.x, l(1.000000, 1.000000, 1.000000, 1.000000), r4.x
mul r3.z, r3.z, r4.x
mul r4.x, r3.z, r3.z
mad r4.y, r4.x, l(0.020835), l(-0.085133)
mad r4.y, r4.x, r4.y, l(0.180141)
mad r4.y, r4.x, r4.y, l(-0.330299)
mad r4.x, r4.x, r4.y, l(0.999866)
mul r4.y, r3.z, r4.x
lt r4.z, l(1.000000), |r3.y|
mad r4.y, r4.y, l(-2.000000), l(1.570796)
and r4.y, r4.z, r4.y
mad r3.z, r3.z, r4.x, r4.y
min r3.y, r3.y, l(1.000000)
lt r3.y, r3.y, -r3.y
movc r3.y, r3.y, -r3.z, r3.z
mul r3.z, r3.y, cb0[0].z
sincos r4.x, r5.x, r3.z
div r3.z, r4.x, r5.x
div r3.z, r3.z, r3.w
div r4.x, r4.x, r3.w
div r3.y, r3.y, r1.z
movc r3.y, r2.y, r4.x, r3.y
movc r3.y, r1.y, r3.z, r3.y
mul r3.y, r3.y, l(2.056427)
sqrt r3.z, cb0[0].w
mul r3.y, r3.z, r3.y
mul r4.y, r3.x, l(0.486280)
mov r4.x, l(0.873803)
dp2 r3.x, r4.xyxx, r4.xyxx
sqrt r3.x, r3.x
mul r2.z, r2.z, r3.x
min r3.z, |r2.z|, l(1.000000)
max r4.x, |r2.z|, l(1.000000)
div r4.x, l(1.000000, 1.000000, 1.000000, 1.000000), r4.x
mul r3.z, r3.z, r4.x
mul r4.x, r3.z, r3.z
mad r4.y, r4.x, l(0.020835), l(-0.085133)
mad r4.y, r4.x, r4.y, l(0.180141)
mad r4.y, r4.x, r4.y, l(-0.330299)
mad r4.x, r4.x, r4.y, l(0.999866)
mul r4.y, r3.z, r4.x
lt r4.z, l(1.000000), |r2.z|
mad r4.y, r4.y, l(-2.000000), l(1.570796)
and r4.y, r4.z, r4.y
mad r3.z, r3.z, r4.x, r4.y
min r2.z, r2.z, l(1.000000)
lt r2.z, r2.z, -r2.z
movc r2.z, r2.z, -r3.z, r3.z
mul r3.z, r2.z, cb0[0].z
sincos r4.x, r5.x, r3.z
div r3.z, r4.x, r5.x
div r3.z, r3.z, r3.w
div r3.w, r4.x, r3.w
div r2.z, r2.z, r1.z
movc r2.z, r2.y, r3.w, r2.z
movc r2.z, r1.y, r3.z, r2.z
div r2.z, r2.z, r3.x
lt r3.x, cb0[1].y, l(1.000000)
max r3.z, r2.w, r3.y
min r2.w, r2.w, r3.y
max r3.y, cb0[1].y, l(0.000000)
add r3.w, -r3.z, r2.w
mad r3.y, r3.y, r3.w, r3.z
add r3.z, cb0[1].y, l(-1.000000)
min r3.z, r3.z, l(1.000000)
add r2.z, -r2.w, r2.z
mad r2.z, r3.z, r2.z, r2.w
movc r2.z, r3.x, r3.y, r2.z
mul r1.w, r1.w, r2.z
mul r2.z, r1.w, cb0[0].z
mul r2.z, r1.z, r2.z
min r2.w, |r2.z|, l(1.000000)
max r3.x, |r2.z|, l(1.000000)
div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x
mul r2.w, r2.w, r3.x
mul r3.x, r2.w, r2.w
mad r3.y, r3.x, l(0.020835), l(-0.085133)
mad r3.y, r3.x, r3.y, l(0.180141)
mad r3.y, r3.x, r3.y, l(-0.330299)
mad r3.x, r3.x, r3.y, l(0.999866)
mul r3.y, r2.w, r3.x
lt r3.z, l(1.000000), |r2.z|
mad r3.y, r3.y, l(-2.000000), l(1.570796)
and r3.y, r3.z, r3.y
mad r2.w, r2.w, r3.x, r3.y
min r3.x, r2.z, l(1.000000)
lt r3.x, r3.x, -r3.x
movc r2.w, r3.x, -r2.w, r2.w
add r3.x, -|r2.z|, l(1.000000)
sqrt r3.x, r3.x
mad r3.y, |r2.z|, l(-0.018729), l(0.074261)
mad r3.y, r3.y, |r2.z|, l(-0.212114)
mad r3.y, r3.y, |r2.z|, l(1.570729)
mul r3.z, r3.x, r3.y
mad r3.z, r3.z, l(-2.000000), l(3.141593)
lt r2.z, r2.z, -r2.z
and r2.z, r2.z, r3.z
mad r2.z, r3.y, r3.x, r2.z
add r2.z, -r2.z, l(1.570796)
div r2.zw, r2.zzzw, cb0[0].zzzz
mul r1.z, r1.z, r1.w
movc r1.z, r2.y, r2.z, r1.z
movc r1.y, r1.y, r2.w, r1.z
max r1.z, |cb0[0].z|, l(0.500000)
mul r1.z, r1.y, r1.z
sincos null, r1.z, r1.z
mad r1.w, cb0[0].z, l(0.500000), l(1.500000)
log r1.z, |r1.z|
mul r1.z, r1.z, r1.w
exp r1.z, r1.z
movc r1.z, cb0[1].x, r1.z, l(1.000000)
ne r2.yz, cb0[0].wwzw, l(0.000000, 1.000000, 1.000000, 0.000000)
and r0.z, r0.z, r2.y
sincos r3.x, r4.x, r1.y
mul r1.y, r2.x, r3.x
mul r5.xy, r0.ywyy, r1.yyyy
mov r5.z, r4.x
dp3 r1.y, r5.xyzx, r5.xyzx
div r1.y, r1.z, r1.y
movc r0.z, r0.z, r1.y, r1.z
div r1.y, r3.x, r4.x
mul r1.y, r2.x, r1.y
mul r0.yw, r0.yyyw, r1.yyyy
mul r1.yz, r0.xxxx, l(0.000000, 0.873803, 0.486280, 0.000000)
div r1.xy, r1.xxxx, r1.yzyy
mul r0.xy, r0.ywyy, r1.xyxx
mov r1.xy, |r0.xyxx|
ine r0.w, cb0[3].y, l(0)
ne r1.w, cb0[3].x, l(0.000000)
and r0.w, r0.w, r1.w
if_nz r0.w
  add r0.w, cb0[3].x, l(-1.000000)
  mad r1.z, r1.x, l(1.796911), l(-0.796911)
  add r3.xyzw, r0.wwww, r1.zyzy
  max r3.xyzw, r3.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  div r3.xyzw, r3.xyzw, cb0[3].xxxx
  max r0.w, |r3.y|, |r3.x|
  iadd r1.z, cb0[3].y, l(1)
  utof r1.z, r1.z
  log r2.xy, |r3.zwzz|
  mul r2.xy, r1.zzzz, r2.xyxx
  exp r2.xy, r2.xyxx
  add r1.w, r2.y, r2.x
  rcp r1.z, r1.z
  log r1.w, r1.w
  mul r1.z, r1.w, r1.z
  exp r1.z, r1.z
  movc r0.w, cb0[3].y, r1.z, r0.w
  add r0.w, r0.w, l(-1.000000)
  deriv_rtx_coarse r2.x, r0.w
  deriv_rty_coarse r2.y, r0.w
  dp2 r1.z, r2.xyxx, r2.xyxx
  rsq r1.z, r1.z
  mad_sat r0.w, r1.z, r0.w, l(0.500000)
else 
  max r1.x, r1.y, r1.x
  add r1.x, r1.x, l(-1.000000)
  deriv_rtx_coarse r2.x, r1.x
  deriv_rty_coarse r2.y, r1.x
  dp2 r1.y, r2.xyxx, r2.xyxx
  rsq r1.y, r1.y
  mad_sat r0.w, r1.y, r1.x, l(0.500000)
endif 
mad r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r0.xyxx, t1.xyzw, s2
ftou r3.xy, v0.xyxx
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.xyw, r3.xyzw, t1.xywz
movc r1.xyz, r2.zzzz, r1.xyzx, r2.xywx
if_nz cb0[3].z
  switch cb0[3].w
    case l(1)
    utof r3.zw, cb0[5].zzzy
    mul r4.xy, r3.zzzz, l(3840.000000, 2137.000000, 0.000000, 0.000000)
    div r3.zw, r4.xxxy, r3.wwww
    mul r3.zw, r0.xxxy, r3.zzzw
    deriv_rtx_coarse r4.xy, r3.zwzz
    deriv_rty_coarse r4.zw, r3.zzzw
    dp2 r1.w, r4.xzxx, r4.xzxx
    sqrt r1.w, r1.w
    dp2 r3.z, r4.ywyy, r4.ywyy
    sqrt r3.z, r3.z
    dp2 r1.w, r1.wwww, r3.zzzz
    add r4.xyzw, r1.wwww, l(-1.000000, -1.000000, -2.000000, -2.000000)
    max r4.xyzw, r4.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
    min r4.xyzw, r4.xyzw, l(1.000000, 0.500000, 1.000000, 0.500000)
    max r3.zw, r4.xxxz, l(0.000000, 0.000000, 0.500000, 0.500000)
    mad r4.xy, r4.ywyy, r4.ywyy, r3.zwzz
    mad r3.zw, r3.zzzw, r3.zzzw, -r3.zzzw
    add r3.zw, -r3.zzzw, r4.xxxy
    mad r3.zw, r3.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.500000, -1.500000)
    mad r4.xyz, r3.zzzz, l(-0.858824, 0.000000, 0.858824, 0.000000), l(0.921569, 0.062745, 0.062745, 0.000000)
    add r5.xyz, -r4.xyzx, l(0.062745, 0.921569, 0.062745, 0.000000)
    mad r4.xyz, r3.wwww, r5.xyzx, r4.xyzx
    ge r5.xyz, l(0.003131, 0.003131, 0.003131, 0.000000), r1.xyzx
    mul r6.xyz, r1.xyzx, l(12.920000, 12.920000, 12.920000, 0.000000)
    log r7.xyz, |r1.xyzx|
    mul r7.xyz, r7.xyzx, l(0.416667, 0.416667, 0.416667, 0.000000)
    exp r7.xyz, r7.xyzx
    mad r7.xyz, r7.xyzx, l(1.055000, 1.055000, 1.055000, 0.000000), l(-0.055000, -0.055000, -0.055000, 0.000000)
    movc r5.xyz, r5.xyzx, r6.xyzx, r7.xyzx
    dp3 r1.w, l(0.299000, 0.587000, 0.114000, 0.000000), r5.xyzx
    mul r1.w, r1.w, cb0[4].x
    mad r1.w, r1.w, l(0.858824), l(0.062745)
    ge r3.z, l(0.040499), r1.w
    mul r3.w, r1.w, l(0.077399)
    add r1.w, |r1.w|, l(0.055000)
    mul r1.w, r1.w, l(0.947867)
    log r1.w, r1.w
    mul r1.w, r1.w, l(2.400000)
    exp r1.w, r1.w
    movc r1.w, r3.z, r3.w, r1.w
    add r4.xyz, -r1.wwww, r4.xyzx
    mad r1.xyz, r4.xyzx, l(0.618034, 0.618034, 0.618034, 0.000000), r1.wwww
    break 
    default 
    mad r0.xy, r0.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
    mul r0.xy, r0.xyxx, l(0.873803, 0.486280, 0.000000, 0.000000)
    ne r1.w, cb0[5].x, l(0.000000)
    mul r3.z, cb0[5].x, l(0.017453)
    sincos r4.x, r5.x, r3.z
    mov r6.x, -r4.x
    mov r6.y, r5.x
    mov r6.z, r4.x
    dp2 r4.x, r6.yzyy, r0.xyxx
    dp2 r4.y, r6.xyxx, r0.xyxx
    movc r0.xy, r1.wwww, r4.xyxx, r0.xyxx
    deriv_rtx_coarse r4.xy, r0.xyxx
    deriv_rty_coarse r4.zw, r0.xxxy
    utof r3.zw, cb0[4].zzzw
    mul r0.xy, r0.xyxx, r3.zzzz
    frc r0.xy, r0.xyxx
    add r0.xy, r0.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
    dp2 r1.w, r4.xzxx, r4.xzxx
    rsq r5.x, r1.w
    dp2 r1.w, r4.ywyy, r4.ywyy
    rsq r5.y, r1.w
    div r4.xy, r5.xyxx, r3.zzzz
    mul r0.xy, r0.xyxx, r4.xyxx
    mad_sat r0.xy, r3.wwww, l(0.500000, 0.500000, 0.000000, 0.000000), -|r0.xyxx|
    add r4.xyz, r2.xywx, l(-0.005182, -0.005182, -0.005182, 0.000000)
    mad r5.xyz, cb0[4].xxxx, r4.xyzx, l(0.005182, 0.005182, 0.005182, 0.000000)
    switch cb0[4].y
      case l(1)
      add r3.zw, -r0.xxxy, l(0.000000, 0.000000, 1.000000, 1.000000)
      mul r1.w, r3.w, r3.z
      mul r1.xyz, r1.wwww, r5.xyzx
      break 
      case l(2)
      add r3.zw, -r0.xxxy, l(0.000000, 0.000000, 1.000000, 1.000000)
      mul r1.w, r3.w, r3.z
      add r6.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
      mad r1.xyz, -r1.wwww, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
      break 
      case l(3)
      add r6.xyz, -r5.xyzx, l(1.000000, 0.000000, 0.000000, 0.000000)
      mad r5.xyz, r0.yyyy, r6.xyzx, r5.xyzx
      add r6.xyz, -r5.xyzx, l(0.000000, 1.000000, 0.000000, 0.000000)
      mad r1.xyz, r0.xxxx, r6.xyzx, r5.xyzx
      break 
      default 
      add r0.xy, -r0.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
      mul r0.x, r0.y, r0.x
      mad r4.xyz, cb0[4].xxxx, r4.xyzx, l(-0.994819, -0.994819, 0.005182, 0.000000)
      mad r1.xyz, r0.xxxx, r4.xyzx, l(1.000000, 1.000000, 0.000000, 0.000000)
      break 
    endswitch 
    break 
  endswitch 
endif 
ne r0.x, cb0[1].y, l(2.000000)
and r0.x, r0.x, r2.z
if_nz r0.x
  movc r2.xyz, cb0[1].zzzz, r1.xyzx, r2.xywx
  ge r4.xyzw, l(0.040499, 0.040499, 0.040499, 0.040499), cb0[2].xyzw
  mul r5.xyzw, cb0[2].xyzw, l(0.077399, 0.077399, 0.077399, 0.077399)
  add r6.xyzw, |cb0[2].xyzw|, l(0.055000, 0.055000, 0.055000, 0.055000)
  mul r6.xyzw, r6.xyzw, l(0.947867, 0.947867, 0.947867, 0.947867)
  log r6.xyzw, r6.xyzw
  mul r6.xyzw, r6.xyzw, l(2.400000, 2.400000, 2.400000, 2.400000)
  exp r6.xyzw, r6.xyzw
  movc r4.xyzw, r4.xyzw, r5.xyzw, r6.xyzw
  add r4.xyz, -r2.xyzx, r4.xyzx
  mad r2.xyz, r4.wwww, r4.xyzx, r2.xyzx
  add r4.xyz, -r1.xyzx, r2.xyzx
  mad r4.xyz, r0.wwww, r4.xyzx, r1.xyzx
  mul r4.xyz, r0.zzzz, r4.xyzx
  mul r5.xyz, r0.zzzz, r1.xyzx
  mad r2.xyz, -r0.zzzz, r1.xyzx, r2.xyzx
  mad r0.xyw, r0.wwww, r2.xyxz, r5.xyxz
  movc r0.xyw, cb0[1].wwww, r4.xyxz, r0.xyxw
else 
  mul r0.xyw, r0.zzzz, r1.xyxz
endif 
ge r1.xyz, l(0.003131, 0.003131, 0.003131, 0.000000), r0.xywx
mul r2.xyz, r0.xywx, l(12.920000, 12.920000, 12.920000, 0.000000)
log r0.xyz, |r0.xywx|
mul r0.xyz, r0.xyzx, l(0.416667, 0.416667, 0.416667, 0.000000)
exp r0.xyz, r0.xyzx
mad r0.xyz, r0.xyzx, l(1.055000, 1.055000, 1.055000, 0.000000), l(-0.055000, -0.055000, -0.055000, 0.000000)
movc r0.xyz, r1.xyzx, r2.xyzx, r0.xyzx
mul r0.xyz, r0.xyzx, l(255.000000, 255.000000, 255.000000, 0.000000)
and r1.xy, r3.xyxx, l(63, 63, 0, 0)
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyzw, t4.xyzw
frc r2.xyz, r0.xyzx
ge r1.xyz, r2.xyzx, r1.xyzx
round_pi r2.xyz, r0.xyzx
round_ni r0.xyz, r0.xyzx
movc r0.xyz, r1.xyzx, r2.xyzx, r0.xyzx
mul o0.xyz, r0.xyzx, l(0.003922, 0.003922, 0.003922, 0.000000)
ret 
// Approximately 523 instruction slots used
