//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int GaussianBloomRadius;           // Offset:    0 Size:     4
//   float GaussianBloomOffset;         // Offset:    4 Size:     4 [unused]
//   float Threshold;                   // Offset:    8 Size:     4 [unused]
//   float3 BloomTint;                  // Offset:   16 Size:    12 [unused]
//   float Exposure;                    // Offset:   28 Size:     4 [unused]
//   float GaussianBloomSaturation;     // Offset:   32 Size:     4 [unused]
//   float DitherStrength;              // Offset:   36 Size:     4 [unused]
//   float GaussianBloomStrength;       // Offset:   40 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s1                              sampler      NA          NA             s1      1 
// __V__GaussianBloomTex             texture  float4          2d             t4      1 
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
dcl_immediateConstantBuffer { { 0, 0.132980, 0, 0.066490},
                              { 1.458430, 0.232276, 1.489585, 0.128470},
                              { 3.403985, 0.135326, 3.475714, 0.111918},
                              { 5.351806, 0.051156, 5.461880, 0.087313},
                              { 7.302941, 0.012539, 7.448104, 0.061001},
                              { 9.258160, 0.001991, 9.434408, 0.038166},
                              { 0, 0.044327, 11.420812, 0.021384},
                              { 1.495371, 0.087299, 13.407333, 0.010729},
                              { 3.489199, 0.082089, 15.393993, 0.004821},
                              { 5.483031, 0.073482, 17.380812, 0.001940},
                              { 7.476869, 0.062617, 19.367800, 0.000699},
                              { 9.470713, 0.050796, 0, 0.033245},
                              { 11.464565, 0.039226, 1.495371, 0.065916},
                              { 13.458429, 0.028837, 3.489199, 0.063671},
                              { 15.452306, 0.020181, 5.483031, 0.059819},
                              { 17.446196, 0.013445, 7.476869, 0.054664},
                              { 19.440104, 0.008527, 9.470713, 0.048587},
                              { 21.434029, 0.005148, 11.464565, 0.042005},
                              { 23.427973, 0.002959, 13.458429, 0.035321},
                              { 25.421940, 0.001619, 15.452306, 0.028888},
                              { 27.415928, 0.000843, 17.446196, 0.022981},
                              { 0, 0, 19.466198, 0.017782},
                              { 0, 0, 21.462744, 0.013382},
                              { 0, 0, 23.459291, 0.009796},
                              { 0, 0, 25.455845, 0.006975},
                              { 0, 0, 27.452402, 0.004830},
                              { 0, 0, 29.448961, 0.003253},
                              { 0, 0, 31.445528, 0.002132},
                              { 0, 0, 33.442101, 0.001358} }
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 5
dcl_indexableTemp x0[4], 4
dcl_indexableTemp x1[4], 4
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t4.xyzw, s1
ieq r1.xyz, cb0[0].xxxx, l(1, 2, 3, 0)
if_z cb0[0].x
  mov x0[0].x, l(0)
  mov x0[1].x, l(1.182425)
  mov x0[2].x, l(3.029312)
  mov x0[3].x, l(5.004070)
  mov x1[0].x, l(0.398940)
  mov x1[1].x, l(0.295960)
  mov x1[2].x, l(0.004566)
  mov x1[3].x, l(0.000001)
  mul r2.xyz, r0.xyzx, l(0.398940, 0.398940, 0.398940, 0.000000)
  mov r3.x, l(0)
  mov r0.xyz, r2.xyzx
  mov r0.w, l(1)
  mov r1.w, l(-1)
  loop 
    breakc_z r1.w
    mov r2.w, x0[r0.w + 0].x
    mul r3.y, r2.w, l(0.000468)
    add r3.zw, r3.xxxy, v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.zwzz, t4.xyzw, s1, l(0.000000)
    mov r2.w, x1[r0.w + 0].x
    mad r4.xyz, r4.xyzx, r2.wwww, r0.xyzx
    add r3.yz, -r3.xxyx, v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r3.yzw, r3.yzyy, t4.wxyz, s1, l(0.000000)
    mad r0.xyz, r3.yzwy, r2.wwww, r4.xyzx
    iadd r0.w, r0.w, l(1)
    ilt r1.w, r0.w, l(4)
  endloop 
