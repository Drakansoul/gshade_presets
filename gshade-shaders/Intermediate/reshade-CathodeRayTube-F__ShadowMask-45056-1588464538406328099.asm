//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int mask;                          // Offset:    0 Size:     4
//   bool blurToggle;                   // Offset:    4 Size:     4
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 7
ieq r0.xy, cb0[0].xxxx, l(2, 3, 0, 0)
if_nz r0.x
  if_nz cb0[0].y
    mov r0.zw, l(0,0,0,-2)
    mov r1.xyzw, l(0,0,0,-1)
    loop 
      breakc_z r1.w
      imad r2.x, -r0.w, r0.w, l(6)
      itof r2.x, r2.x
      sqrt r2.x, r2.x
      round_ni r2.x, r2.x
      ftoi r2.y, -r2.x
      ge r2.z, r2.x, -r2.x
      itof r2.w, r0.w
      mad r3.x, r2.w, l(0.000260), v1.x
      mov r4.xyz, r1.xyzx
      mov r2.w, r0.z
      mov r3.zw, r2.yyyz
      loop 
        breakc_z r3.w
        itof r4.w, r3.z
        mad r3.y, r4.w, l(0.000468), v1.y
        sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
        add r4.xyz, r4.xyzx, r5.xyzx
        iadd r2.w, r2.w, l(1)
        iadd r3.z, r3.z, l(1)
        itof r3.y, r3.z
        ge r3.w, r2.x, r3.y
      endloop 
      mov r1.xyz, r4.xyzx
      mov r0.z, r2.w
      iadd r0.w, r0.w, l(1)
      ige r1.w, l(2), r0.w
    endloop 
    itof r0.z, r0.z
    div r1.xyz, r1.xyzx, r0.zzzz
  else 
    sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
  endif 
else 
  mov r1.xyz, l(0,0,0,0)
endif 
if_nz r0.y
  if_nz cb0[0].y
    mov r2.xyz, l(0,0,0,0)
    mov r0.zw, l(0,0,0,-4)
    mov r1.w, l(-1)
    loop 
      breakc_z r1.w
      imad r2.w, -r0.w, r0.w, l(20)
      itof r2.w, r2.w
      sqrt r2.w, r2.w
      round_ni r2.w, r2.w
      ftoi r3.x, -r2.w
      ge r3.y, r2.w, -r2.w
      itof r3.z, r0.w
      mad r4.x, r3.z, l(0.000260), v1.x
      mov r5.xyz, r2.xyzx
      mov r3.z, r0.z
      mov r3.w, r3.x
      mov r4.z, r3.y
      loop 
        breakc_z r4.z
        itof r4.w, r3.w
        mad r4.y, r4.w, l(0.000468), v1.y
        sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r4.xyxx, t0.xyzw, s0, l(0.000000)
        add r5.xyz, r5.xyzx, r6.xyzx
        iadd r3.zw, r3.zzzw, l(0, 0, 1, 1)
        itof r4.y, r3.w
        ge r4.z, r2.w, r4.y
      endloop 
      mov r2.xyz, r5.xyzx
      mov r0.z, r3.z
      iadd r0.w, r0.w, l(1)
      ige r1.w, l(4), r0.w
    endloop 
    itof r0.z, r0.z
    div r1.xyz, r2.xyzx, r0.zzzz
  else 
    sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
  endif 
