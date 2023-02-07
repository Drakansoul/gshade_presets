//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int EdgeDetectionType;             // Offset:    0 Size:     4 [unused]
//   float EdgeDetectionThreshold;      // Offset:    4 Size:     4 [unused]
//   float DepthEdgeDetectionThreshold; // Offset:    8 Size:     4 [unused]
//   int MaxSearchSteps;                // Offset:   12 Size:     4 [unused]
//   int MaxSearchStepsDiagonal;        // Offset:   16 Size:     4
//   int CornerRounding;                // Offset:   20 Size:     4
//   bool PredicationEnabled;           // Offset:   24 Size:     4 [unused]
//   float PredicationThreshold;        // Offset:   28 Size:     4 [unused]
//   float PredicationScale;            // Offset:   32 Size:     4 [unused]
//   float PredicationStrength;         // Offset:   36 Size:     4 [unused]
//   int DebugOutput;                   // Offset:   40 Size:     4 [unused]
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
// __V__edgesTex                     texture  float4          2d             t6      1 
// __V__areaTex                      texture  float4          2d            t10      1 
// __V__searchTex                    texture  float4          2d            t12      1 
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
// TEXCOORD                 1     zw        1     NONE   float     zw
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t12
dcl_input_ps linear v1.xy
dcl_input_ps linear v1.zw
dcl_input_ps linear v2.xyzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyzw
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xy, v1.xyxx, t6.xyzw, s0
lt r0.y, l(0.000000), r0.y
if_nz r0.y
  lt r0.y, l(0.000000), r0.x
  if_nz r0.y
    iadd r0.y, cb0[1].x, l(-1)
    itof r0.y, r0.y
    lt r0.z, l(-1.000000), r0.y
    mov r1.xy, v1.xyxx
    mov r2.x, l(0)
    mov r1.z, l(-1.000000)
    mov r3.x, l(1.000000)
    mov r0.w, r0.z
    loop 
      breakc_z r0.w
      add r1.xyz, r1.xyzx, l(-0.000260, 0.000468, 1.000000, 0.000000)
      sample_l_indexable(texture2d)(float,float,float,float) r2.xy, r1.xyxx, t6.yxzw, s0, r1.y
      dp2 r3.x, r2.yxyy, l(0.500000, 0.500000, 0.000000, 0.000000)
      lt r1.w, r1.z, r0.y
      lt r2.y, l(0.900000), r3.x
      and r0.w, r1.w, r2.y
    endloop 
    lt r0.y, l(0.900000), r2.x
    and r0.y, r0.y, l(0x3f800000)
    add r1.x, r0.y, r1.z
  else 
    mov r1.x, l(0)
    mov r3.x, l(0)
  endif 
  iadd r0.y, cb0[1].x, l(-1)
  itof r0.y, r0.y
  lt r0.z, l(-1.000000), r0.y
  mov r2.xy, v1.xyxx
  mov r2.z, l(-1.000000)
  mov r3.y, l(1.000000)
  mov r0.w, r0.z
  loop 
    breakc_z r0.w
    add r2.xyz, r2.xyzx, l(0.000260, -0.000468, 1.000000, 0.000000)
    sample_l_indexable(texture2d)(float,float,float,float) r3.zw, r2.xyxx, t6.zwxy, s0, r2.y
    dp2 r3.y, r3.zwzz, l(0.500000, 0.500000, 0.000000, 0.000000)
    lt r2.w, r2.z, r0.y
    lt r3.z, l(0.900000), r3.y
    and r0.w, r2.w, r3.z
  endloop 
  add r0.w, r1.x, r2.z
  lt r0.w, l(2.000000), r0.w
  if_nz r0.w
    add r1.y, -r1.x, l(0.250000)
    mad r1.zw, r2.zzzz, l(0.000000, 0.000000, 1.000000, -1.000000), l(0.000000, 0.000000, 0.000000, -0.250000)
    mad r2.xyzw, r1.yxzw, l(0.000260, 0.000468, 0.000260, 0.000468), v1.xyxy
    sample_l_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r4.xy, r2.xyxx, t6.xyzw, s0, r2.y
    sample_l_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r1.yw, r2.zwzz, t6.zxwy, s0, r2.w
    mov r4.z, r1.y
    mad r2.xy, r4.xzxx, l(5.000000, 5.000000, 0.000000, 0.000000), l(-3.750000, -3.750000, 0.000000, 0.000000)
    mul r2.xy, |r2.xyxx|, r4.xzxx
    round_ne r2.xy, r2.xyxx
    round_ne r4.y, r4.y
    round_ne r4.w, r1.w
    mad r1.yw, r4.yyyw, l(0.000000, 2.000000, 0.000000, 2.000000), r2.xxxy
    ge r2.xy, r3.xyxx, l(0.900000, 0.900000, 0.000000, 0.000000)
    movc r1.yw, r2.xxxy, l(0,0,0,0), r1.yyyw
    mad r1.xy, r1.ywyy, l(20.000000, 20.000000, 0.000000, 0.000000), r1.xzxx
    mad r1.xy, r1.xyxx, l(0.006250, 0.001786, 0.000000, 0.000000), l(0.503125, 0.000893, 0.000000, 0.000000)
    sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t10.xyzw, s0, r1.y
  else 
    mov r1.xy, l(0,0,0,0)
  endif 
  add r0.w, v1.x, l(0.000065)
  mov r2.x, r0.w
  mov r2.y, v1.y
  mov r2.z, l(-1.000000)
  mov r3.x, l(1.000000)
  mov r1.z, r0.z
  loop 
    breakc_z r1.z
    add r2.xyz, r2.xyzx, l(-0.000260, -0.000468, 1.000000, 0.000000)
    sample_l_indexable(texture2d)(float,float,float,float) r3.zw, r2.xyxx, t6.zwxy, s0, r2.y
    mad r1.w, r3.z, l(5.000000), l(-3.750000)
    mul r1.w, |r1.w|, r3.z
    round_ne r4.x, r1.w
    round_ne r4.y, r3.w
    dp2 r3.x, r4.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
    lt r1.w, r2.z, r0.y
    lt r2.w, l(0.900000), r3.x
    and r1.z, r1.w, r2.w
  endloop 
  sample_l_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r1.z, v1.xyxx, t6.yzxw, s0, v1.y
  lt r1.z, l(0.000000), r1.z
  if_nz r1.z
    mov r4.x, r0.w
    mov r4.y, v1.y
    mov r1.z, l(0)
    mov r4.z, l(-1.000000)
    mov r3.y, l(1.000000)
    mov r2.y, r0.z
    loop 
      breakc_z r2.y
      add r4.xyz, r4.xyzx, l(0.000260, 0.000468, 1.000000, 0.000000)
      sample_l_indexable(texture2d)(float,float,float,float) r3.zw, r4.xyxx, t6.zwxy, s0, r4.y
      mad r2.w, r3.z, l(5.000000), l(-3.750000)
      mul r2.w, |r2.w|, r3.z
      round_ne r1.w, r2.w
      round_ne r1.z, r3.w
      dp2 r3.y, r1.wzww, l(0.500000, 0.500000, 0.000000, 0.000000)
      lt r1.w, r4.z, r0.y
      lt r2.w, l(0.900000), r3.y
      and r2.y, r1.w, r2.w
    endloop 
    lt r0.y, l(0.900000), r1.z
    and r0.y, r0.y, l(0x3f800000)
    add r2.x, r0.y, r4.z
  else 
    mov r2.x, l(0)
    mov r3.y, l(0)
  endif 
  add r0.y, r2.x, r2.z
  lt r0.y, l(2.000000), r0.y
  if_nz r0.y
    mad r4.xyzw, r2.zzxx, l(-0.000260, -0.000468, 0.000260, 0.000468), v1.xyxy
    sample_l_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r5.x, r4.xyxx, t6.yxzw, s0, r4.y
    sample_l_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r5.z, r4.xyxx, t6.yzxw, s0, r4.y
    sample_l_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r5.yw, r4.zwzz, t6.zywx, s0, r4.w
    mad r0.yz, r5.xxyx, l(0.000000, 2.000000, 2.000000, 0.000000), r5.zzwz
    ge r1.zw, r3.xxxy, l(0.000000, 0.000000, 0.900000, 0.900000)
    movc r0.yz, r1.zzwz, l(0,0,0,0), r0.yyzy
    mad r0.yz, r0.yyzy, l(0.000000, 20.000000, 20.000000, 0.000000), r2.zzxz
    mad r0.yz, r0.yyzy, l(0.000000, 0.006250, 0.001786, 0.000000), l(0.000000, 0.503125, 0.000893, 0.000000)
    sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r0.yzyy, t10.zxyw, s0, r0.z
    add r1.xy, r0.zyzz, r1.xyxx
  endif 
  eq r0.y, -r1.y, r1.x
  if_nz r0.y
    lt r0.y, v4.x, v2.x
    mov r0.zw, l(0,0,0,1.000000)
    mov r2.xy, v2.xyxx
    mov r1.z, r0.y
    loop 
      breakc_z r1.z
      sample_l_indexable(texture2d)(float,float,float,float) r0.zw, r2.xyxx, t6.zwxy, s0, r2.y
      add r2.xy, r2.xyxx, l(-0.000521, -0.000000, 0.000000, 0.000000)
      lt r1.w, v4.x, r2.x
      lt r2.z, l(0.828100), r0.w
      and r1.w, r1.w, r2.z
      eq r2.z, r0.z, l(0.000000)
      and r1.z, r1.w, r2.z
    endloop 
    mad r0.yz, r0.zzwz, l(0.000000, 0.500000, -2.000000, 0.000000), l(0.000000, 0.007812, 2.031250, 0.000000)
    sample_l_indexable(texture2d)(float,float,float,float) r0.y, r0.yzyy, t12.yxzw, s2, r0.z
    mad r0.y, r0.y, l(-2.007874), l(3.250000)
    mad r2.x, r0.y, l(0.000260), r2.x
    mov r2.y, v3.y
    sample_l_indexable(texture2d)(float,float,float,float) r0.y, r2.xyxx, t6.zxyw, s0, v3.y
    lt r0.w, v2.z, v4.y
    mov r1.zw, l(0,0,0,1.000000)
    mov r3.xy, v2.zwzz
    mov r3.z, r0.w
    loop 
      breakc_z r3.z
      sample_l_indexable(texture2d)(float,float,float,float) r1.zw, r3.xyxx, t6.zwxy, s0, r3.y
      add r3.xy, r3.xyxx, l(0.000521, 0.000000, 0.000000, 0.000000)
      lt r3.w, r3.x, v4.y
      lt r4.x, l(0.828100), r1.w
      and r3.w, r3.w, r4.x
      eq r4.x, r1.z, l(0.000000)
      and r3.z, r3.w, r4.x
    endloop 
    mad r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.500000, -2.000000), l(0.000000, 0.000000, 0.523438, 2.031250)
    sample_l_indexable(texture2d)(float,float,float,float) r0.w, r1.zwzz, t12.yzwx, s2, r1.w
    mad r0.w, r0.w, l(-2.007874), l(3.250000)
    mad r2.z, r0.w, l(-0.000260), r3.x
    mad r1.zw, r2.zzzx, l(0.000000, 0.000000, 3840.000000, 3840.000000), -v1.zzzz
    round_ne r1.zw, r1.zzzw
    sqrt r3.xy, |r1.wzww|
    sample_l_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r0.z, r2.zyzz, t6.zyxw, s0, v3.y
    mul r0.yz, r0.yyzy, l(0.000000, 4.000000, 4.000000, 0.000000)
    round_ne r0.yz, r0.yyzy
    mad r0.yz, r0.yyzy, l(0.000000, 16.000000, 16.000000, 0.000000), r3.xxyx
    mad r0.yz, r0.yyzy, l(0.000000, 0.006250, 0.001786, 0.000000), l(0.000000, 0.003125, 0.000893, 0.000000)
    sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r0.yzyy, t10.zxyw, s0, r0.z
    ge r1.zw, |r1.zzzw|, |r1.wwwz|
    and r1.zw, r1.zzzw, l(0, 0, 0x3f800000, 0x3f800000)
    itof r0.w, cb0[1].y
    mad r0.w, -r0.w, l(0.010000), l(1.000000)
    mul r3.xy, r1.zwzz, r0.wwww
    add r0.w, r1.w, r1.z
    div r1.zw, r3.xxxy, r0.wwww
    mov r2.w, v1.y
    sample_l_aoffimmi_indexable(0,1,0)(texture2d)(float,float,float,float) r0.w, r2.xwxx, t6.yzwx, s0, v1.y
    mad r0.w, -r1.z, r0.w, l(1.000000)
    sample_l_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r2.y, r2.zwzz, t6.yxzw, s0, v1.y
    mad_sat r3.x, -r1.w, r2.y, r0.w
    sample_l_aoffimmi_indexable(0,-2,0)(texture2d)(float,float,float,float) r0.w, r2.xwxx, t6.yzwx, s0, v1.y
    mad r0.w, -r1.z, r0.w, l(1.000000)
    sample_l_aoffimmi_indexable(1,-2,0)(texture2d)(float,float,float,float) r1.z, r2.zwzz, t6.yzxw, s0, v1.y
    mad_sat r3.y, -r1.w, r1.z, r0.w
    mul o0.xy, r0.yzyy, r3.xyxx
  else 
    mov o0.xy, r1.xyxx
    mov r0.x, l(0)
  endif 