endif 
if_nz r1.x
  mul r2.xyz, r0.xyzx, l(0.132980, 0.132980, 0.132980, 0.000000)
  mov r3.x, l(0)
  mov r0.xyz, r2.xyzx
  mov r0.w, l(1)
  mov r1.x, l(-1)
  loop 
    breakc_z r1.x
    mul r3.y, l(0.000468), icb[r0.w + 0].x
    add r3.zw, r3.xxxy, v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.zwzz, t4.xyzw, s1, l(0.000000)
    mad r4.xyz, r4.xyzx, icb[r0.w + 0].yyyy, r0.xyzx
    add r3.yz, -r3.xxyx, v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r3.yzw, r3.yzyy, t4.wxyz, s1, l(0.000000)
    mad r0.xyz, r3.yzwy, icb[r0.w + 0].yyyy, r4.xyzx
    iadd r0.w, r0.w, l(1)
    ilt r1.x, r0.w, l(6)
  endloop 
endif 
if_nz r1.y
  mul r1.xyw, r0.xyxz, l(0.066490, 0.066490, 0.000000, 0.066490)
  mov r2.x, l(0)
  mov r0.xyz, r1.xywx
  mov r0.w, l(1)
  mov r2.z, l(-1)
  loop 
    breakc_z r2.z
    mul r2.y, l(0.000468), icb[r0.w + 0].z
    add r3.xy, r2.xyxx, v1.xyxx
    sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyxx, t4.xyzw, s1, l(0.000000)
    mad r3.xyz, r3.xyzx, icb[r0.w + 0].wwww, r0.xyzx
    add r2.yw, -r2.xxxy, v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.ywyy, t4.xyzw, s1, l(0.000000)
    mad r0.xyz, r4.xyzx, icb[r0.w + 0].wwww, r3.xyzx
    iadd r0.w, r0.w, l(1)
    ilt r2.z, r0.w, l(11)
  endloop 
endif 
if_nz r1.z
  mul r1.xyz, r0.xyzx, l(0.044327, 0.044327, 0.044327, 0.000000)
  mov r2.x, l(0)
  mov r0.xyz, r1.xyzx
  mov r0.w, l(1)
  mov r1.w, l(-1)
  loop 
    breakc_z r1.w
    mul r2.y, l(0.000468), icb[r0.w + 6].x
    add r2.zw, r2.xxxy, v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.zwzz, t4.xyzw, s1, l(0.000000)
    mad r3.xyz, r3.xyzx, icb[r0.w + 6].yyyy, r0.xyzx
    add r2.yz, -r2.xxyx, v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r2.yzw, r2.yzyy, t4.wxyz, s1, l(0.000000)
    mad r0.xyz, r2.yzwy, icb[r0.w + 6].yyyy, r3.xyzx
    iadd r0.w, r0.w, l(1)
    ilt r1.w, r0.w, l(15)
  endloop 
endif 
ieq r0.w, cb0[0].x, l(4)
if_nz r0.w
  mul r1.xyz, r0.xyzx, l(0.033245, 0.033245, 0.033245, 0.000000)
  mov r2.x, l(0)
  mov r3.xyz, r1.xyzx
  mov r0.w, l(1)
  mov r1.w, l(-1)
  loop 
    breakc_z r1.w
    mul r2.y, l(0.000468), icb[r0.w + 11].z
    add r2.zw, r2.xxxy, v1.xxxy
    sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t4.xyzw, s1, l(0.000000)
    mad r4.xyz, r4.xyzx, icb[r0.w + 11].wwww, r3.xyzx
    add r2.yz, -r2.xxyx, v1.xxyx
    sample_l_indexable(texture2d)(float,float,float,float) r2.yzw, r2.yzyy, t4.wxyz, s1, l(0.000000)
    mad r3.xyz, r2.yzwy, icb[r0.w + 11].wwww, r4.xyzx
    iadd r0.w, r0.w, l(1)
    ilt r1.w, r0.w, l(18)
  endloop 
  mov o0.xyz, r3.xyzx
else 
  mov o0.xyz, r0.xyzx
endif 
ret 
// Approximately 112 instruction slots used