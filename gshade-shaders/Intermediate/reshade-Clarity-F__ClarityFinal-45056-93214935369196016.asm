//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int ClarityRadius;                 // Offset:    0 Size:     4
//   float ClarityOffset;               // Offset:    4 Size:     4
//   int ClarityBlendMode;              // Offset:    8 Size:     4
//   int ClarityBlendIfDark;            // Offset:   12 Size:     4
//   int ClarityBlendIfLight;           // Offset:   16 Size:     4
//   bool ClarityViewBlendIfMask;       // Offset:   20 Size:     4
//   float ClarityStrength;             // Offset:   24 Size:     4
//   float ClarityDarkIntensity;        // Offset:   28 Size:     4
//   float ClarityLightIntensity;       // Offset:   32 Size:     4
//   bool ClarityViewMask;              // Offset:   36 Size:     4
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
// __V__ClarityTex3                  texture  float4          2d             t8      1 
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
// SV_TARGET                0   xyz         0   TARGET   float   xyz 
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0, 0.398940, 0, 0.132980},
                              { 1.182425, 0.295960, 1.458430, 0.232276},
                              { 3.029312, 0.004566, 3.403985, 0.135326},
                              { 5.004070, 0.000001, 5.351806, 0.051156},
                              { 0, 0.066490, 7.302941, 0.012539},
                              { 1.489585, 0.128470, 9.258160, 0.001991},
                              { 3.475714, 0.111918, 0, 0.044327},
                              { 5.461880, 0.087313, 1.495371, 0.087299},
                              { 7.448104, 0.061001, 3.489199, 0.082089},
                              { 9.434408, 0.038166, 5.483031, 0.073482},
                              { 11.420812, 0.021384, 7.476869, 0.062617},
                              { 13.407333, 0.010729, 9.470713, 0.050796},
                              { 15.393993, 0.004821, 11.464565, 0.039226},
                              { 17.380812, 0.001940, 13.458429, 0.028837},
                              { 19.367800, 0.000699, 15.452306, 0.020181},
                              { 0, 0.033245, 17.446196, 0.013445},
                              { 1.495371, 0.065916, 19.440104, 0.008527},
                              { 3.489199, 0.063671, 21.434029, 0.005148},
                              { 5.483031, 0.059819, 23.427973, 0.002959},
                              { 7.476869, 0.054664, 25.421940, 0.001619},
                              { 9.470713, 0.048587, 27.415928, 0.000843},
                              { 11.464565, 0.042005, 0, 0},
                              { 13.458429, 0.035321, 0, 0},
                              { 15.452306, 0.028888, 0, 0},
                              { 17.446196, 0.022981, 0, 0},
                              { 19.466198, 0.017782, 0, 0},
                              { 21.462744, 0.013382, 0, 0},
                              { 23.459291, 0.009796, 0, 0},
                              { 25.455845, 0.006975, 0, 0},
                              { 27.452402, 0.004830, 0, 0},
                              { 29.448961, 0.003253, 0, 0},
                              { 31.445528, 0.002132, 0, 0},
                              { 33.442101, 0.001358, 0, 0} }
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t8
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 5
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t8.xyzw, s0
ieq r0.yzw, cb0[0].xxxx, l(0, 1, 2, 3)
if_z cb0[0].x
  mul r1.x, r0.x, l(0.398940)
  mov r2.x, cb0[0].y
  mov r0.x, r1.x
  mov r1.yz, l(0,1,-1,0)
  loop 
    breakc_z r1.z
    mul r2.y, cb0[0].y, icb[r1.y + 0].x
    mad r2.zw, r2.xxxy, l(0.000000, 0.000000, 0.000000, 0.000468), v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.zwzz, t8.yzwx, s0, l(0.000000)
    mad r1.w, r1.w, icb[r1.y + 0].y, r0.x
    mad r2.yz, -r2.xxyx, l(0.000000, 0.000000, 0.000468, 0.000000), v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.yzyy, t8.yxzw, s0, l(0.000000)
    mad r0.x, r2.y, icb[r1.y + 0].y, r1.w
    iadd r1.y, r1.y, l(1)
    ilt r1.z, r1.y, l(4)
  endloop 