endif 
if_nz r0.x
  mul r2.xyzw, v0.xxyy, l(6.000000, 6.000000, 4.000000, 4.000000)
  ge r2.xyzw, r2.xyzw, -r2.yyww
  movc r2.xyzw, r2.xyzw, l(6.000000,0.166667,4.000000,0.250000), l(-6.000000,-0.166667,-4.000000,-0.250000)
  mul r0.xz, r2.yywy, v0.xxyx
  frc r0.xz, r0.xxzx
  mul r0.xz, r0.xxzx, r2.xxzx
  ge r0.xz, l(1.000000, 0.000000, 1.000000, 0.000000), r0.xxzx
  and r0.x, r0.z, r0.x
  if_nz r0.x
    mul o0.xyz, r1.xyzx, l(1.000000, 0.000000, 0.000000, 0.000000)
    ret 
  endif 
  add r0.x, v0.x, l(4.000000)
  mul r0.w, r0.x, l(6.000000)
  ge r0.w, r0.w, -r0.w
  movc r2.xy, r0.wwww, l(6.000000,0.166667,0,0), l(-6.000000,-0.166667,0,0)
  mul r0.x, r0.x, r2.y
  frc r0.x, r0.x
  mul r0.x, r0.x, r2.x
  ge r0.x, l(1.000000), r0.x
  and r0.x, r0.z, r0.x
  if_nz r0.x
    mul o0.xyz, r1.xyzx, l(0.000000, 1.000000, 0.000000, 0.000000)
    ret 
  endif 
  add r0.x, v0.x, l(2.000000)
  mul r0.w, r0.x, l(6.000000)
  ge r0.w, r0.w, -r0.w
  movc r2.xy, r0.wwww, l(6.000000,0.166667,0,0), l(-6.000000,-0.166667,0,0)
  mul r0.x, r0.x, r2.y
  frc r0.x, r0.x
  mul r0.x, r0.x, r2.x
  ge r0.x, l(1.000000), r0.x
  and r0.x, r0.z, r0.x
  if_nz r0.x
    mul o0.xyz, r1.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000)
    ret 
  endif 
  add r0.xz, v0.xxyx, l(3.000000, 0.000000, 2.000000, 0.000000)
  mul r2.xyzw, r0.xxzz, l(6.000000, 6.000000, 4.000000, 4.000000)
  ge r2.xyzw, r2.xyzw, -r2.yyww
  movc r2.xyzw, r2.xyzw, l(6.000000,0.166667,4.000000,0.250000), l(-6.000000,-0.166667,-4.000000,-0.250000)
  mul r0.xz, r0.xxzx, r2.yywy
  frc r0.xz, r0.xxzx
  mul r0.xz, r0.xxzx, r2.xxzx
  ge r0.xz, l(1.000000, 0.000000, 1.000000, 0.000000), r0.xxzx
  and r0.x, r0.z, r0.x
  if_nz r0.x
    mul o0.xyz, r1.xyzx, l(1.000000, 0.000000, 0.000000, 0.000000)
    ret 
  endif 
  add r0.x, v0.x, l(7.000000)
  mul r0.w, r0.x, l(6.000000)
  ge r0.w, r0.w, -r0.w
  movc r2.xy, r0.wwww, l(6.000000,0.166667,0,0), l(-6.000000,-0.166667,0,0)
  mul r0.x, r0.x, r2.y
  frc r0.x, r0.x
  mul r0.x, r0.x, r2.x
  ge r0.x, l(1.000000), r0.x
  and r0.x, r0.z, r0.x
  if_nz r0.x
    mul o0.xyz, r1.xyzx, l(0.000000, 1.000000, 0.000000, 0.000000)
    ret 
  endif 
  add r0.x, v0.x, l(5.000000)
  mul r0.w, r0.x, l(6.000000)
  ge r0.w, r0.w, -r0.w
  movc r2.xy, r0.wwww, l(6.000000,0.166667,0,0), l(-6.000000,-0.166667,0,0)
  mul r0.x, r0.x, r2.y
  frc r0.x, r0.x
  mul r0.x, r0.x, r2.x
  ge r0.x, l(1.000000), r0.x
  and r0.x, r0.z, r0.x
  if_nz r0.x
    mul o0.xyz, r1.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000)
    ret 
  endif 
