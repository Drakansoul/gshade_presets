//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Timer;                       // Offset:    0 Size:     4
//   bool HasDepth;                     // Offset:    4 Size:     4 [unused]
//   int DIFF_BLEND;                    // Offset:    8 Size:     4
//   int TINT_AMOUNT;                   // Offset:   12 Size:     4
//   float3 TINT_COLOR;                 // Offset:   16 Size:    12
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
// __V__TexColor                     texture  float4          2d             t4      1 
// __V__TexBlur2                     texture  float4          2d            t12      1 
// __V__avGen__texLod                texture  float4          2d            t16      1 
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t16
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 6
add r0.xy, v1.xyxx, cb0[0].xxxx
dp2 r0.x, r0.xyxx, l(25.979601, 156.466003, 0.000000, 0.000000)
sincos r0.x, null, r0.x
mul r0.x, r0.x, l(43758.542969)
frc r0.z, r0.x
mov r0.xy, v1.xyxx
add r0.xyz, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r0.w, r0.x, l(34.000000), l(1.000000)
mul r0.x, r0.x, r0.w
mul r0.w, r0.x, l(289.000000)
ge r0.w, r0.w, -r0.w
movc r1.xy, r0.wwww, l(289.000000,0.003460,0,0), l(-289.000000,-0.003460,0,0)
mul r0.x, r0.x, r1.y
frc r0.x, r0.x
mad r0.x, r1.x, r0.x, r0.y
mad r0.y, r0.x, l(34.000000), l(1.000000)
mul r0.x, r0.x, r0.y
mul r0.y, r0.x, l(289.000000)
ge r0.y, r0.y, -r0.y
movc r0.yw, r0.yyyy, l(0,289.000000,0,0.003460), l(0,-289.000000,0,-0.003460)
mul r0.x, r0.w, r0.x
frc r0.x, r0.x
mad r0.x, r0.y, r0.x, r0.z
mad r0.y, r0.x, l(34.000000), l(1.000000)
mul r0.x, r0.x, r0.y
mul r0.y, r0.x, l(289.000000)
ge r0.y, r0.y, -r0.y
movc r0.yz, r0.yyyy, l(0,289.000000,0.003460,0), l(0,-289.000000,-0.003460,0)
mul r0.x, r0.z, r0.x
frc r0.x, r0.x
mul r0.x, r0.x, r0.y
mad r0.y, r0.x, l(34.000000), l(1.000000)
mul r0.y, r0.x, r0.y
mul r0.x, r0.x, l(0.024390)
frc r1.x, r0.x
mul r0.x, r0.y, l(289.000000)
ge r0.x, r0.x, -r0.x
movc r0.xz, r0.xxxx, l(289.000000,0,0.003460,0), l(-289.000000,0,-0.003460,0)
mul r0.y, r0.z, r0.y
frc r0.y, r0.y
mul r0.x, r0.y, r0.x
mad r0.y, r0.x, l(34.000000), l(1.000000)
mul r0.y, r0.x, r0.y
mul r0.x, r0.x, l(0.024390)
frc r2.x, r0.x
mul r0.x, r0.y, l(289.000000)
ge r0.x, r0.x, -r0.x
movc r0.xz, r0.xxxx, l(289.000000,0,0.003460,0), l(-289.000000,0,-0.003460,0)
mul r0.y, r0.z, r0.y
frc r0.y, r0.y
mul r0.x, r0.y, r0.x
mad r0.y, r0.x, l(34.000000), l(1.000000)
mul r0.y, r0.x, r0.y
mul r0.x, r0.x, l(0.024390)
frc r1.y, r0.x
mul r0.x, r0.y, l(289.000000)
ge r0.x, r0.x, -r0.x
movc r0.xz, r0.xxxx, l(289.000000,0,0.003460,0), l(-289.000000,0,-0.003460,0)
mul r0.y, r0.z, r0.y
frc r0.y, r0.y
mul r0.x, r0.y, r0.x
mad r0.y, r0.x, l(34.000000), l(1.000000)
mul r0.y, r0.x, r0.y
mul r0.x, r0.x, l(0.024390)
frc r2.y, r0.x
mul r0.x, r0.y, l(289.000000)
ge r0.x, r0.x, -r0.x
movc r0.xz, r0.xxxx, l(289.000000,0,0.003460,0), l(-289.000000,0,-0.003460,0)
mul r0.y, r0.z, r0.y
frc r0.y, r0.y
mul r0.x, r0.y, r0.x
mad r0.y, r0.x, l(34.000000), l(1.000000)
mul r0.y, r0.x, r0.y
mul r0.x, r0.x, l(0.024390)
frc r1.z, r0.x
mul r0.x, r0.y, l(289.000000)
ge r0.x, r0.x, -r0.x
movc r0.xz, r0.xxxx, l(289.000000,0,0.003460,0), l(-289.000000,0,-0.003460,0)
mul r0.y, r0.z, r0.y
frc r0.y, r0.y
mul r0.x, r0.y, r0.x
mul r0.x, r0.x, l(0.024390)
frc r2.z, r0.x
add r0.xyz, r1.xyzx, -r2.xyzx
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
add r0.xyz, r0.xyzx, -r1.xyzx
sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, l(0.500000, 0.500000, 0.000000, 0.000000), t16.xyzw, s0, l(10.000000)
max r2.xyz, r2.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
log r2.xyz, r2.xyzx
mul r2.xyz, r2.xyzx, l(0.750000, 0.750000, 0.750000, 0.000000)
exp r2.xyz, r2.xyzx
dp3 r0.w, r2.xyzx, l(0.212395, 0.701049, 0.086556, 0.000000)
mad r0.w, r0.w, l(1.140000), l(0.010000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t4.xyzw, s1
dp3 r1.w, r2.xyzx, l(0.212395, 0.701049, 0.086556, 0.000000)
max r1.w, r1.w, l(0.000000)
log r1.w, r1.w
mul r0.w, r0.w, r1.w
exp r0.w, r0.w
add r0.w, -r0.w, l(1.000000)
add r3.xyz, cb0[1].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
itof r4.xy, cb0[0].wzww
mul r4.xy, r4.xyxx, l(0.010000, 0.010000, 0.000000, 0.000000)
mad r3.xyz, r4.xxxx, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r4.xzw, v1.xyxx, t12.xwyz, s1
mul r5.xyz, r3.xyzx, r4.xzwx
dp3 r1.w, r5.xyzx, l(0.212395, 0.701049, 0.086556, 0.000000)
mad r3.xyz, r4.xzwx, r3.xyzx, -r1.wwww
dp3 r1.w, r4.xzwx, l(0.212395, 0.701049, 0.086556, 0.000000)
add r3.xyz, r1.wwww, r3.xyzx
add r3.xyz, -r2.xyzx, r3.xyzx
mul r3.xyz, r0.wwww, r3.xyzx
mad r2.xyz, r4.yyyy, r3.xyzx, r2.xyzx
add r3.xyz, r2.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mul_sat r3.xyz, r3.xyzx, l(-509.992279, -509.992279, -509.992279, 0.000000)
mul_sat r4.xyz, r2.xyzx, l(509.999969, 509.999969, 509.999969, 0.000000)
min r3.xyz, r3.xyzx, r4.xyzx
mad r0.xyz, r3.xyzx, r0.xyzx, r1.xyzx
mad o0.xyz, r0.xyzx, l(0.003922, 0.003922, 0.003922, 0.000000), r2.xyzx
ret 
// Approximately 120 instruction slots used