endif 
if_nz r0.y
  mul r0.y, r0.x, l(0.132980)
  mov r1.x, cb0[0].y
  mov r0.x, r0.y
  mov r1.zw, l(0,0,1,-1)
  loop 
    breakc_z r1.w
    mul r1.y, cb0[0].y, icb[r1.z + 0].z
    mad r2.xy, r1.xyxx, l(0.000000, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t8.xyzw, s0, l(0.000000)
    mad r2.x, r2.x, icb[r1.z + 0].w, r0.x
    mad r2.yz, -r1.xxyx, l(0.000000, 0.000000, 0.000468, 0.000000), v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r2.yzyy, t8.yxzw, s0, l(0.000000)
    mad r0.x, r1.y, icb[r1.z + 0].w, r2.x
    iadd r1.z, r1.z, l(1)
    ilt r1.w, r1.z, l(6)
  endloop 
endif 
if_nz r0.z
  mul r0.y, r0.x, l(0.066490)
  mov r1.x, cb0[0].y
  mov r0.x, r0.y
  mov r0.z, l(1)
  mov r1.z, l(-1)
  loop 
    breakc_z r1.z
    mul r1.y, cb0[0].y, icb[r0.z + 4].x
    mad r2.xy, r1.xyxx, l(0.000000, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t8.yzwx, s0, l(0.000000)
    mad r1.w, r1.w, icb[r0.z + 4].y, r0.x
    mad r2.xy, -r1.xyxx, l(0.000000, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t8.yxzw, s0, l(0.000000)
    mad r0.x, r1.y, icb[r0.z + 4].y, r1.w
    iadd r0.z, r0.z, l(1)
    ilt r1.z, r0.z, l(11)
  endloop 
endif 
if_nz r0.w
  mul r0.y, r0.x, l(0.044327)
  mov r1.x, cb0[0].y
  mov r0.x, r0.y
  mov r0.zw, l(0,0,1,-1)
  loop 
    breakc_z r0.w
    mul r1.y, cb0[0].y, icb[r0.z + 6].z
    mad r1.zw, r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000468), v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r1.z, r1.zwzz, t8.yzxw, s0, l(0.000000)
    mad r1.z, r1.z, icb[r0.z + 6].w, r0.x
    mad r1.yw, -r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000468), v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r1.ywyy, t8.yxzw, s0, l(0.000000)
    mad r0.x, r1.y, icb[r0.z + 6].w, r1.z
    iadd r0.z, r0.z, l(1)
    ilt r0.w, r0.z, l(15)
  endloop 
endif 
ieq r0.y, cb0[0].x, l(4)
if_nz r0.y
  mul r0.y, r0.x, l(0.033245)
  mov r1.x, cb0[0].y
  mov r0.x, r0.y
  mov r0.zw, l(0,0,1,-1)
  loop 
    breakc_z r0.w
    mul r1.y, cb0[0].y, icb[r0.z + 15].x
    mad r1.zw, r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000468), v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r1.z, r1.zwzz, t8.yzxw, s0, l(0.000000)
    mad r1.z, r1.z, icb[r0.z + 15].y, r0.x
    mad r1.yw, -r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000468), v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r1.ywyy, t8.yxzw, s0, l(0.000000)
    mad r0.x, r1.y, icb[r0.z + 15].y, r1.z
    iadd r0.z, r0.z, l(1)
    ilt r0.w, r0.z, l(18)
  endloop 
endif 
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v1.xyxx, t0.wxyz, s0
dp3 r1.x, r0.yzwy, l(0.327869, 0.655738, 0.016393, 0.000000)
add r0.x, -r0.x, r1.x
add r0.x, r0.x, l(1.000000)
mul r1.w, r0.x, l(0.500000)
mov_sat r2.x, r1.w
mad r2.y, r2.x, l(-2.000000), l(3.000000)
mul r2.x, r2.x, r2.x
mad r2.x, r2.y, r2.x, -r1.w
mad r2.y, cb0[1].w, r2.x, r1.w
mad r1.w, cb0[2].x, r2.x, r1.w
ge r0.x, r0.x, l(1.000000)
and r0.x, r0.x, l(0x3f800000)
add r1.w, -r2.y, r1.w
mad r1.z, r0.x, r1.w, r2.y
if_nz cb0[2].y
  mov r0.yzw, r1.zzzz
  mov r2.xyz, l(1.000000,1.000000,1.000000,0)
  mov r1.x, r1.z
