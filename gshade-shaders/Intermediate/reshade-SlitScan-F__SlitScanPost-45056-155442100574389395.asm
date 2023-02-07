//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float x_col;                       // Offset:    0 Size:     4
//   float scan_speed;                  // Offset:    4 Size:     4
//   float min_depth;                   // Offset:    8 Size:     4
//   int direction;                     // Offset:   12 Size:     4
//   int animate;                       // Offset:   16 Size:     4
//   float frame_rate;                  // Offset:   20 Size:     4
//   float2 anim_rate;                  // Offset:   24 Size:     8
//   int render_type;                   // Offset:   32 Size:     4
//   float blending_amount;             // Offset:   36 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s1                              sampler      NA          NA             s1      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
// __V__texColorBuffer               texture  float4          2d             t4      1 
// __V__ssTexture                    texture  float4          2d             t6      1 
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
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 8
sample_l_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t2.xyzw, s0, l(0.000000)
mad r0.y, -r0.x, l(999.000000), l(1000.000000)
div r0.x, r0.x, r0.y
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t4.xyzw, s0
switch cb0[0].w
  case l(0)
  case l(1)
  mul r0.y, cb0[0].y, l(0.000260)
  break 
  case l(2)
  case l(3)
  mul r0.y, cb0[0].y, l(0.000468)
  break 
  default 
  mov r0.y, l(0)
  break 
endswitch 
movc r0.z, cb0[1].x, cb0[1].z, cb0[0].x
switch cb0[0].w
  case l(0)
  ge r0.w, r0.z, -r0.z
  movc r0.w, r0.w, l(1.000000), l(-1.000000)
  mul r2.z, r0.w, r0.z
  frc r2.z, r2.z
  mul r0.w, r0.w, r2.z
  mad r0.w, cb0[1].y, r0.y, -r0.w
  add r2.x, r0.w, v1.x
  mov r2.y, v1.y
  break 
  case l(1)
  add r0.w, -r0.z, l(1.000000)
  ge r2.z, r0.w, -r0.w
  movc r2.z, r2.z, l(1.000000), l(-1.000000)
  mul r0.w, r0.w, r2.z
  frc r0.w, r0.w
  mul r0.w, r0.w, r2.z
  mad r0.w, cb0[1].y, r0.y, -r0.w
  add r2.x, -r0.w, v1.x
  mov r2.y, v1.y
  break 
  case l(2)
  ge r0.w, r0.z, -r0.z
  movc r0.w, r0.w, l(1.000000), l(-1.000000)
  mul r2.z, r0.w, r0.z
  frc r2.z, r2.z
  mul r0.w, r0.w, r2.z
  mad r0.w, cb0[1].y, r0.y, -r0.w
  add r2.y, r0.w, v1.y
  mov r2.x, v1.x
  break 
  case l(3)
  add r0.w, -r0.z, l(1.000000)
  ge r2.z, r0.w, -r0.w
  movc r2.z, r2.z, l(1.000000), l(-1.000000)
  mul r0.w, r0.w, r2.z
  frc r0.w, r0.w
  mul r0.w, r0.w, r2.z
  mad r0.y, cb0[1].y, r0.y, -r0.w
  add r2.y, -r0.y, v1.y
  mov r2.x, v1.x
  break 
  default 
  mov r2.xy, v1.xyxx
  break 
endswitch 
switch cb0[0].w
  case l(0)
  ge r0.y, r0.z, v1.x
  and r3.xyzw, r0.yyyy, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  break 
  case l(1)
  ge r0.y, v1.x, r0.z
  and r3.xyzw, r0.yyyy, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  break 
  case l(2)
  ge r0.y, r0.z, v1.y
  and r3.xyzw, r0.yyyy, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  break 
  case l(3)
  ge r0.y, v1.y, r0.z
  and r3.xyzw, r0.yyyy, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  break 
  default 
  mov r3.xyzw, l(0,0,0,0)
  break 