else 
  mov o0.xy, l(0,0,0,0)
endif 
lt r0.x, l(0.000000), r0.x
if_nz r0.x
  lt r0.x, v4.z, v3.y
  mov r0.yz, l(0,0,1.000000,0)
  mov r1.xy, v3.xyxx
  mov r0.w, r0.x
  loop 
    breakc_z r0.w
    sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r1.xyxx, t6.zyxw, s0, r1.y
    add r1.xy, r1.xyxx, l(-0.000000, -0.000936, 0.000000, 0.000000)
    lt r1.z, v4.z, r1.y
    lt r1.w, l(0.828100), r0.z
    and r1.z, r1.w, r1.z
    eq r1.w, r0.y, l(0.000000)
    and r0.w, r1.w, r1.z
  endloop 
  mad r0.xy, r0.yzyy, l(0.500000, -2.000000, 0.000000, 0.000000), l(0.007812, 2.031250, 0.000000, 0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t12.xyzw, s2, r0.y
  mad r0.x, r0.x, l(-2.007874), l(3.250000)
  mad r0.x, r0.x, l(0.000468), r1.y
  mov r0.y, v2.x
  sample_l_indexable(texture2d)(float,float,float,float) r1.x, r0.yxyy, t6.yxzw, s0, r0.x
  lt r1.z, v3.w, v4.w
  mov r2.xy, l(0,1.000000,0,0)
  mov r3.xy, v3.zwzz
  mov r1.w, r1.z
  loop 
    breakc_z r1.w
    sample_l_indexable(texture2d)(float,float,float,float) r2.xy, r3.xyxx, t6.yxzw, s0, r3.y
    add r3.xy, r3.xyxx, l(0.000000, 0.000936, 0.000000, 0.000000)
    lt r2.z, r3.y, v4.w
    lt r2.w, l(0.828100), r2.y
    and r2.z, r2.w, r2.z
    eq r2.w, r2.x, l(0.000000)
    and r1.w, r2.w, r2.z
  endloop 
  mad r1.zw, r2.xxxy, l(0.000000, 0.000000, 0.500000, -2.000000), l(0.000000, 0.000000, 0.523438, 2.031250)
  sample_l_indexable(texture2d)(float,float,float,float) r1.z, r1.zwzz, t12.yzxw, s2, r1.w
  mad r1.z, r1.z, l(-2.007874), l(3.250000)
  mad r0.z, r1.z, l(-0.000468), r3.y
  mad r1.zw, r0.zzzx, l(0.000000, 0.000000, 2137.000000, 2137.000000), -v1.wwww
  round_ne r1.zw, r1.zzzw
  sqrt r2.xy, |r1.wzww|
  sample_l_aoffimmi_indexable(0,1,0)(texture2d)(float,float,float,float) r1.y, r0.yzyy, t6.xyzw, s0, r0.z
  mul r1.xy, r1.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)
  round_ne r1.xy, r1.xyxx
  mad r1.xy, r1.xyxx, l(16.000000, 16.000000, 0.000000, 0.000000), r2.xyxx
  mad r1.xy, r1.xyxx, l(0.006250, 0.001786, 0.000000, 0.000000), l(0.003125, 0.000893, 0.000000, 0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t10.xyzw, s0, r1.y
  ge r1.zw, |r1.zzzw|, |r1.wwwz|
  and r1.zw, r1.zzzw, l(0, 0, 0x3f800000, 0x3f800000)
  itof r0.y, cb0[1].y
  mad r0.y, -r0.y, l(0.010000), l(1.000000)
  mul r2.xy, r1.zwzz, r0.yyyy
  add r0.y, r1.w, r1.z
  div r1.zw, r2.xxxy, r0.yyyy
  mov r0.w, v1.x
  sample_l_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r0.y, r0.wxww, t6.xyzw, s0, r0.x
  mad r0.y, -r1.z, r0.y, l(1.000000)
  sample_l_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r2.x, r0.wzww, t6.yxzw, s0, r0.z
  mad_sat r2.z, -r1.w, r2.x, r0.y
  sample_l_aoffimmi_indexable(-2,0,0)(texture2d)(float,float,float,float) r0.x, r0.wxww, t6.yxzw, s0, r0.x
  mad r0.x, -r1.z, r0.x, l(1.000000)
  sample_l_aoffimmi_indexable(-2,1,0)(texture2d)(float,float,float,float) r0.y, r0.wzww, t6.xyzw, s0, r0.z
  mad_sat r2.w, -r1.w, r0.y, r0.x
  mul o0.zw, r1.xxxy, r2.zzzw
else 
  mov o0.zw, l(0,0,0,0)
endif 
ret 
// Approximately 274 instruction slots used