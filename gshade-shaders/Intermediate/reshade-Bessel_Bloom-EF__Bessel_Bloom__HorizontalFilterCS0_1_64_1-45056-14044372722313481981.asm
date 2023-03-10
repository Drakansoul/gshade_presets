//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Intensity;                   // Offset:    0 Size:     4 [unused]
//   float K;                           // Offset:    4 Size:     4
//   float Saturation;                  // Offset:    8 Size:     4 [unused]
//   float Threshold;                   // Offset:   12 Size:     4 [unused]
//   float SoftKnee;                    // Offset:   16 Size:     4 [unused]
//   float Gamma;                       // Offset:   20 Size:     4 [unused]
//   int Performance;                   // Offset:   24 Size:     4
//   bool Debug;                        // Offset:   28 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __V__Bessel_Bloom__Blur1          texture  float4          2d             t4      1 
// V__Bessel_Bloom__wBlur0               UAV  float4          2d             u0      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[2], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t4
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_input vThreadID.xy
dcl_temps 9
dcl_indexableTemp x0[3], 4
dcl_indexableTemp x1[3], 4
dcl_indexableTemp x2[3], 4
dcl_indexableTemp x3[3], 4
dcl_indexableTemp x4[3], 4
dcl_indexableTemp x5[3], 4
dcl_indexableTemp x6[3], 4
dcl_indexableTemp x7[3], 4
dcl_thread_group 1, 64, 1
switch cb0[1].z
  case l(0)
  mul r0.xy, cb0[0].yyyy, l(0.250000, 0.750000, 0.000000, 0.000000)
  ishl r0.z, vThreadID.x, l(8)
  utof r1.x, r0.z
  utof r1.y, vThreadID.y
  mad r0.z, r0.x, r0.x, r0.y
  add r0.z, r0.z, l(3.000000)
  div r2.xyz, l(3.000000, 6.000000, 3.000000, 0.000000), r0.zzzz
  mul r0.w, r0.x, cb0[0].y
  mad r3.x, r0.w, l(0.500000), l(-6.000000)
  mad r0.x, -r0.x, r0.x, r0.y
  add r3.y, r0.x, l(-3.000000)
  div r0.xy, r3.xyxx, r0.zzzz
  add r3.xyzw, r1.xyxy, l(0.500000, 0.500000, -63.500000, 0.500000)
  max r0.zw, r3.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  min r0.zw, r0.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
  ftoi r4.xy, r0.zwzz
  mov r4.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.xyzw, t4.xyzw
  mul r0.z, r4.w, l(3.000000)
  exp r0.z, -r0.z
  mul r1.xzw, r0.zzzz, r4.xxyz
  mov x1[0].x, r1.x
  mov x1[1].xy, r1.zzzz
  mov x1[2].xy, r1.wwww
  mov x1[0].y, r1.x
  mov x0[0].xy, r1.xxxx
  mov x0[1].xy, r1.zzzz
  mov x0[2].xy, r1.wwww
  ftoi r4.yzw, r3.yyyy
  add r1.y, r1.y, l(0.500000)
  mov r5.zw, l(0,0,0,0)
  mov r0.zw, l(0,0,-63,-1)
  loop 
    breakc_z r0.w
    itof r1.z, r0.z
    add r1.x, r1.z, r3.x
    max r1.zw, r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
    min r1.zw, r1.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
    ftoi r5.xy, r1.zwzz
    ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r5.xyzw, t4.xyzw
    mul r1.z, r6.w, l(3.000000)
    exp r1.z, -r1.z
    mul r6.xyz, r1.zzzz, r6.zxyz
    mov r6.w, x0[0].x
    mov r7.z, x0[0].y
    mov x0[0].xy, r6.ywyy
    mov r7.xy, r6.ywyy
    dp3 r1.z, r7.xyzx, r2.xyzx
    mov r3.yz, x1[0].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r7.x, r1.w, r1.z
    mov r7.y, x1[0].x
    mov x1[0].xy, r7.xyxx
    mov r8.y, x0[1].x
    mov r8.z, x0[1].y
    mov r8.x, r6.z
    mov x0[1].xy, r8.xyxx
    dp3 r1.z, r8.xyzx, r2.xyzx
    mov r3.yz, x1[1].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r5.x, r1.w, r1.z
    mov r5.y, x1[1].x
    mov x1[1].xy, r5.xyxx
    mov r6.y, x0[2].x
    mov r6.z, x0[2].y
    mov x0[2].xy, r6.xyxx
    dp3 r1.z, r6.xyzx, r2.xyzx
    mov r3.yz, x1[2].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r6.x, r1.w, r1.z
    mov r6.y, x1[2].x
    mov x1[2].xy, r6.xyxx
    ige r1.z, r0.z, l(0)
    if_nz r1.z
      ftoi r4.x, r1.x
      rcp r1.x, r7.x
      rcp r1.z, r5.x
      rcp r1.w, r6.x
      min r1.x, r1.z, r1.x
      min r1.x, r1.w, r1.x
      lt r1.x, l(8.000000), r1.x
      and r8.w, r1.x, l(0x3f800000)
      movc r1.x, r1.x, l(8.000000), l(1.000000)
      mov r7.z, r5.x
      mov r7.w, r6.x
      mul r8.xyz, r1.xxxx, r7.xzwx
      store_uav_typed u0.xyzw, r4.xyzw, r8.xyzw
    endif 
    iadd r0.z, r0.z, l(1)
    ilt r0.w, r0.z, l(256)
  endloop 
  break 
  case l(1)
  mul r0.xy, cb0[0].yyyy, l(0.500000, 1.500000, 0.000000, 0.000000)
  ishl r0.z, vThreadID.x, l(8)
  utof r1.x, r0.z
  utof r1.y, vThreadID.y
  mad r0.z, r0.x, r0.x, r0.y
  add r0.z, r0.z, l(3.000000)
  div r2.xyz, l(3.000000, 6.000000, 3.000000, 0.000000), r0.zzzz
  mad r3.x, cb0[0].y, r0.x, l(-6.000000)
  mad r0.x, -r0.x, r0.x, r0.y
  add r3.y, r0.x, l(-3.000000)
  div r0.xy, r3.xyxx, r0.zzzz
  add r3.xyzw, r1.xyxy, l(0.500000, 0.500000, -127.500000, 0.500000)
  max r0.zw, r3.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  min r0.zw, r0.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
  ftoi r4.xy, r0.zwzz
  mov r4.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.xyzw, t4.xyzw
  mul r0.z, r4.w, l(3.000000)
  exp r0.z, -r0.z
  mul r1.xzw, r0.zzzz, r4.xxyz
  mov x3[0].x, r1.x
  mov x3[1].xy, r1.zzzz
  mov x3[2].xy, r1.wwww
  mov x3[0].y, r1.x
  mov x2[0].xy, r1.xxxx
  mov x2[1].xy, r1.zzzz
  mov x2[2].xy, r1.wwww
  ftoi r4.yzw, r3.yyyy
  add r1.y, r1.y, l(0.500000)
  mov r5.zw, l(0,0,0,0)
  mov r0.zw, l(0,0,-127,-1)
  loop 
    breakc_z r0.w
    itof r1.z, r0.z
    add r1.x, r1.z, r3.x
    max r1.zw, r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
    min r1.zw, r1.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
    ftoi r5.xy, r1.zwzz
    ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r5.xyzw, t4.xyzw
    mul r1.z, r6.w, l(3.000000)
    exp r1.z, -r1.z
    mul r6.xyz, r1.zzzz, r6.zxyz
    mov r6.w, x2[0].x
    mov r7.z, x2[0].y
    mov x2[0].xy, r6.ywyy
    mov r7.xy, r6.ywyy
    dp3 r1.z, r7.xyzx, r2.xyzx
    mov r3.yz, x3[0].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r7.x, r1.w, r1.z
    mov r7.y, x3[0].x
    mov x3[0].xy, r7.xyxx
    mov r8.y, x2[1].x
    mov r8.z, x2[1].y
    mov r8.x, r6.z
    mov x2[1].xy, r8.xyxx
    dp3 r1.z, r8.xyzx, r2.xyzx
    mov r3.yz, x3[1].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r5.x, r1.w, r1.z
    mov r5.y, x3[1].x
    mov x3[1].xy, r5.xyxx
    mov r6.y, x2[2].x
    mov r6.z, x2[2].y
    mov x2[2].xy, r6.xyxx
    dp3 r1.z, r6.xyzx, r2.xyzx
    mov r3.yz, x3[2].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r6.x, r1.w, r1.z
    mov r6.y, x3[2].x
    mov x3[2].xy, r6.xyxx
    ige r1.z, r0.z, l(0)
    if_nz r1.z
      ftoi r4.x, r1.x
      rcp r1.x, r7.x
      rcp r1.z, r5.x
      rcp r1.w, r6.x
      min r1.x, r1.z, r1.x
      min r1.x, r1.w, r1.x
      lt r1.x, l(8.000000), r1.x
      and r8.w, r1.x, l(0x3f800000)
      movc r1.x, r1.x, l(8.000000), l(1.000000)
      mov r7.z, r5.x
      mov r7.w, r6.x
      mul r8.xyz, r1.xxxx, r7.xzwx
      store_uav_typed u0.xyzw, r4.xyzw, r8.xyzw
    endif 
    iadd r0.z, r0.z, l(1)
    ilt r0.w, r0.z, l(256)
  endloop 
  break 
  case l(3)
  add r0.x, cb0[0].y, cb0[0].y
  ishl r0.y, vThreadID.x, l(8)
  utof r1.x, r0.y
  utof r1.y, vThreadID.y
  mul r0.y, cb0[0].y, l(6.000000)
  mad r0.z, r0.x, r0.x, r0.y
  add r0.z, r0.z, l(3.000000)
  div r2.xyz, l(3.000000, 6.000000, 3.000000, 0.000000), r0.zzzz
  mul r0.w, r0.x, cb0[0].y
  mad r3.x, r0.w, l(4.000000), l(-6.000000)
  mad r0.x, -r0.x, r0.x, r0.y
  add r3.y, r0.x, l(-3.000000)
  div r0.xy, r3.xyxx, r0.zzzz
  add r3.xyzw, r1.xyxy, l(0.500000, 0.500000, -511.500000, 0.500000)
  max r0.zw, r3.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  min r0.zw, r0.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
  ftoi r4.xy, r0.zwzz
  mov r4.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.xyzw, t4.xyzw
  mul r0.z, r4.w, l(3.000000)
  exp r0.z, -r0.z
  mul r1.xzw, r0.zzzz, r4.xxyz
  mov x5[0].x, r1.x
  mov x5[1].xy, r1.zzzz
  mov x5[2].xy, r1.wwww
  mov x5[0].y, r1.x
  mov x4[0].xy, r1.xxxx
  mov x4[1].xy, r1.zzzz
  mov x4[2].xy, r1.wwww
  ftoi r4.yzw, r3.yyyy
  add r1.y, r1.y, l(0.500000)
  mov r5.zw, l(0,0,0,0)
  mov r0.zw, l(0,0,-511,-1)
  loop 
    breakc_z r0.w
    itof r1.z, r0.z
    add r1.x, r1.z, r3.x
    max r1.zw, r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
    min r1.zw, r1.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
    ftoi r5.xy, r1.zwzz
    ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r5.xyzw, t4.xyzw
    mul r1.z, r6.w, l(3.000000)
    exp r1.z, -r1.z
    mul r6.xyz, r1.zzzz, r6.zxyz
    mov r6.w, x4[0].x
    mov r7.z, x4[0].y
    mov x4[0].xy, r6.ywyy
    mov r7.xy, r6.ywyy
    dp3 r1.z, r7.xyzx, r2.xyzx
    mov r3.yz, x5[0].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r7.x, r1.w, r1.z
    mov r7.y, x5[0].x
    mov x5[0].xy, r7.xyxx
    mov r8.y, x4[1].x
    mov r8.z, x4[1].y
    mov r8.x, r6.z
    mov x4[1].xy, r8.xyxx
    dp3 r1.z, r8.xyzx, r2.xyzx
    mov r3.yz, x5[1].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r5.x, r1.w, r1.z
    mov r5.y, x5[1].x
    mov x5[1].xy, r5.xyxx
    mov r6.y, x4[2].x
    mov r6.z, x4[2].y
    mov x4[2].xy, r6.xyxx
    dp3 r1.z, r6.xyzx, r2.xyzx
    mov r3.yz, x5[2].xxyx
    dp2 r1.w, r3.yzyy, r0.xyxx
    add r6.x, r1.w, r1.z
    mov r6.y, x5[2].x
    mov x5[2].xy, r6.xyxx
    ige r1.z, r0.z, l(0)
    if_nz r1.z
      ftoi r4.x, r1.x
      rcp r1.x, r7.x
      rcp r1.z, r5.x
      rcp r1.w, r6.x
      min r1.x, r1.z, r1.x
      min r1.x, r1.w, r1.x
      lt r1.x, l(8.000000), r1.x
      and r8.w, r1.x, l(0x3f800000)
      movc r1.x, r1.x, l(8.000000), l(1.000000)
      mov r7.z, r5.x
      mov r7.w, r6.x
      mul r8.xyz, r1.xxxx, r7.xzwx
      store_uav_typed u0.xyzw, r4.xyzw, r8.xyzw
    endif 
    iadd r0.z, r0.z, l(1)
    ilt r0.w, r0.z, l(256)
  endloop 
  break 
  default 
  ishl r0.x, vThreadID.x, l(8)
  utof r0.x, r0.x
  utof r0.y, vThreadID.y
  mul r0.z, cb0[0].y, cb0[0].y
  mul r0.w, cb0[0].y, l(3.000000)
  mad r1.x, cb0[0].y, cb0[0].y, r0.w
  add r1.x, r1.x, l(3.000000)
  div r1.yzw, l(0.000000, 3.000000, 6.000000, 3.000000), r1.xxxx
  mad r2.x, r0.z, l(2.000000), l(-6.000000)
  mad r0.z, -cb0[0].y, cb0[0].y, r0.w
  add r2.y, r0.z, l(-3.000000)
  div r0.zw, r2.xxxy, r1.xxxx
  add r2.xyzw, r0.xyxy, l(0.500000, 0.500000, -255.500000, 0.500000)
  max r2.zw, r2.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  min r2.zw, r2.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
  ftoi r3.xy, r2.zwzz
  mov r3.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyzw, t4.xyzw
  mul r0.x, r3.w, l(3.000000)
  exp r0.x, -r0.x
  mul r3.xyz, r0.xxxx, r3.xyzx
  mov x7[0].x, r3.x
  mov x7[1].xy, r3.yyyy
  mov x7[2].xy, r3.zzzz
  mov x7[0].y, r3.x
  mov x6[0].xy, r3.xxxx
  mov x6[1].xy, r3.yyyy
  mov x6[2].xy, r3.zzzz
  ftoi r3.yzw, r2.yyyy
  add r0.y, r0.y, l(0.500000)
  mov r4.zw, l(0,0,0,0)
  mov r1.x, l(-255)
  mov r2.y, l(-1)
  loop 
    breakc_z r2.y
    itof r2.z, r1.x
    add r0.x, r2.z, r2.x
    max r2.zw, r0.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
    min r2.zw, r2.zzzw, l(0.000000, 0.000000, 3839.000000, 2136.000000)
    ftoi r4.xy, r2.zwzz
    ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.xyzw, t4.xyzw
    mul r2.z, r5.w, l(3.000000)
    exp r2.z, -r2.z
    mul r5.xyz, r2.zzzz, r5.zxyz
    mov r5.w, x6[0].x
    mov r6.z, x6[0].y
    mov x6[0].xy, r5.ywyy
    mov r6.xy, r5.ywyy
    dp3 r2.z, r6.xyzx, r1.yzwy
    mov r4.xy, x7[0].xyxx
    dp2 r2.w, r4.xyxx, r0.zwzz
    add r6.x, r2.w, r2.z
    mov r6.y, x7[0].x
    mov x7[0].xy, r6.xyxx
    mov r7.y, x6[1].x
    mov r7.z, x6[1].y
    mov r7.x, r5.z
    mov x6[1].xy, r7.xyxx
    dp3 r2.z, r7.xyzx, r1.yzwy
    mov r4.xy, x7[1].xyxx
    dp2 r2.w, r4.xyxx, r0.zwzz
    add r4.x, r2.w, r2.z
    mov r4.y, x7[1].x
    mov x7[1].xy, r4.xyxx
    mov r5.y, x6[2].x
    mov r5.z, x6[2].y
    mov x6[2].xy, r5.xyxx
    dp3 r2.z, r5.xyzx, r1.yzwy
    mov r5.xy, x7[2].xyxx
    dp2 r2.w, r5.xyxx, r0.zwzz
    add r5.x, r2.w, r2.z
    mov r5.y, x7[2].x
    mov x7[2].xy, r5.xyxx
    ige r2.z, r1.x, l(0)
    if_nz r2.z
      ftoi r3.x, r0.x
      rcp r0.x, r6.x
      rcp r2.z, r4.x
      rcp r2.w, r5.x
      min r0.x, r0.x, r2.z
      min r0.x, r2.w, r0.x
      lt r0.x, l(8.000000), r0.x
      and r7.w, r0.x, l(0x3f800000)
      movc r0.x, r0.x, l(8.000000), l(1.000000)
      mov r6.z, r4.x
      mov r6.w, r5.x
      mul r7.xyz, r0.xxxx, r6.xzwx
      store_uav_typed u0.xyzw, r3.xyzw, r7.xyzw
    endif 
    iadd r1.x, r1.x, l(1)
    ilt r2.y, r1.x, l(256)
  endloop 
  break 
endswitch 
ret 
// Approximately 376 instruction slots used
