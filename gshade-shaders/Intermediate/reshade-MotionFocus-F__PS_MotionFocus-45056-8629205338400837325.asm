//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__Ganossa_MF_QuadFullTex       texture  float4          2d             t8      1 
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
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t8
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 24
ge r0.xy, l(0.000521, 0.000936, 0.000000, 0.000000), v1.xyxx
and r0.x, r0.y, r0.x
not r0.x, r0.x
discard_nz r0.x
mov r0.yzw, l(0,0.001872,0.020390,0.038909)
mov r1.yzw, l(0,0.057427,0.075946,0.094464)
mov r2.yzw, l(0,0.112983,0.131501,0.150020)
mov r3.yzw, l(0,0.168538,0.187057,0.205575)
mov r4.yzw, l(0,0.224094,0.242612,0.261131)
mov r5.yzw, l(0,0.279650,0.298168,0.316687)
mov r6.yzw, l(0,0.335205,0.353724,0.372242)
mov r7.yzw, l(0,0.390761,0.409279,0.427798)
mov r8.yzw, l(0,0.446316,0.464835,0.483353)
mov r9.yzw, l(0,0.501872,0.520390,0.538909)
mov r10.yzw, l(0,0.557427,0.575946,0.594465)
mov r11.yzw, l(0,0.612983,0.631502,0.650020)
mov r12.yzw, l(0,0.668539,0.687057,0.705576)
mov r13.yzw, l(0,0.724094,0.742613,0.761131)
mov r14.yzw, l(0,0.779650,0.798168,0.816687)
mov r15.yzw, l(0,0.835205,0.853724,0.872242)
mov r16.yzw, l(0,0.890761,0.909280,0.927798)
mov r17.yzw, l(0,0.946317,0.964835,0.983353)
mov r18.xyzw, l(0,0,0,0)
mov r19.xy, l(2.000000,-1,0,0)
loop 
  breakc_z r19.y
  mul r0.x, r19.x, l(0.000521)
  sample_indexable(texture2d)(float,float,float,float) r20.xyz, r0.xyxx, t8.xyzw, s0
  add r19.z, r20.y, r20.x
  add r19.z, r20.z, r19.z
  lt r19.w, r19.x, l(960.000000)
  lt r21.x, l(960.000000), r19.x
  add r21.y, r18.y, r19.z
  add r20.xy, r18.xwxx, r19.zzzz
  mov r21.z, r18.w
  mov r20.z, r18.y
  movc r22.yz, r21.xxxx, r21.yyzy, r20.zzyz
  mov r20.w, r21.z
  mov r22.x, r18.x
  movc r20.xyz, r19.wwww, r20.xzwx, r22.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r0.xzxx, t8.wxyz, s0
  add r19.z, r21.z, r21.y
  add r19.z, r21.w, r19.z
  add r22.xyw, r19.zzzz, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r0.xwxx, t8.wxyz, s0
  add r19.z, r21.z, r21.y
  add r19.z, r21.w, r19.z
  add r22.xyw, r19.zzzz, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r1.x, r0.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r1.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r1.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r1.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r2.x, r1.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r2.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r2.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r2.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r3.x, r2.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r3.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r3.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r3.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r4.x, r3.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r4.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r4.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r4.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r5.x, r4.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r5.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r5.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r5.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r6.x, r5.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r6.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r6.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r6.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r7.x, r6.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r7.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r7.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r7.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  mov r8.x, r7.x
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r8.xyxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.xyzx, r23.xyzx
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r8.xzxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyw, r0.xxxx, r20.xyxz
  mov r22.z, r20.z
  mov r20.w, r22.w
  movc r23.yz, r21.xxxx, r22.yyzy, r20.yywy
  mov r22.y, r20.y
  mov r23.x, r20.x
  movc r20.xyz, r19.wwww, r22.yxzy, r23.yxzy
  sample_indexable(texture2d)(float,float,float,float) r21.yzw, r8.xwxx, t8.wxyz, s0
  add r0.x, r21.z, r21.y
  add r0.x, r21.w, r0.x
  add r22.xyz, r0.xxxx, r20.xyzx
  mov r22.w, r20.z
  mov r20.w, r22.z
  movc r20.zw, r21.xxxx, r22.xxxw, r20.xxxw
  mov r22.z, r20.x
  movc r20.yzw, r19.wwww, r22.yyzw, r20.yyzw
  mov r9.x, r8.x
  sample_indexable(texture2d)(float,float,float,float) r21.xyz, r9.xyxx, t8.xyzw, s0
  add r0.x, r21.y, r21.x
  add r0.x, r21.z, r0.x
  add r20.x, r0.x, r18.z
  add r18.w, r0.x, r20.w
  movc r21.zw, r19.wwww, r20.xxxw, r18.zzzw
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r9.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r9.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r10.x, r9.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r10.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r10.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r10.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r11.x, r10.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r11.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r11.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r11.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r12.x, r11.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r12.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r12.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r12.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r13.x, r12.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r13.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r13.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r13.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r14.x, r13.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r14.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r14.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r14.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r15.x, r14.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r15.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r15.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r15.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r16.x, r15.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r16.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r16.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r16.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  mov r17.x, r16.x
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r17.xyxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r17.xzxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r21.zw, r19.wwww, r21.xxxw, r21.zzzy
  sample_indexable(texture2d)(float,float,float,float) r22.xyz, r17.xwxx, t8.xyzw, s0
  add r0.x, r22.y, r22.x
  add r0.x, r22.z, r0.x
  add r21.xy, r0.xxxx, r21.zwzz
  movc r19.zw, r19.wwww, r21.xxxw, r21.zzzy
  add r19.x, r19.x, l(20.000000)
  lt r19.y, r19.x, l(1920.000000)
  mov r18.xy, r20.yzyy
  mov r18.zw, r19.zzzw
endloop 
mul o0.xyzw, r18.xyzw, l(0.000193, 0.000193, 0.000193, 0.000193)
ret 
// Approximately 459 instruction slots used
