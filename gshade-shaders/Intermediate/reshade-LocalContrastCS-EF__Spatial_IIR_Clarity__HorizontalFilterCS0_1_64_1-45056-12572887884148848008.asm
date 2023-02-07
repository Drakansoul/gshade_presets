//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Strength;                    // Offset:    0 Size:     4 [unused]
//   float WeightExponent;              // Offset:    4 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __V__Spatial_IIR_Clarity__Luma    texture  float4          2d             t2      1 
// V__Spatial_IIR_Clarity__wBlur0        UAV   float          2d             u1      1 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t2
dcl_uav_typed_texture2d (float,float,float,float) u1
dcl_input vThreadID.xy
dcl_temps 4
dcl_thread_group 1, 64, 1
ult r0.x, vThreadID.x, l(30)
if_nz r0.x
  ishl r0.x, vThreadID.x, l(7)
  utof r0.x, r0.x
  utof r0.y, vThreadID.y
  add r0.xyz, r0.xyxx, l(0.500000, 0.500000, -127.500000, 0.000000)
  ftoi r1.yz, r0.zzyz
  mov r1.w, l(0)
  ld_indexable(texture2d)(float,float,float,float) r0.z, r1.yzww, t2.yzxw
  ftoi r2.y, r0.y
  mov r2.zw, l(0,0,0,0)
  mov r0.y, r0.z
  mov r0.w, l(-127)
  mov r1.y, l(-1)
  loop 
    breakc_z r1.y
    itof r1.w, r0.w
    add r1.w, r0.x, r1.w
    ftoi r2.x, r1.w
    ld_indexable(texture2d)(float,float,float,float) r2.x, r2.xyzw, t2.xyzw
    add r3.x, -r0.y, r2.x
    add r3.x, -|r3.x|, l(1.000000)
    log r3.x, |r3.x|
    mul r3.x, r3.x, cb0[0].y
    exp r3.x, r3.x
    add r3.y, r0.y, -r2.x
    mad r0.y, r3.x, r3.y, r2.x
    ige r2.x, r0.w, l(0)
    lt r3.x, r1.w, l(3840.000000)
    and r2.x, r2.x, r3.x
    if_nz r2.x
      ftoi r1.x, r1.w
      store_uav_typed u1.xyzw, r1.xzzz, r0.yyyy
    endif 
    iadd r0.w, r0.w, l(1)
    ilt r1.y, r0.w, l(128)
  endloop 
else 
  ishl r0.x, vThreadID.x, l(7)
  iadd r0.x, r0.x, l(-3712)
  utof r0.x, r0.x
  utof r0.y, vThreadID.y
  add r0.xyzw, r0.xyxx, l(0.500000, 0.500000, 128.500000, 3840.500000)
  ftoi r1.yz, r0.zzyz
  mov r1.w, l(0)
  ld_indexable(texture2d)(float,float,float,float) r0.z, r1.yzww, t2.yzxw
  ftoi r2.y, r0.y
  mov r2.zw, l(0,0,0,0)
  mov r0.y, r0.z
  mov r1.yw, l(0,127,0,-1)
  loop 
    breakc_z r1.w
    itof r3.x, r1.y
    add r3.y, r0.x, r3.x
    ftoi r2.x, r3.y
    ld_indexable(texture2d)(float,float,float,float) r2.x, r2.xyzw, t2.xyzw
    add r3.y, -r0.y, r2.x
    add r3.y, -|r3.y|, l(1.000000)
    log r3.y, |r3.y|
    mul r3.y, r3.y, cb0[0].y
    exp r3.y, r3.y
    add r3.z, r0.y, -r2.x
    mad r0.y, r3.y, r3.z, r2.x
    ige r2.x, l(0), r1.y
    if_nz r2.x
      add r2.x, r0.w, r3.x
      ftoi r1.x, r2.x
      store_uav_typed u1.xyzw, r1.xzzz, r0.yyyy
    endif 
    iadd r1.y, r1.y, l(-1)
    ilt r1.w, l(-128), r1.y
  endloop 
endif 
ret 
// Approximately 74 instruction slots used