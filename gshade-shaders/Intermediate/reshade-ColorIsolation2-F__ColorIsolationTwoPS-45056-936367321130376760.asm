//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float fUITargetHueTwo;             // Offset:    0 Size:     4
//   int cUIWindowFunctionTwo;          // Offset:    4 Size:     4
//   float fUIOverlapTwo;               // Offset:    8 Size:     4
//   float fUIWindowHeightTwo;          // Offset:   12 Size:     4
//   int iUITypeTwo;                    // Offset:   16 Size:     4
//   bool bUIShowDiffTwo;               // Offset:   20 Size:     4
//   bool bUIShowDebugOverlayTwo;       // Offset:   24 Size:     4
//   float2 fUIOverlayPosTwo;           // Offset:   32 Size:     8
//   int2 iUIOverlaySizeTwo;            // Offset:   40 Size:     8
//   float fUIOverlayOpacityTwo;        // Offset:   48 Size:     4
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
dcl_constantbuffer CB0[4], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 5
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
dp3 r0.w, r0.xyzx, l(0.212600, 0.715100, 0.072100, 0.000000)
lt r1.x, r0.y, r0.z
mov r2.xy, r0.zyzz
mov r2.zw, l(0,0,-1.000000,0.666667)
mov r3.xy, r2.yxyy
mov r3.zw, l(0,0,0,-0.333333)
movc r1.xyzw, r1.xxxx, r2.xyzw, r3.xyzw
lt r2.x, r0.x, r1.x
mov r3.z, r0.x
mov r3.xyw, r1.xwxz
movc r1.xzw, r2.xxxx, r3.xxyz, r3.zzwx
min r2.x, r1.y, r1.w
add r1.x, r1.x, -r2.x
add r1.y, -r1.y, r1.w
mad r1.x, r1.x, l(6.000000), l(0.000000)
div r1.x, r1.y, r1.x
add r1.x, r1.x, r1.z
add r1.y, -cb0[0].z, l(1.000000)
if_z cb0[0].y
  mul r1.z, r1.y, r1.y
  add r1.w, |r1.x|, l(-1.000000)
  mad r1.w, -cb0[0].x, l(0.002778), r1.w
  mul r1.w, r1.w, r1.w
  mul r1.z, r1.z, l(0.080000)
  div r1.w, -r1.w, r1.z
  mul r1.w, r1.w, l(1.442695)
  exp r1.w, r1.w
  mad r2.x, -cb0[0].x, l(0.002778), |r1.x|
  mul r2.y, r2.x, r2.x
  div r2.y, -r2.y, r1.z
  mul r2.y, r2.y, l(1.442695)
  exp r2.y, r2.y
  mul r2.y, r2.y, cb0[0].w
  mad r1.w, cb0[0].w, r1.w, r2.y
  add r2.x, r2.x, l(1.000000)
  mul r2.x, r2.x, r2.x
  div r1.z, -r2.x, r1.z
  mul r1.z, r1.z, l(1.442695)
  exp r1.z, r1.z
  mad_sat r1.z, cb0[0].w, r1.z, r1.w
else 
  div r1.w, l(2.000000), r1.y
  add r2.x, |r1.x|, l(-1.000000)
  mad r2.x, -cb0[0].x, l(0.002778), r2.x
  mad r2.x, r1.y, l(0.500000), -|r2.x|
  mul r2.x, r1.w, r2.x
  mad r1.x, -cb0[0].x, l(0.002778), |r1.x|
  mad r2.y, r1.y, l(0.500000), -|r1.x|
  mul r2.y, r1.w, r2.y
  mul_sat r2.xy, r2.xyxx, cb0[0].wwww
  add r2.x, r2.y, r2.x
  add r1.x, r1.x, l(1.000000)
  mad r1.x, r1.y, l(0.500000), -|r1.x|
  mul r1.x, r1.x, r1.w
  mul_sat r1.x, r1.x, cb0[0].w
  add r1.x, r1.x, r2.x
  min r1.z, r1.x, l(1.000000)
