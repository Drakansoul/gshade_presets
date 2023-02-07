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
//   int ClarityBlendMode;              // Offset:    8 Size:     4 [unused]
//   int ClarityBlendIfDark;            // Offset:   12 Size:     4 [unused]
//   int ClarityBlendIfLight;           // Offset:   16 Size:     4 [unused]
//   bool ClarityViewBlendIfMask;       // Offset:   20 Size:     4 [unused]
//   float ClarityStrength;             // Offset:   24 Size:     4 [unused]
//   float ClarityDarkIntensity;        // Offset:   28 Size:     4 [unused]
//   float ClarityLightIntensity;       // Offset:   32 Size:     4 [unused]
//   bool ClarityViewMask;              // Offset:   36 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ClarityTex                   texture  float4          2d             t4      1 
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
// SV_TARGET                0   x           0   TARGET   float   x   
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.x
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t4.xyzw, s0
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
    sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.zwzz, t4.yzwx, s0, l(0.000000)
    mad r1.w, r1.w, icb[r1.y + 0].y, r0.x
    mad r2.yz, -r2.xxyx, l(0.000000, 0.000000, 0.000468, 0.000000), v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.yzyy, t4.yxzw, s0, l(0.000000)
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
    sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t4.xyzw, s0, l(0.000000)
    mad r2.x, r2.x, icb[r1.z + 0].w, r0.x
    mad r2.yz, -r1.xxyx, l(0.000000, 0.000000, 0.000468, 0.000000), v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r2.yzyy, t4.yxzw, s0, l(0.000000)
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
    sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t4.yzwx, s0, l(0.000000)
    mad r1.w, r1.w, icb[r0.z + 4].y, r0.x
    mad r2.xy, -r1.xyxx, l(0.000000, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t4.yxzw, s0, l(0.000000)
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
    sample_l_indexable(texture2d)(float,float,float,float) r1.z, r1.zwzz, t4.yzxw, s0, l(0.000000)
    mad r1.z, r1.z, icb[r0.z + 6].w, r0.x
    mad r1.yw, -r1.xxxy, l(0.000000, 0.000000, 0.000000, 0.000468), v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r1.ywyy, t4.yxzw, s0, l(0.000000)
    mad r0.x, r1.y, icb[r0.z + 6].w, r1.z
    iadd r0.z, r0.z, l(1)
    ilt r0.w, r0.z, l(15)
  endloop 
endif 
ieq r0.y, cb0[0].x, l(4)
if_nz r0.y
  mul r0.y, r0.x, l(0.033245)
  mov r1.x, cb0[0].y
  mov r0.z, r0.y
  mov r0.w, l(1)
  mov r1.z, l(-1)
  loop 
    breakc_z r1.z
    mul r1.y, cb0[0].y, icb[r0.w + 15].x
    mad r2.xy, r1.xyxx, l(0.000000, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t4.yzwx, s0, l(0.000000)
    mad r1.w, r1.w, icb[r0.w + 15].y, r0.z
    mad r2.xy, -r1.xyxx, l(0.000000, 0.000468, 0.000000, 0.000000), v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t4.yxzw, s0, l(0.000000)
    mad r0.z, r1.y, icb[r0.w + 15].y, r1.w
    iadd r0.w, r0.w, l(1)
    ilt r1.z, r0.w, l(18)
  endloop 
  mov o0.x, r0.z
else 
  mov o0.x, r0.x
endif 
ret 
// Approximately 99 instruction slots used