else 
  if_nz r0.y
    mul r0.xyzw, v0.xxyy, l(12.000000, 12.000000, 6.000000, 6.000000)
    ge r0.xyzw, r0.xyzw, -r0.yyww
    movc r0.xyzw, r0.xyzw, l(12.000000,0.083333,6.000000,0.166667), l(-12.000000,-0.083333,-6.000000,-0.166667)
    mul r0.yw, r0.yyyw, v0.xxxy
    frc r0.yw, r0.yyyw
    mul r0.xy, r0.ywyy, r0.xzxx
    ge r0.xy, l(1.000000, 1.000000, 0.000000, 0.000000), r0.xyxx
    and r0.x, r0.y, r0.x
    if_nz r0.x
      mul o0.xyz, r1.xyzx, l(1.000000, 0.000000, 0.000000, 0.000000)
      ret 
    endif 
    add r0.x, v0.x, l(8.000000)
    mul r0.z, r0.x, l(12.000000)
    ge r0.z, r0.z, -r0.z
    movc r0.zw, r0.zzzz, l(0,0,12.000000,0.083333), l(0,0,-12.000000,-0.083333)
    mul r0.x, r0.w, r0.x
    frc r0.x, r0.x
    mul r0.x, r0.x, r0.z
    ge r0.x, l(1.000000), r0.x
    and r0.x, r0.y, r0.x
    if_nz r0.x
      mul o0.xyz, r1.xyzx, l(0.000000, 1.000000, 0.000000, 0.000000)
      ret 
    endif 
    add r0.x, v0.x, l(4.000000)
    mul r0.z, r0.x, l(12.000000)
    ge r0.z, r0.z, -r0.z
    movc r0.zw, r0.zzzz, l(0,0,12.000000,0.083333), l(0,0,-12.000000,-0.083333)
    mul r0.x, r0.w, r0.x
    frc r0.x, r0.x
    mul r0.x, r0.x, r0.z
    ge r0.x, l(1.000000), r0.x
    and r0.x, r0.y, r0.x
    if_nz r0.x
      mul o0.xyz, r1.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000)
      ret 
    endif 
    add r0.xy, v0.xyxx, l(6.000000, 3.000000, 0.000000, 0.000000)
    mul r2.xyzw, r0.xxyy, l(12.000000, 12.000000, 6.000000, 6.000000)
    ge r2.xyzw, r2.xyzw, -r2.yyww
    movc r2.xyzw, r2.xyzw, l(12.000000,0.083333,6.000000,0.166667), l(-12.000000,-0.083333,-6.000000,-0.166667)
    mul r0.xy, r0.xyxx, r2.ywyy
    frc r0.xy, r0.xyxx
    mul r0.xy, r0.xyxx, r2.xzxx
    ge r0.xy, l(1.000000, 1.000000, 0.000000, 0.000000), r0.xyxx
    and r0.x, r0.y, r0.x
    if_nz r0.x
      mul o0.xyz, r1.xyzx, l(1.000000, 0.000000, 0.000000, 0.000000)
      ret 
    endif 
    add r0.x, v0.x, l(14.000000)
    mul r0.z, r0.x, l(12.000000)
    ge r0.z, r0.z, -r0.z
    movc r0.zw, r0.zzzz, l(0,0,12.000000,0.083333), l(0,0,-12.000000,-0.083333)
    mul r0.x, r0.w, r0.x
    frc r0.x, r0.x
    mul r0.x, r0.x, r0.z
    ge r0.x, l(1.000000), r0.x
    and r0.x, r0.y, r0.x
    if_nz r0.x
      mul o0.xyz, r1.xyzx, l(0.000000, 1.000000, 0.000000, 0.000000)
      ret 
    endif 
    add r0.x, v0.x, l(10.000000)
    mul r0.z, r0.x, l(12.000000)
    ge r0.z, r0.z, -r0.z
    movc r0.zw, r0.zzzz, l(0,0,12.000000,0.083333), l(0,0,-12.000000,-0.083333)
    mul r0.x, r0.w, r0.x
    frc r0.x, r0.x
    mul r0.x, r0.x, r0.z
    ge r0.x, l(1.000000), r0.x
    and r0.x, r0.y, r0.x
    if_nz r0.x
      mul o0.xyz, r1.xyzx, l(0.000000, 0.000000, 1.000000, 0.000000)
      ret 
    endif 
  endif 
endif 
mov o0.xyz, l(0,0,0,0)
ret 
// Approximately 243 instruction slots used