endif 
add r1.x, -r1.z, l(1.000000)
ine r1.w, cb0[1].x, l(1)
movc r1.x, r1.w, r1.z, r1.x
add r0.xyz, -r0.wwww, r0.xyzx
mad r0.xyz, r1.xxxx, r0.xyzx, r0.wwww
movc r0.xyz, cb0[1].yyyy, r1.xxxx, r0.xyzx
if_nz cb0[1].z
  itof r1.xz, cb0[2].zzwz
  add r2.xy, -r1.xzxx, l(3840.000000, 2137.000000, 0.000000, 0.000000)
  mul r3.xy, r2.xyxx, cb0[2].xyxx
  round_z r2.zw, v0.xxxy
  ge r4.xy, r2.zwzz, r3.xyxx
  and r0.w, r4.y, r4.x
  mad r4.xy, cb0[2].xyxx, r2.xyxx, r1.xzxx
  lt r2.zw, r2.zzzw, r4.xxxy
  and r2.z, r2.w, r2.z
  and r0.w, r0.w, r2.z
  if_nz r0.w
    mad r3.zw, cb0[2].xxxy, r2.xxxy, r1.xxxz
    mul r2.xyzw, r3.xzyw, l(0.000260, 0.000260, 0.000468, 0.000468)
    mad r1.xz, r3.zzwz, l(0.000260, 0.000000, 0.000468, 0.000000), -r2.xxzx
    lt r3.zw, |r1.xxxz|, l(0.000000, 0.000000, 0.000001, 0.000001)
    movc r1.xz, r3.zzwz, l(0.000001,0,0.000001,0), r1.xxzx
    max r2.xz, r2.xxzx, v1.xxyx
    min r2.xy, r2.ywyy, r2.xzxx
    mad r2.xy, -r3.xyxx, l(0.000260, 0.000468, 0.000000, 0.000000), r2.xyxx
    div r1.xz, r2.xxyx, r1.xxzx
    add r2.xyz, r1.xxxx, l(1.000000, 0.666667, 0.333333, 0.000000)
    frc r2.xyz, r2.xyzx
    mad r2.xyz, r2.xyzx, l(6.000000, 6.000000, 6.000000, 0.000000), l(-3.000000, -3.000000, -3.000000, 0.000000)
    add_sat r2.xyz, |r2.xyzx|, l(-1.000000, -1.000000, -1.000000, 0.000000)
    dp3 r0.w, r2.xyzx, l(0.212600, 0.715100, 0.072100, 0.000000)
    if_z cb0[0].y
      mul r2.w, r1.y, r1.y
      add r3.x, r1.x, l(-1.000000)
      mad r3.x, -cb0[0].x, l(0.002778), r3.x
      mul r3.x, r3.x, r3.x
      mul r2.w, r2.w, l(0.080000)
      div r3.x, -r3.x, r2.w
      mul r3.x, r3.x, l(1.442695)
      exp r3.x, r3.x
      mad r3.y, -cb0[0].x, l(0.002778), r1.x
      mul r3.z, r3.y, r3.y
      div r3.z, -r3.z, r2.w
      mul r3.z, r3.z, l(1.442695)
      exp r3.z, r3.z
      mul r3.z, r3.z, cb0[0].w
      mad r3.x, cb0[0].w, r3.x, r3.z
      add r3.y, r3.y, l(1.000000)
      mul r3.y, r3.y, r3.y
      div r2.w, -r3.y, r2.w
      mul r2.w, r2.w, l(1.442695)
      exp r2.w, r2.w
      mad_sat r2.w, cb0[0].w, r2.w, r3.x
    else 
      div r3.x, l(2.000000), r1.y
      add r3.y, r1.x, l(-1.000000)
      mad r3.y, -cb0[0].x, l(0.002778), r3.y
      mad r3.y, r1.y, l(0.500000), -|r3.y|
      mul r3.y, r3.y, r3.x
      mad r1.x, -cb0[0].x, l(0.002778), r1.x
      mad r3.z, r1.y, l(0.500000), -|r1.x|
      mul r3.z, r3.z, r3.x
      mul_sat r3.yz, r3.yyzy, cb0[0].wwww
      add r3.y, r3.z, r3.y
      add r1.x, r1.x, l(1.000000)
      mad r1.x, r1.y, l(0.500000), -|r1.x|
      mul r1.x, r1.x, r3.x
      mul_sat r1.x, r1.x, cb0[0].w
      add r1.x, r1.x, r3.y
      min r2.w, r1.x, l(1.000000)
    endif 
    add r1.x, -r2.w, l(1.000000)
    movc r1.x, r1.w, r2.w, r1.x
    add r2.xyz, -r0.wwww, r2.xyzx
    mad r2.xyz, r1.xxxx, r2.xyzx, r0.wwww
    add r0.w, -r1.z, l(1.000000)
    add r0.w, -r1.x, r0.w
    itof r1.x, -cb0[2].w
    mul r0.w, |r0.w|, r1.x
    mul r0.w, r0.w, l(1.442695)
    exp r0.w, r0.w
    mad r1.xyz, r0.wwww, -r2.xyzx, r2.xyzx
    add r1.xyz, -r0.xyzx, r1.xyzx
    mad o0.xyz, cb0[3].xxxx, r1.xyzx, r0.xyzx
  else 
    mov o0.xyz, r0.xyzx
  endif 
else 
  mov o0.xyz, r0.xyzx
endif 
ret 
// Approximately 151 instruction slots used
