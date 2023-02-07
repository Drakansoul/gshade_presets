//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int UI_ME_LAYER_MAX;               // Offset:    0 Size:     4
//   float UI_ME_PYRAMID_UPSCALE_FILTER_RADIUS;// Offset:    4 Size:     4 [unused]
//   bool SHOWME;                       // Offset:    8 Size:     4 [unused]
//   uint FRAME_COUNT;                  // Offset:   12 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__FeatureCurr                  texture  float4          2d             t8      1 
// __V__FeaturePrev                  texture  float4          2d            t10      1 
// __V__MVJitterTex                  texture  float4          2d            t30      1 
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
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t30
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 15
dcl_indexableTemp x0[9], 4
ige r0.x, l(6), cb0[0].x
if_nz r0.x
  add r0.xyzw, v1.xyxy, l(-0.016667, -0.029949, -0.016667, 0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, r0.xyxx, t8.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.zw, r0.xyxx, t10.zwxy, s0, l(0.000000)
  mov x0[0].xy, r1.xyxx
  mul r2.yz, r1.zzwz, r1.zzwz
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r3.xy, r0.zwzz, t8.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r0.zw, r0.zwzz, t10.zwxy, s0, l(0.000000)
  mov x0[1].xy, r3.xyxx
  mul r3.zw, r3.xxxy, r3.xxxy
  mad r3.zw, r1.xxxy, r1.xxxy, r3.zzzw
  mul r4.yz, r0.zzwz, r0.zzwz
  mov r2.x, r1.z
  mov r4.x, r0.z
  add r2.xyz, r2.xyzx, r4.xyzx
  mul r0.zw, r0.zzzw, r3.xxxy
  mad r0.zw, r1.xxxy, r1.zzzw, r0.zzzw
  add r1.xyzw, v1.xyxy, l(-0.016667, 0.029949, 0.000000, -0.029949)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r3.xy, r1.xyxx, t8.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t10.xyzw, s0, l(0.000000)
  mov x0[2].xy, r3.xyxx
  mad r3.zw, r3.xxxy, r3.xxxy, r3.zzzw
  mul r4.yz, r1.xxyx, r1.xxyx
  mov r4.x, r1.x
  add r2.xyz, r2.xyzx, r4.xyzx
  mad r0.zw, r3.xxxy, r1.xxxy, r0.zzzw
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, r1.zwzz, t8.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.zw, r1.zwzz, t10.zwxy, s0, l(0.000000)
  mov x0[3].xy, r1.xyxx
  mad r3.xy, r1.xyxx, r1.xyxx, r3.zwzz
  mul r4.yz, r1.zzwz, r1.zzwz
  mov r4.x, r1.z
  add r2.xyz, r2.xyzx, r4.xyzx
  mad r0.zw, r1.xxxy, r1.zzzw, r0.zzzw
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, v1.xyxx, t8.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.zw, v1.xyxx, t10.zwxy, s0, l(0.000000)
  mov x0[4].xy, r1.xyxx
  mad r3.xy, r1.xyxx, r1.xyxx, r3.xyxx
  mul r4.yz, r1.zzwz, r1.zzwz
  mov r4.x, r1.z
  add r2.xyz, r2.xyzx, r4.xyzx
  mad r0.zw, r1.xxxy, r1.zzzw, r0.zzzw
  add r1.xyzw, v1.xyxy, l(0.000000, 0.029949, 0.016667, -0.029949)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r3.zw, r1.xyxx, t8.zwxy, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t10.xyzw, s0, l(0.000000)
  mov x0[5].xy, r3.zwzz
  mad r3.xy, r3.zwzz, r3.zwzz, r3.xyxx
  mul r4.yz, r1.xxyx, r1.xxyx
  mov r4.x, r1.x
  add r2.xyz, r2.xyzx, r4.xyzx
  mad r0.zw, r3.zzzw, r1.xxxy, r0.zzzw
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, r1.zwzz, t8.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.zw, r1.zwzz, t10.zwxy, s0, l(0.000000)
  mov x0[6].xy, r1.xyxx
  mad r3.xy, r1.xyxx, r1.xyxx, r3.xyxx
  mul r4.yz, r1.zzwz, r1.zzwz
  mov r4.x, r1.z
  add r2.xyz, r2.xyzx, r4.xyzx
  mad r0.zw, r1.xxxy, r1.zzzw, r0.zzzw
  add r1.xyzw, v1.xyxy, l(0.016667, 0.000000, 0.016667, 0.029949)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r3.zw, r1.xyxx, t8.zwxy, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t10.xyzw, s0, l(0.000000)
  mov x0[7].xy, r3.zwzz
  mad r3.xy, r3.zwzz, r3.zwzz, r3.xyxx
  mul r4.yz, r1.xxyx, r1.xxyx
  mov r4.x, r1.x
  add r2.xyz, r2.xyzx, r4.xyzx
  mad r0.zw, r3.zzzw, r1.xxxy, r0.zzzw
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.xy, r1.zwzz, t8.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r1.zw, r1.zwzz, t10.zwxy, s0, l(0.000000)
  mov x0[8].xy, r1.xyxx
  mad r3.xy, r1.xyxx, r1.xyxx, r3.xyxx
  mul r4.yz, r1.zzwz, r1.zzwz
  mov r4.x, r1.z
  add r2.xyz, r2.xyzx, r4.xyzx
  mad r0.zw, r1.xxxy, r1.zzzw, r0.zzzw
  mul r1.xy, r3.xyxx, l(0.111111, 0.111111, 0.000000, 0.000000)
  mov r1.z, l(0.111111)
  mul r2.xyz, r1.zzyz, r2.xyzx
  mul r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.111111, 0.111111)
  mul r2.zw, r1.xxxz, r2.yyyz
  rsq r2.zw, r2.zzzw
  mul r0.zw, r0.zzzw, r2.zzzw
  min_sat r0.z, r0.w, r0.z
  mad r0.w, r2.x, r2.x, -r2.y
  ftou r2.xy, v0.xyxx
  and r2.xy, r2.xyxx, l(31, 31, 0, 0)
  mov r2.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r1.w, r2.xyzw, t30.yzwx
  and r2.x, cb0[0].w, l(15)
  imul null, r2.x, r2.x, l(5)
  ishl r2.x, r2.x, l(1)
  utof r2.x, r2.x
  mad r1.w, r2.x, l(0.618034), r1.w
  frc r1.w, r1.w
  mul r1.w, r1.w, l(6.283000)
  sincos r2.x, r3.x, r1.w
  lt r1.w, r0.z, l(0.999999)
  mov r4.xy, l(0,0,0,0)
  mov r5.xy, l(0,0,0,0)
  mov r5.z, r2.x
  mov r5.w, r3.x
  mov r2.yz, l(0,0,0,0)
  mov r3.yz, l(0,0.016667,0.029949,0)
  mov r2.w, r0.z
  mov r3.w, |r0.w|
  mov r6.x, l(0)
  mov r6.y, r1.w
  loop 
    breakc_z r6.y
    lt r6.z, r2.w, l(0.999999)
    add r7.xy, r0.xyxx, r2.yzyy
    mov r8.zw, r5.xxxy
    mov r4.zw, r5.zzzw
    mov r8.x, r2.w
    mov r8.y, r3.w
    mov r6.w, l(1)
    mov r7.z, r6.z
    loop 
      breakc_z r7.z
      dp2 r9.x, r4.zwzz, l(-0.737369, -0.675490, 0.000000, 0.000000)
      dp2 r9.y, r4.zwzz, l(0.675490, -0.737369, 0.000000, 0.000000)
      mul r10.zw, r3.yyyz, r9.xxxy
      mad r9.zw, r9.xxxy, r3.yyyz, r7.xxxy
      mov r12.xy, l(0,0,0,0)
      mov r7.w, l(0)
      mov r11.xyzw, l(0,0,0,-1)
      loop 
        breakc_z r11.w
        udiv r13.x, r14.x, r7.w, l(3)
        utof r13.x, r13.x
        utof r13.y, r14.x
        mad r12.zw, r13.xxxy, l(0.000000, 0.000000, 0.016667, 0.029949), r9.zzzw
        sample_l_aoffimmi_indexable(6,0,0)(texture2d)(float,float,float,float) r12.zw, r12.zwzz, t10.zwxy, s0, l(0.000000)
        mul r13.yz, r12.zzwz, r12.zzwz
        mov r13.x, r12.z
        add r11.xyz, r11.xyzx, r13.xyzx
        mov r13.xy, x0[r7.w + 0].xyxx
        mad r12.xy, r12.zwzz, r13.xyxx, r12.xyxx
        iadd r7.w, r7.w, l(1)
        ult r11.w, r7.w, l(9)
      endloop 
      mul r13.xyz, r1.zzyz, r11.xyzx
      mul r9.zw, r12.xxxy, l(0.000000, 0.000000, 0.111111, 0.111111)
      mul r12.zw, r1.xxxz, r13.yyyz
      rsq r12.zw, r12.zzzw
      mul r9.zw, r9.zzzw, r12.zzzw
      min_sat r10.x, r9.w, r9.z
      lt r7.w, r8.x, r10.x
      mad r9.z, r13.x, r13.x, -r13.y
      mov r10.y, |r9.z|
      movc r8.xyzw, r7.wwww, r10.xyzw, r8.xyzw
      iadd r6.w, r6.w, l(1)
      ilt r7.w, r6.w, l(5)
      lt r9.z, r8.x, l(0.999999)
      and r7.z, r7.w, r9.z
      mov r4.zw, r9.xxxy
    endloop 
    mov r2.w, r8.x
    mov r3.w, r8.y
    add r2.yz, r2.yyzy, r8.zzwz
    mul r3.yz, r3.yyzy, l(0.000000, 0.500000, 0.500000, 0.000000)
    iadd r6.x, r6.x, l(1)
    ilt r6.z, r6.x, l(2)
    lt r6.w, r2.w, l(0.999999)
    and r6.y, r6.w, r6.z
    mov r5.xyzw, r4.xyzw
  endloop 
  mov o0.xy, r2.yzyy
  sqrt o0.z, r3.w
  mul r0.x, r2.w, r2.w
  mul o0.w, r0.x, r0.x
else 
  mov o0.xyzw, l(0,0,0,0)
endif 
ret 
// Approximately 177 instruction slots used
