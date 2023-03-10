//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float2 p_drunk_strength;           // Offset:    0 Size:     8
//   float2 p_drunk_speed;              // Offset:    8 Size:     8
//   float angle;                       // Offset:   16 Size:     4
//   float angle_speed;                 // Offset:   20 Size:     4
//   int render_type;                   // Offset:   24 Size:     4
//   float blending_amount;             // Offset:   28 Size:     4
//   float2 depth_bounds;               // Offset:   32 Size:     8
//   float min_depth;                   // Offset:   40 Size:     4
//   float anim_rate;                   // Offset:   44 Size:     4
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
dcl_immediateConstantBuffer { { 0.200000, 0, 0, 0},
                              { 0.800000, 0, 0, 0},
                              { -0.200000, 0, 0, 0},
                              { 0.452000, 0, 0, 0},
                              { -0.283200, 0, 0, 0},
                              { 0.800000, 0, 0, 0},
                              { -0.280000, 0, 0, 0},
                              { -1.000000, 0, 0, 0},
                              { -0.420000, 0, 0, 0},
                              { -0.890000, 0, 0, 0},
                              { 0.720000, 0, 0, 0},
                              { -0.290000, 0, 0, 0},
                              { 0.750000, 0, 0, 0},
                              { 0.250000, 0, 0, 0},
                              { 0.330000, 0, 0, 0},
                              { 0.670000, 0, 0, 0},
                              { 0.980000, 0, 0, 0},
                              { 0.010000, 0, 0, 0},
                              { -0.280000, 0, 0, 0},
                              { 0.800000, 0, 0, 0},
                              { -0.320000, 0, 0, 0},
                              { -0.189000, 0, 0, 0},
                              { 0.110000, 0, 0, 0},
                              { 0.840000, 0, 0, 0},
                              { -0.480000, 0, 0, 0},
                              { 0.100000, 0, 0, 0},
                              { -0.232300, 0, 0, 0},
                              { -0.555000, 0, 0, 0},
                              { 0.421000, 0, 0, 0},
                              { 0.230000, 0, 0, 0},
                              { -0.280000, 0, 0, 0},
                              { 0.300000, 0, 0, 0},
                              { -1.333300, 0, 0, 0},
                              { 1.333000, 0, 0, 0},
                              { 4.000000, 0, 0, 0},
                              { 1.000000, 0, 0, 0} }
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 12
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t4.xyzw, s1
sample_l_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t2.xyzw, s0, l(0.000000)
mad r1.y, -r1.x, l(999.000000), l(1000.000000)
div r1.x, r1.x, r1.y
mul r1.yz, v1.xxyx, l(0.000000, 5.000000, 5.000000, 0.000000)
frc r2.xy, r1.yzyy
add r2.xy, r2.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, l(3.141000, 3.141000, 0.000000, 0.000000)
sincos r2.xy, null, r2.xyxx
add r2.xy, r2.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
round_ni r2.zw, r1.yyyz
ftoi r2.zw, r2.zzzw
round_pi r1.yz, r1.yyzy
ftoi r1.yz, r1.yyzy
imad r1.w, r2.z, l(6), r2.w
udiv r3.x, r4.x, r1.w, l(6)
mul r3.y, cb0[1].x, l(0.017453)
mul r3.z, cb0[1].y, cb0[2].w
mul r3.z, r3.z, l(0.000500)
sincos r3.z, null, r3.z
mul r3.y, r3.z, r3.y
ult r3.z, r3.x, l(5)
ult r3.w, r4.x, l(5)
and r3.z, r3.w, r3.z
mul r3.w, cb0[0].z, cb0[2].w
mad r1.w, r3.w, l(0.001000), icb[r1.w + 0].x
sincos r5.x, r6.x, r1.w
mov r6.y, r5.x
and r4.yz, r3.zzzz, r6.xxyx
mul r5.xy, v1.xyxx, cb0[0].xyxx
mul r5.xy, r5.xyxx, l(0.005000, 0.005000, 0.000000, 0.000000)
itof r1.w, r3.x
mul r3.z, r1.w, l(0.500000)
round_ni r3.z, r3.z
mad r1.w, -r3.z, l(2.000000), r1.w
itof r3.z, r4.x
mul r4.w, r3.z, l(0.500000)
round_ni r4.w, r4.w
mad r3.z, -r4.w, l(2.000000), r3.z
lt r1.w, r1.w, l(1.000000)
movc r6.x, r1.w, l(-1.000000), l(1.000000)
lt r1.w, r3.z, l(1.000000)
movc r6.y, r1.w, l(-1.000000), l(1.000000)
mul r5.zw, r5.xxxy, r6.xxxy
mul r4.yz, r4.yyzy, r5.zzwz
sincos r6.x, r7.x, r3.y
mov r8.x, -r6.x
mov r8.y, r7.x
dp2 r1.w, r8.yxyy, r4.yzyy
mov r8.z, r6.x
dp2 r3.y, r8.zyzz, r4.yzyy
utof r3.x, r3.x
add r1.w, r1.w, r3.x
mul r6.x, r1.w, l(0.200000)
utof r1.w, r4.x
add r1.w, r3.y, r1.w
mul r6.y, r1.w, l(0.200000)
imad r1.w, r1.y, l(6), r2.w
udiv r3.x, r4.x, r1.w, l(6)
ult r2.w, r3.x, l(5)
ult r3.y, r4.x, l(5)
and r2.w, r2.w, r3.y
mad r1.w, r3.w, l(0.001000), icb[r1.w + 0].x
sincos r7.x, r9.x, r1.w
mov r9.y, r7.x
and r3.yz, r2.wwww, r9.xxyx
itof r1.w, r3.x
mul r2.w, r1.w, l(0.500000)
round_ni r2.w, r2.w
mad r1.w, -r2.w, l(2.000000), r1.w
itof r2.w, r4.x
mul r4.y, r2.w, l(0.500000)
round_ni r4.y, r4.y
mad r2.w, -r4.y, l(2.000000), r2.w
lt r1.w, r1.w, l(1.000000)
movc r7.x, r1.w, l(-1.000000), l(1.000000)
lt r1.w, r2.w, l(1.000000)
movc r7.y, r1.w, l(-1.000000), l(1.000000)
mul r4.yz, r5.xxyx, r7.xxyx
mul r3.yz, r3.yyzy, r4.yyzy
dp2 r1.w, r8.yxyy, r3.yzyy
dp2 r2.w, r8.zyzz, r3.yzyy
utof r3.x, r3.x
add r1.w, r1.w, r3.x
mul r3.x, r1.w, l(0.200000)
utof r1.w, r4.x
add r1.w, r2.w, r1.w
mul r3.y, r1.w, l(0.200000)
imad r1.w, r2.z, l(6), r1.z
udiv r4.x, r7.x, r1.w, l(6)
ult r2.z, r4.x, l(5)
ult r2.w, r7.x, l(5)
and r2.z, r2.w, r2.z
mad r1.w, r3.w, l(0.001000), icb[r1.w + 0].x
sincos r9.x, r10.x, r1.w
mov r10.y, r9.x
and r2.zw, r2.zzzz, r10.xxxy
itof r1.w, r4.x
mul r3.z, r1.w, l(0.500000)
round_ni r3.z, r3.z
mad r1.w, -r3.z, l(2.000000), r1.w
itof r3.z, r7.x
mul r4.y, r3.z, l(0.500000)
round_ni r4.y, r4.y
mad r3.z, -r4.y, l(2.000000), r3.z
lt r1.w, r1.w, l(1.000000)
movc r9.x, r1.w, l(-1.000000), l(1.000000)
lt r1.w, r3.z, l(1.000000)
movc r9.y, r1.w, l(-1.000000), l(1.000000)
mul r4.yz, r5.xxyx, r9.xxyx
mul r2.zw, r2.zzzw, r4.yyyz
dp2 r1.w, r8.yxyy, r2.zwzz
dp2 r2.z, r8.zyzz, r2.zwzz
utof r2.w, r4.x
add r1.w, r1.w, r2.w
mul r4.x, r1.w, l(0.200000)
utof r1.w, r7.x
add r1.w, r2.z, r1.w
mul r4.y, r1.w, l(0.200000)
imad r1.y, r1.y, l(6), r1.z
udiv r7.x, r9.x, r1.y, l(6)
ult r1.z, r7.x, l(5)
ult r1.w, r9.x, l(5)
and r1.z, r1.w, r1.z
mad r1.y, r3.w, l(0.001000), icb[r1.y + 0].x
sincos r10.x, r11.x, r1.y
mov r11.y, r10.x
and r1.yz, r1.zzzz, r11.xxyx
itof r1.w, r7.x
mul r2.z, r1.w, l(0.500000)
round_ni r2.z, r2.z
mad r1.w, -r2.z, l(2.000000), r1.w
itof r2.z, r9.x
mul r2.xyw, r2.xyxz, l(0.500000, 0.500000, 0.000000, 0.500000)
round_ni r2.w, r2.w
mad r2.z, -r2.w, l(2.000000), r2.z
lt r1.w, r1.w, l(1.000000)
movc r10.x, r1.w, l(-1.000000), l(1.000000)
lt r1.w, r2.z, l(1.000000)
movc r10.y, r1.w, l(-1.000000), l(1.000000)
mul r2.zw, r5.xxxy, r10.xxxy
mul r1.yz, r1.yyzy, r2.zzwz
dp2 r1.w, r8.yxyy, r1.yzyy
dp2 r1.y, r8.zyzz, r1.yzyy
utof r1.z, r7.x
add r1.z, r1.w, r1.z
mul r5.x, r1.z, l(0.200000)
utof r1.z, r9.x
add r1.y, r1.y, r1.z
mul r5.y, r1.y, l(0.200000)
add r1.yz, -r6.xxyx, r3.xxyx
mad r1.yz, r2.xxxx, r1.yyzy, r6.xxyx
add r2.zw, -r4.xxxy, r5.xxxy
mad r2.xz, r2.xxxx, r2.zzwz, r4.xxyx
add r2.xz, -r1.yyzy, r2.xxzx
mad r1.yz, r2.yyyy, r2.xxzx, r1.yyzy
sample_l_indexable(texture2d)(float,float,float,float) r1.w, r1.yzyy, t2.yzwx, s0, l(0.000000)
mad r2.x, -r1.w, l(999.000000), l(1000.000000)
div r1.w, r1.w, r2.x
ge r2.x, r1.w, cb0[2].x
ge r1.w, cb0[2].y, r1.w
and r1.w, r1.w, r2.x
if_nz r1.w
  sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.yzyy, t4.xyzw, s1
  switch cb0[1].z
    case l(1)
    min r3.xyz, r0.xyzx, r2.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(2)
    mad r3.xyz, r0.xyzx, r2.xyzx, -r0.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(3)
    lt r3.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r2.xyzx
    and r3.x, r3.y, r3.x
    and r3.x, r3.z, r3.x
    add r3.yzw, -r0.xxyz, l(0.000000, 0.500000, 0.500000, 0.500000)
    div r3.yzw, r3.yyzw, r2.xxyz
    min r3.yzw, r3.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
    add r3.yzw, -r3.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
    and r3.xyz, r3.yzwy, r3.xxxx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(4)
    add r3.xyz, r0.xyzx, r2.xyzx
    add r3.xyz, r3.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
    max r3.xyz, r3.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(5)
    max r3.xyz, r0.xyzx, r2.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(6)
    add r3.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r4.xyz, -r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r3.xyz, -r3.xyzx, r4.xyzx, -r0.xyzx
    add r3.xyz, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(7)
    lt r3.xyz, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    and r3.x, r3.y, r3.x
    and r3.x, r3.z, r3.x
    add r3.yzw, -r2.xxyz, l(0.000000, 1.000000, 1.000000, 1.000000)
    div r3.yzw, r0.xxyz, r3.yyzw
    min r3.yzw, r3.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
    movc r3.xyz, r3.xxxx, r3.yzwy, l(1.000000,1.000000,1.000000,0)
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(8)
    add r3.xyz, r0.xyzx, r2.xyzx
    min r3.xyz, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(9)
    add r3.xyz, r0.xyzx, r2.xyzx
    min r3.xyz, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(10)
    ge r3.xyz, r0.xyzx, l(0.999999, 0.999999, 0.999999, 0.000000)
    or r3.x, r3.y, r3.x
    or r3.x, r3.z, r3.x
    mul r3.yzw, r2.xxyz, r2.xxyz
    add r4.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    div_sat r3.yzw, r3.yyzw, r4.xxyz
    movc r3.xyz, r3.xxxx, r0.xyzx, r3.yzwy
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(11)
    mul r3.xyz, r0.xyzx, r2.xyzx
    add r4.xyz, r3.xyzx, r3.xyzx
    add r5.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r5.xyz, r5.xyzx, r5.xyzx
    add r6.xyz, -r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r5.xyz, -r5.xyzx, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    ge r6.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r6.xyz, r6.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r3.xyz, -r3.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r5.xyzx
    mad r3.xyz, r6.xyzx, r3.xyzx, r4.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(12)
    ge r3.xyz, l(0.500000, 0.500000, 0.500000, 0.000000), r2.xyzx
    and r3.x, r3.y, r3.x
    and r3.x, r3.z, r3.x
    mad r3.yzw, -r2.xxyz, l(0.000000, 2.000000, 2.000000, 2.000000), l(0.000000, 1.000000, 1.000000, 1.000000)
    mul r3.yzw, r0.xxyz, r3.yyzw
    add r4.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad_sat r3.yzw, -r3.yyzw, r4.xxyz, r0.xxyz
    mad r4.xyz, r2.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
    ge r5.xyz, l(0.250000, 0.250000, 0.250000, 0.000000), r0.xyzx
    and r4.w, r5.y, r5.x
    and r4.w, r5.z, r4.w
    mad r5.xyz, r0.xyzx, l(16.000000, 16.000000, 16.000000, 0.000000), l(-12.000000, -12.000000, -12.000000, 0.000000)
    mad r5.xyz, r5.xyzx, r0.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
    mul r5.xyz, r0.xyzx, r5.xyzx
    sqrt r6.xyz, r0.xyzx
    movc r5.xyz, r4.wwww, r5.xyzx, r6.xyzx
    add r5.xyz, -r0.xyzx, r5.xyzx
    mad_sat r4.xyz, r4.xyzx, r5.xyzx, r0.xyzx
    movc r3.xyz, r3.xxxx, r3.yzwy, r4.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(13)
    mul r3.xyz, r0.xyzx, r2.xyzx
    add r4.xyz, r3.xyzx, r3.xyzx
    add r5.xyz, -r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    add r5.xyz, r5.xyzx, r5.xyzx
    add r6.xyz, -r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    mad r5.xyz, -r5.xyzx, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    ge r6.xyz, r2.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r6.xyz, r6.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r3.xyz, -r3.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r5.xyzx
    mad r3.xyz, r6.xyzx, r3.xyzx, r4.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(14)
    mul r3.xyz, r0.xyzx, r2.xyzx
    add r4.xyz, r3.xyzx, r3.xyzx
    add r5.xyz, -r0.xyzx, l(1.010000, 1.010000, 1.010000, 0.000000)
    add r5.xyz, r5.xyzx, r5.xyzx
    div r5.xyz, r2.xyzx, r5.xyzx
    ge r6.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r6.xyz, r6.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r3.xyz, -r3.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r5.xyzx
    mad r3.xyz, r6.xyzx, r3.xyzx, r4.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(15)
    lt r3.xyz, r2.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    or r3.x, r3.y, r3.x
    or r3.x, r3.z, r3.x
    mad r3.yzw, r2.xxyz, l(0.000000, 2.000000, 2.000000, 2.000000), r0.xxyz
    add r3.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, -1.000000)
    max r3.yzw, r3.yyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
    add r4.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
    mad r4.xyz, r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r0.xyzx
    min r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    movc r3.xyz, r3.xxxx, r3.yzwy, r4.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(16)
    lt r3.xyz, r2.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    or r3.x, r3.y, r3.x
    or r3.x, r3.z, r3.x
    add r3.yzw, r2.xxyz, r2.xxyz
    min r3.yzw, r0.xxyz, r3.yyzw
    add r4.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
    add r4.xyz, r4.xyzx, r4.xyzx
    max r4.xyz, r0.xyzx, r4.xyzx
    movc r3.xyz, r3.xxxx, r3.yzwy, r4.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(17)
    mul r3.xyz, r0.xyzx, r2.xyzx
    add r4.xyz, r3.xyzx, r3.xyzx
    add r5.xyz, -r0.xyzx, l(1.010000, 1.010000, 1.010000, 0.000000)
    add r5.xyz, r5.xyzx, r5.xyzx
    div r5.xyz, r2.xyzx, r5.xyzx
    ge r6.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    and r6.xyz, r6.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
    mad r3.xyz, -r3.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r5.xyzx
    mad r3.xyz, r6.xyzx, r3.xyzx, r4.xyzx
    lt r3.xyz, r3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    or r3.x, r3.y, r3.x
    or r3.x, r3.z, r3.x
    movc r3.x, r3.x, l(0), l(1.000000)
    add r3.xyz, -r0.xyzx, r3.xxxx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(18)
    add r3.xyz, r0.xyzx, -r2.xyzx
    add r4.xyz, -r0.xyzx, r2.xyzx
    max r3.xyz, r3.xyzx, r4.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(19)
    add r3.xyz, r0.xyzx, r2.xyzx
    mul r4.xyz, r0.xyzx, r2.xyzx
    mad r3.xyz, -r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), r3.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(20)
    add r3.xyz, r0.xyzx, -r2.xyzx
    max r3.xyz, r3.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(21)
    add r3.xyz, r2.xyzx, l(0.010000, 0.010000, 0.010000, 0.000000)
    div_sat r3.xyz, r0.xyzx, r3.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(22)
    div r3.xyz, r0.xyzx, r2.xyzx
    div r3.xyz, l(1.000000, 1.000000, 1.000000, 1.000000), r3.xyzx
    mov_sat r3.xyz, r3.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(23)
    div_sat r3.xyz, r0.xyzx, r2.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(24)
    ge r3.xyz, r2.xyzx, l(0.999999, 0.999999, 0.999999, 0.000000)
    or r3.x, r3.y, r3.x
    or r3.x, r3.z, r3.x
    mul r3.yzw, r0.xxyz, r0.xxyz
    add r4.xyz, -r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
    div_sat r3.yzw, r3.yyzw, r4.xxyz
    movc r3.xyz, r3.xxxx, r2.xyzx, r3.yzwy
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(25)
    add r3.xyz, r0.xyzx, r2.xyzx
    add_sat r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(26)
    add r3.xyz, r0.xyzx, -r2.xyzx
    add_sat r3.xyz, r3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(27)
    max r3.x, r0.z, r0.y
    max r3.x, r0.x, r3.x
    min r3.y, r0.z, r0.y
    min r3.y, r0.x, r3.y
    add r3.y, -r3.y, r3.x
    max r4.x, r2.z, r2.y
    max r4.x, r2.x, r4.x
    min r4.z, r2.z, r2.y
    min r4.z, r2.x, r4.z
    eq r4.yw, r2.xxxz, r4.xxxz
    and r5.x, r4.w, r4.y
    if_nz r5.x
      lt r5.x, r2.z, r2.x
      add r5.yz, -r2.zzzz, r2.yyxy
      mul r5.y, r3.y, r5.y
      div r3.z, r5.y, r5.z
      and r5.xy, r3.yzyy, r5.xxxx
      mov r5.z, l(0)
    else 
      eq r5.w, r2.y, r4.z
      and r4.y, r4.y, r5.w
      if_nz r4.y
        lt r4.y, r2.y, r2.x
        add r6.xy, -r2.yyyy, r2.zxzz
        mul r6.x, r3.y, r6.x
        div r3.w, r6.x, r6.y
        and r5.xz, r3.yywy, r4.yyyy
        mov r5.y, l(0)
      else 
        eq r3.w, r2.y, r4.x
        and r4.y, r4.w, r3.w
        if_nz r4.y
          lt r4.y, r2.z, r2.y
          add r6.xy, -r2.zzzz, r2.xyxx
          mul r4.w, r3.y, r6.x
          div r3.x, r4.w, r6.y
          and r5.xy, r3.xyxx, r4.yyyy
          mov r5.z, l(0)
        else 
          eq r4.y, r2.x, r4.z
          and r3.w, r3.w, r4.y
          if_nz r3.w
            lt r3.w, r2.x, r2.y
            add r4.zw, -r2.xxxx, r2.zzzy
            mul r4.z, r3.y, r4.z
            div r3.z, r4.z, r4.w
            and r5.yz, r3.yyzy, r3.wwww
            mov r5.x, l(0)
          else 
            eq r3.w, r2.z, r4.x
            and r4.x, r5.w, r3.w
            lt r4.zw, r2.yyyx, r2.zzzz
            add r6.xyzw, -r2.yyxx, r2.xzyz
            mul r6.xz, r3.yyyy, r6.xxzx
            div r3.xz, r6.xxzx, r6.yywy
            and r6.xz, r3.xxyx, r4.zzzz
            and r3.x, r4.y, r3.w
            and r7.yz, r3.zzyz, r4.wwww
            mov r7.x, l(0)
            movc r3.xyz, r3.xxxx, r7.xyzx, r2.xyzx
            mov r6.y, l(0)
            movc r5.xyz, r4.xxxx, r6.xyzx, r3.xyzx
          endif 
        endif 
      endif 
    endif 
    dp3 r3.x, r0.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r3.y, r5.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r3.x, -r3.y, r3.x
    add r3.xyz, r3.xxxx, r5.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(28)
    max r3.x, r2.z, r2.y
    max r3.x, r2.x, r3.x
    min r3.y, r2.z, r2.y
    min r3.y, r2.x, r3.y
    add r3.y, -r3.y, r3.x
    max r4.x, r0.z, r0.y
    max r4.x, r0.x, r4.x
    min r4.z, r0.z, r0.y
    min r4.z, r0.x, r4.z
    eq r4.yw, r0.xxxz, r4.xxxz
    and r5.x, r4.w, r4.y
    if_nz r5.x
      lt r5.x, r0.z, r0.x
      add r5.yz, -r0.zzzz, r0.yyxy
      mul r5.y, r3.y, r5.y
      div r3.z, r5.y, r5.z
      and r5.xy, r3.yzyy, r5.xxxx
      mov r5.z, l(0)
    else 
      eq r5.w, r0.y, r4.z
      and r4.y, r4.y, r5.w
      if_nz r4.y
        lt r4.y, r0.y, r0.x
        add r6.xy, -r0.yyyy, r0.zxzz
        mul r6.x, r3.y, r6.x
        div r3.w, r6.x, r6.y
        and r5.xz, r3.yywy, r4.yyyy
        mov r5.y, l(0)
      else 
        eq r3.w, r0.y, r4.x
        and r4.y, r4.w, r3.w
        if_nz r4.y
          lt r4.y, r0.z, r0.y
          add r6.xy, -r0.zzzz, r0.xyxx
          mul r4.w, r3.y, r6.x
          div r3.x, r4.w, r6.y
          and r5.xy, r3.xyxx, r4.yyyy
          mov r5.z, l(0)
        else 
          eq r4.y, r0.x, r4.z
          and r3.w, r3.w, r4.y
          if_nz r3.w
            lt r3.w, r0.x, r0.y
            add r4.zw, -r0.xxxx, r0.zzzy
            mul r4.z, r3.y, r4.z
            div r3.z, r4.z, r4.w
            and r5.yz, r3.yyzy, r3.wwww
            mov r5.x, l(0)
          else 
            eq r3.w, r0.z, r4.x
            and r4.x, r5.w, r3.w
            lt r4.zw, r0.yyyx, r0.zzzz
            add r6.xyzw, -r0.yyxx, r0.xzyz
            mul r6.xz, r3.yyyy, r6.xxzx
            div r3.xz, r6.xxzx, r6.yywy
            and r6.xz, r3.xxyx, r4.zzzz
            and r3.x, r4.y, r3.w
            and r7.yz, r3.zzyz, r4.wwww
            mov r7.x, l(0)
            movc r3.xyz, r3.xxxx, r7.xyzx, r0.xyzx
            mov r6.y, l(0)
            movc r5.xyz, r4.xxxx, r6.xyzx, r3.xyzx
          endif 
        endif 
      endif 
    endif 
    dp3 r3.x, r0.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r3.y, r5.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r3.x, -r3.y, r3.x
    add r3.xyz, r3.xxxx, r5.xyzx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(29)
    dp3 r3.x, r0.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r3.y, r2.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r3.x, -r3.y, r3.x
    add r3.xyz, r2.xyzx, r3.xxxx
    add r3.xyz, -r0.xyzx, r3.xyzx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    case l(30)
    dp3 r3.x, r2.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    dp3 r3.y, r0.xzyx, l(0.333330, 0.333330, 0.333340, 0.000000)
    add r3.xyz, -r3.yyyy, r3.xxxx
    mad r1.yzw, cb0[1].wwww, r3.xxyz, r0.xxyz
    break 
    default 
    add r2.xyz, -r0.xyzx, r2.xyzx
    mad r1.yzw, cb0[1].wwww, r2.xxyz, r0.xxyz
    break 
  endswitch 
  mov o0.xyz, r1.yzwy
  mov o0.w, r2.w
else 
  mov o0.xyzw, r0.xyzw
endif 
lt r1.x, r1.x, cb0[2].z
if_nz r1.x
  mov o0.xyzw, r0.xyzw
endif 
ret 
// Approximately 585 instruction slots used