else 
  div r2.xyz, r0.yzwy, r1.xxxx
  add r0.x, r1.x, r1.x
  mul r1.w, r1.x, r1.x
  mad r2.w, -r1.z, l(2.000000), l(1.000000)
  mul r1.w, r1.w, r2.w
  mad r1.w, r0.x, r1.z, r1.w
  add r2.w, -r1.z, l(1.000000)
  rsq r3.x, r1.x
  div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x
  mad r3.y, r1.z, l(2.000000), l(-1.000000)
  mul r3.x, r3.y, r3.x
  mad r2.w, r0.x, r2.w, r3.x
  ge r3.x, r1.z, l(0.490000)
  and r3.x, r3.x, l(0x3f800000)
  add r2.w, -r1.w, r2.w
  mad r1.w, r3.x, r2.w, r1.w
  movc r1.w, cb0[0].z, r1.z, r1.w
  ieq r3.xyzw, cb0[0].zzzz, l(1, 2, 3, 4)
  mul r2.w, r0.x, r1.w
  add r4.xy, -r1.xwxx, l(1.000000, 1.000000, 0.000000, 0.000000)
  add r4.x, r4.x, r4.x
  mad r4.y, -r4.x, r4.y, l(1.000000)
  ge r4.z, r1.x, l(0.500000)
  and r4.z, r4.z, l(0x3f800000)
  mad r4.y, -r0.x, r1.w, r4.y
  mad r2.w, r4.z, r4.y, r2.w
  movc r1.w, r3.x, r2.w, r1.w
  mul r2.w, r0.x, r1.w
  add r3.x, -r1.w, l(1.000000)
  mad r3.x, -r4.x, r3.x, l(1.000000)
  ge r4.x, r1.w, l(0.500000)
  and r4.x, r4.x, l(0x3f800000)
  mad r3.x, -r0.x, r1.w, r3.x
  mad r2.w, r4.x, r3.x, r2.w
  movc r1.w, r3.y, r2.w, r1.w
  mul_sat r2.w, r0.x, r1.w
  movc r1.w, r3.z, r2.w, r1.w
  mul r2.w, r0.x, r1.w
  add r3.x, -r1.w, l(1.000000)
  add r3.x, r3.x, r3.x
  div r3.x, r1.x, r3.x
  ge r3.y, r1.w, l(0.500000)
  and r3.y, r3.y, l(0x3f800000)
  mad r0.x, -r0.x, r1.w, r3.x
  mad r0.x, r3.y, r0.x, r2.w
  movc r0.x, r3.w, r0.x, r1.w
  ieq r3.xy, cb0[0].zzzz, l(5, 6, 0, 0)
  mad r1.w, r0.x, l(2.000000), r1.x
  add r1.w, r1.w, l(-1.000000)
  movc r0.x, r3.x, r1.w, r0.x
  add r1.w, r1.x, r0.x
  add_sat r1.w, r1.w, l(-0.500000)
  movc r1.z, r3.y, r1.w, r0.x
endif 
ilt r0.x, l(0), cb0[0].w
ilt r1.w, cb0[1].x, l(255)
or r2.w, r0.x, r1.w
ine r3.x, cb0[1].y, l(0)
or r2.w, r2.w, r3.x
itof r3.x, cb0[0].w
mad r3.x, r3.x, l(0.003922), l(0.000100)
itof r3.y, cb0[1].x
mad r3.y, r3.y, l(0.003922), l(-0.000100)
dp3 r0.y, r0.yzwy, l(0.333333, 0.333333, 0.333333, 0.000000)
mul r0.z, r3.x, l(0.400000)
mad r0.w, -r3.x, l(0.800000), r0.y
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
mul_sat r0.z, r0.z, r0.w
mad r0.w, r0.z, l(-2.000000), l(3.000000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, r0.w
movc r0.x, r0.x, r0.z, l(1.000000)
mul r0.z, r3.y, l(0.400000)
mad r0.y, -r3.y, l(0.800000), r0.y
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
mul_sat r0.y, r0.z, r0.y
mad r0.z, r0.y, l(-2.000000), l(3.000000)
mul r0.y, r0.y, r0.y
mul r0.y, r0.y, r0.z
mad r0.y, r0.y, -r0.x, r0.x
movc r0.x, r1.w, r0.y, r0.x
add r0.y, -r1.x, r1.z
mad r1.y, r0.x, r0.y, r1.x
movc r0.yzw, cb0[1].yyyy, l(0,1.000000,1.000000,1.000000), r2.xxyz
movc r1.yw, cb0[1].yyyy, r0.xxxx, r1.xxxy
movc r0.xyz, r2.wwww, r0.yzwy, r2.xyzx
movc r1.xy, r2.wwww, r1.ywyy, r1.xzxx
add r0.w, -r1.x, r1.y
mad r0.w, cb0[1].z, r0.w, r1.x
mul_sat o0.xyz, r0.xyzx, r0.wwww
ret 
// Approximately 205 instruction slots used
