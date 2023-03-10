//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Minimum;                     // Offset:    0 Size:     4 [unused]
//   float DarkThreshold;               // Offset:    4 Size:     4
//   float LightThreshold;              // Offset:    8 Size:     4
//   float Maximum;                     // Offset:   12 Size:     4 [unused]
//   float MaxVariance;                 // Offset:   16 Size:     4 [unused]
//   float DarkPeak;                    // Offset:   20 Size:     4 [unused]
//   float DarkMax;                     // Offset:   24 Size:     4 [unused]
//   float MidPeak;                     // Offset:   28 Size:     4 [unused]
//   float MidMax;                      // Offset:   32 Size:     4 [unused]
//   float LightPeak;                   // Offset:   36 Size:     4 [unused]
//   float LightMax;                    // Offset:   40 Size:     4 [unused]
//   uint Debug;                        // Offset:   44 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __V__Contrast__Histogram          texture  float4          2d             t2      1 
// __V__Contrast__PrefixSums         texture  float4          2d             t4      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_VERTEXID              0   x           0   VERTID    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_sgv v0.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_temps 3
mul r0.xy, cb0[0].zyzz, l(1023.000000, 1023.000000, 0.000000, 0.000000)
round_ne r0.xy, r0.xyxx
ftou r0.xy, r0.xyxx
uge r0.z, r0.y, v0.x
if_nz r0.z
  utof r0.z, r0.y
  ftoi r1.x, r0.z
  mov r1.yzw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r0.zw, r1.xyzw, t4.zwxy
  div r0.w, r0.w, r0.z
  utof r1.x, v0.x
  ftoi r2.x, r1.x
  mov r2.yzw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r1.y, r2.xyzw, t2.yxzw
  add r0.w, -r0.w, r1.x
  iadd r1.x, r0.y, l(-1)
  utof r1.x, r1.x
  div r0.w, |r0.w|, r1.x
  div r0.z, r1.y, r0.z
  mul o1.xy, r0.zzzz, r0.wwww
  mov r0.z, l(-0.666667)
else 
  uge r0.w, r0.x, v0.x
  if_nz r0.w
    utof r1.xy, r0.xyxx
    ftoi r2.x, r1.x
    mov r2.yzw, l(0,0,0,0)
    ld_indexable(texture2d)(float,float,float,float) r1.xz, r2.xyzw, t4.xzyw
    ftoi r2.x, r1.y
    mov r2.yzw, l(0,0,0,0)
    ld_indexable(texture2d)(float,float,float,float) r1.yw, r2.xyzw, t4.zxwy
    add r1.xy, -r1.ywyy, r1.xzxx
    div r0.w, r1.y, r1.x
    utof r1.y, v0.x
    ftoi r2.x, r1.y
    mov r2.yzw, l(0,0,0,0)
    ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t2.yzxw
    add r0.w, -r0.w, r1.y
    iadd r0.y, -r0.y, r0.x
    utof r0.y, r0.y
    div r0.y, |r0.w|, r0.y
    div r0.w, r1.z, r1.x
    mul o1.xy, r0.wwww, r0.yyyy
    mov r0.z, l(0)
  else 
    ld_indexable(texture2d)(float,float,float,float) r0.yw, l(1023, 0, 0, 0), t4.zxwy
    utof r1.x, r0.x
    ftoi r1.x, r1.x
    mov r1.yzw, l(0,0,0,0)
    ld_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyzw, t4.xyzw
    add r0.yw, r0.yyyw, -r1.xxxy
    div r0.w, r0.w, r0.y
    utof r1.x, v0.x
    ftoi r2.x, r1.x
    mov r2.yzw, l(0,0,0,0)
    ld_indexable(texture2d)(float,float,float,float) r1.y, r2.xyzw, t2.yxzw
    add r0.w, -r0.w, r1.x
    iadd r0.x, -r0.x, l(1024)
    utof r0.x, r0.x
    div r0.x, |r0.w|, r0.x
    div r0.y, r1.y, r0.y
    mul o1.xy, r0.yyyy, r0.xxxx
    mov r0.z, l(0.666667)
  endif 
endif 
mov o0.x, r0.z
mov o0.yzw, l(0,0,0,1.000000)
ret 
// Approximately 68 instruction slots used