endswitch 
ge r0.x, r0.x, cb0[0].z
if_nz r0.x
  sample_indexable(texture2d)(float,float,float,float) r0.xyz, r2.xyxx, t6.xyzw, s1
  switch cb0[2].x
    case l(1)
    min r4.xyz, r0.xyzx, r1.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(2)
    mad r4.xyz, r1.xyzx, r0.xyzx, -r1.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(3)
    lt r4.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyzx
    and r0.w, r4.y, r4.x
    and r0.w, r4.z, r0.w
    add r4.xyz, -r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    div r4.xyz, r4.xyzx, r0.xyzx
    min r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r4.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    and r4.xyz, r0.wwww, r4.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(4)
    add r4.xyz, r0.xyzx, r1.xyzx
    add r4.xyz, r4.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
    max r4.xyz, r4.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(5)
    max r4.xyz, r0.xyzx, r1.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(6)
    add r4.xyz, -r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r5.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r4.xyz, -r4.xyzx, r5.xyzx, -r1.xyzx
    add r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(7)
    lt r4.xyz, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    and r0.w, r4.y, r4.x
    and r0.w, r4.z, r0.w
    add r4.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    div r4.xyz, r1.xyzx, r4.xyzx
    min r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    movc r4.xyz, r0.wwww, r4.xyzx, l(1.000000,1.000000,1.000000,0)
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(8)
    add r4.xyz, r0.xyzx, r1.xyzx
    min r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(9)
    add r4.xyz, r0.xyzx, r1.xyzx
    min r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(10)
    ge r4.xyz, r1.xyzx, l(0.999999, 0.999999, 0.999999, 0.000000)
    or r0.w, r4.y, r4.x
    or r0.w, r4.z, r0.w
    mul r4.xyz, r0.xyzx, r0.xyzx
    add r5.xyz, -r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    div_sat r4.xyz, r4.xyzx, r5.xyzx
    movc r4.xyz, r0.wwww, r1.xyzx, r4.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(11)
    mul r4.xyz, r1.xyzx, r0.xyzx
    add r5.xyz, r4.xyzx, r4.xyzx
    add r6.xyz, -r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r6.xyz, r6.xyzx, r6.xyzx
    add r7.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r6.xyz, -r6.xyzx, r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    ge r7.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r7.xyz, r7.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r4.xyz, -r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r6.xyzx
    mad r4.xyz, r7.xyzx, r4.xyzx, r5.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(12)
    ge r4.xyz, l(0.500000, 0.500000, 0.500000, 0.000000), r0.xyzx
    and r0.w, r4.y, r4.x
    and r0.w, r4.z, r0.w
    mad r4.xyz, -r0.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(1.000000, 1.000000, 1.000000, 0.000000)
    mul r4.xyz, r1.xyzx, r4.xyzx
    add r5.xyz, -r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad_sat r4.xyz, -r4.xyzx, r5.xyzx, r1.xyzx
    mad r5.xyz, r0.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
    ge r6.xyz, l(0.250000, 0.250000, 0.250000, 0.000000), r1.xyzx
    and r4.w, r6.y, r6.x
    and r4.w, r6.z, r4.w
    mad r6.xyz, r1.xyzx, l(16.000000, 16.000000, 16.000000, 0.000000), l(-12.000000, -12.000000, -12.000000, 0.000000)
    mad r6.xyz, r6.xyzx, r1.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
    mul r6.xyz, r1.xyzx, r6.xyzx
    sqrt r7.xyz, r1.xyzx
    movc r6.xyz, r4.wwww, r6.xyzx, r7.xyzx
    add r6.xyz, -r1.xyzx, r6.xyzx
    mad_sat r5.xyz, r5.xyzx, r6.xyzx, r1.xyzx
    movc r4.xyz, r0.wwww, r4.xyzx, r5.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(13)
    mul r4.xyz, r1.xyzx, r0.xyzx
    add r5.xyz, r4.xyzx, r4.xyzx
    add r6.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r6.xyz, r6.xyzx, r6.xyzx
    add r7.xyz, -r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r6.xyz, -r6.xyzx, r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    ge r7.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r7.xyz, r7.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r4.xyz, -r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r6.xyzx
    mad r4.xyz, r7.xyzx, r4.xyzx, r5.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(14)
    mul r4.xyz, r1.xyzx, r0.xyzx
    add r5.xyz, r4.xyzx, r4.xyzx
    add r6.xyz, -r1.xyzx, l(1.010000, 1.010000, 1.010000, 0.000000)
    add r6.xyz, r6.xyzx, r6.xyzx
    div r6.xyz, r0.xyzx, r6.xyzx
    ge r7.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r7.xyz, r7.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r4.xyz, -r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r6.xyzx
    mad r4.xyz, r7.xyzx, r4.xyzx, r5.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(15)
    lt r4.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    or r0.w, r4.y, r4.x
    or r0.w, r4.z, r0.w
    mad r4.xyz, r0.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r1.xyzx
    add r4.xyz, r4.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
    max r4.xyz, r4.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
    add r5.xyz, r0.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
    mad r5.xyz, r5.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r1.xyzx
    min r5.xyz, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    movc r4.xyz, r0.wwww, r4.xyzx, r5.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(16)
    lt r4.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    or r0.w, r4.y, r4.x
    or r0.w, r4.z, r0.w
    add r4.xyz, r0.xyzx, r0.xyzx
    min r4.xyz, r1.xyzx, r4.xyzx
    add r5.xyz, r0.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
    add r5.xyz, r5.xyzx, r5.xyzx
    max r5.xyz, r1.xyzx, r5.xyzx
    movc r4.xyz, r0.wwww, r4.xyzx, r5.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(17)
    mul r4.xyz, r1.xyzx, r0.xyzx
    add r5.xyz, r4.xyzx, r4.xyzx
    add r6.xyz, -r1.xyzx, l(1.010000, 1.010000, 1.010000, 0.000000)
    add r6.xyz, r6.xyzx, r6.xyzx
    div r6.xyz, r0.xyzx, r6.xyzx
    ge r7.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r7.xyz, r7.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r4.xyz, -r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r6.xyzx
    mad r4.xyz, r7.xyzx, r4.xyzx, r5.xyzx
    lt r4.xyz, r4.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    or r0.w, r4.y, r4.x
    or r0.w, r4.z, r0.w
    movc r0.w, r0.w, l(0), l(1.000000)
    add r4.xyz, -r1.xyzx, r0.wwww
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(18)
    add r4.xyz, -r0.xyzx, r1.xyzx
    add r5.xyz, -r1.xyzx, r0.xyzx
    max r4.xyz, r4.xyzx, r5.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(19)
    add r4.xyz, r0.xyzx, r1.xyzx
    mul r5.xyz, r1.xyzx, r0.xyzx
    mad r4.xyz, -r5.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r4.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(20)
    add r4.xyz, -r0.xyzx, r1.xyzx
    max r4.xyz, r4.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(21)
    add r4.xyz, r0.xyzx, l(0.010000, 0.010000, 0.010000, 0.000000)
    div_sat r4.xyz, r1.xyzx, r4.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(22)
    div r4.xyz, r1.xyzx, r0.xyzx
    div r4.xyz, l(1.000000, 1.000000, 1.000000, 1.000000), r4.xyzx
    mov_sat r4.xyz, r4.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(23)
    div_sat r4.xyz, r1.xyzx, r0.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(24)
    ge r4.xyz, r0.xyzx, l(0.999999, 0.999999, 0.999999, 0.000000)
    or r0.w, r4.y, r4.x
    or r0.w, r4.z, r0.w
    mul r4.xyz, r1.xyzx, r1.xyzx
    add r5.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    div_sat r4.xyz, r4.xyzx, r5.xyzx
    movc r4.xyz, r0.wwww, r0.xyzx, r4.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(25)
    add r4.xyz, r1.xyzx, r0.xyzx
    add_sat r4.xyz, r4.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(26)
    add r4.xyz, -r0.xyzx, r1.xyzx
    add_sat r4.xyz, r4.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(27)
    max r0.w, r1.z, r1.y
    max r0.w, r0.w, r1.x
    min r4.x, r1.z, r1.y
    min r4.x, r1.x, r4.x
    add r4.y, r0.w, -r4.x
    max r0.w, r0.z, r0.y
    max r0.w, r0.w, r0.x
    eq r5.x, r0.w, r0.x
    min r5.y, r0.z, r0.y
    min r5.y, r0.x, r5.y
    eq r5.z, r0.z, r5.y
    and r5.w, r5.z, r5.x
    if_nz r5.w
      lt r5.w, r0.z, r0.x
      add r6.xy, -r0.zzzz, r0.yxyy
      mul r6.x, r4.y, r6.x
      div r4.z, r6.x, r6.y
      and r6.xy, r4.yzyy, r5.wwww
      mov r6.z, l(0)
    else 
      eq r5.w, r0.y, r5.y
      and r5.x, r5.w, r5.x
      if_nz r5.x
        lt r5.x, r0.y, r0.x
        add r7.xy, -r0.yyyy, r0.zxzz
        mul r6.w, r4.y, r7.x
        div r4.w, r6.w, r7.y
        and r6.xz, r4.yywy, r5.xxxx
        mov r6.y, l(0)
      else 
        eq r4.w, r0.w, r0.y
        and r5.x, r5.z, r4.w
        if_nz r5.x
          lt r5.x, r0.z, r0.y
          add r7.xy, -r0.zzzz, r0.xyxx
          mul r5.z, r4.y, r7.x
          div r4.x, r5.z, r7.y
          and r6.xy, r4.xyxx, r5.xxxx
          mov r6.z, l(0)
        else 
          eq r5.x, r0.x, r5.y
          and r4.w, r4.w, r5.x
          if_nz r4.w
            lt r4.w, r0.x, r0.y
            add r5.yz, -r0.xxxx, r0.zzyz
            mul r5.y, r4.y, r5.y
            div r4.z, r5.y, r5.z
            and r6.yz, r4.yyzy, r4.wwww
            mov r6.x, l(0)
          else 
            eq r0.w, r0.w, r0.z
            and r4.w, r5.w, r0.w
            lt r5.yz, r0.yyxy, r0.zzzz
            add r7.xyzw, -r0.yyxx, r0.xzyz
            mul r7.xz, r4.yyyy, r7.xxzx
            div r4.xz, r7.xxzx, r7.yywy
            and r7.xz, r4.xxyx, r5.yyyy
            and r0.w, r5.x, r0.w
            and r4.yz, r4.zzyz, r5.zzzz
            mov r4.x, l(0)
            movc r4.xyz, r0.wwww, r4.xyzx, r0.xyzx
            mov r7.y, l(0)
            movc r6.xyz, r4.wwww, r7.xyzx, r4.xyzx
          endif 
        endif 
      endif 
    endif 
    dp3 r0.w, r1.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r4.x, r6.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r0.w, r0.w, -r4.x
    add r4.xyz, r0.wwww, r6.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(28)
    max r0.w, r0.z, r0.y
    max r0.w, r0.w, r0.x
    min r4.x, r0.z, r0.y
    min r4.x, r0.x, r4.x
    add r4.y, r0.w, -r4.x
    max r0.w, r1.z, r1.y
    max r0.w, r0.w, r1.x
    eq r5.x, r0.w, r1.x
    min r5.y, r1.z, r1.y
    min r5.y, r1.x, r5.y
    eq r5.z, r1.z, r5.y
    and r5.w, r5.z, r5.x
    if_nz r5.w
      lt r5.w, r1.z, r1.x
      add r6.xy, -r1.zzzz, r1.yxyy
      mul r6.x, r4.y, r6.x
      div r4.z, r6.x, r6.y
      and r6.xy, r4.yzyy, r5.wwww
      mov r6.z, l(0)
    else 
      eq r5.w, r1.y, r5.y
      and r5.x, r5.w, r5.x
      if_nz r5.x
        lt r5.x, r1.y, r1.x
        add r7.xy, -r1.yyyy, r1.zxzz
        mul r6.w, r4.y, r7.x
        div r4.w, r6.w, r7.y
        and r6.xz, r4.yywy, r5.xxxx
        mov r6.y, l(0)
      else 
        eq r4.w, r0.w, r1.y
        and r5.x, r5.z, r4.w
        if_nz r5.x
          lt r5.x, r1.z, r1.y
          add r7.xy, -r1.zzzz, r1.xyxx
          mul r5.z, r4.y, r7.x
          div r4.x, r5.z, r7.y
          and r6.xy, r4.xyxx, r5.xxxx
          mov r6.z, l(0)
        else 
          eq r5.x, r1.x, r5.y
          and r4.w, r4.w, r5.x
          if_nz r4.w
            lt r4.w, r1.x, r1.y
            add r5.yz, -r1.xxxx, r1.zzyz
            mul r5.y, r4.y, r5.y
            div r4.z, r5.y, r5.z
            and r6.yz, r4.yyzy, r4.wwww
            mov r6.x, l(0)
          else 
            eq r0.w, r0.w, r1.z
            and r4.w, r5.w, r0.w
            lt r5.yz, r1.yyxy, r1.zzzz
            add r7.xyzw, -r1.yyxx, r1.xzyz
            mul r7.xz, r4.yyyy, r7.xxzx
            div r4.xz, r7.xxzx, r7.yywy
            and r7.xz, r4.xxyx, r5.yyyy
            and r0.w, r5.x, r0.w
            and r4.yz, r4.zzyz, r5.zzzz
            mov r4.x, l(0)
            movc r4.xyz, r0.wwww, r4.xyzx, r1.xyzx
            mov r7.y, l(0)
            movc r6.xyz, r4.wwww, r7.xyzx, r4.xyzx
          endif 
        endif 
      endif 
    endif 
    dp3 r0.w, r1.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r4.x, r6.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r0.w, r0.w, -r4.x
    add r4.xyz, r0.wwww, r6.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(29)
    dp3 r0.w, r1.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r4.x, r0.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r0.w, r0.w, -r4.x
    add r4.xyz, r0.wwww, r0.xyzx
    add r4.xyz, -r1.xyzx, r4.xyzx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    case l(30)
    dp3 r0.w, r0.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r4.x, r1.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r4.xyz, r0.wwww, -r4.xxxx
    mad r2.xyz, cb0[2].yyyy, r4.xyzx, r1.xyzx
    break 
    default 
    add r0.xyz, -r1.xyzx, r0.xyzx
    mad r2.xyz, cb0[2].yyyy, r0.xyzx, r1.xyzx
    break 
  endswitch 
  mov r2.w, l(1.000000)
  add r0.xyzw, -r1.xyzw, r2.xyzw
  mad o0.xyzw, r3.xyzw, r0.xyzw, r1.xyzw
else 
  mov o0.xyzw, r1.xyzw
endif 
ret 
// Approximately 509 instruction slots used
