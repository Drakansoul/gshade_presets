//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Frame;                       // Offset:    0 Size:     4 [unused]
//   int Hints;                         // Offset:    4 Size:     4 [unused]
//   bool debug;                        // Offset:    8 Size:     4 [unused]
//   bool ShowIcon;                     // Offset:   12 Size:     4 [unused]
//   bool LimitPos;                     // Offset:   16 Size:     4 [unused]
//   float OGLighting;                  // Offset:   20 Size:     4 [unused]
//   float BUMP;                        // Offset:   24 Size:     4
//   int Shadow_Quality;                // Offset:   28 Size:     4 [unused]
//   float Shadow_Depth;                // Offset:   32 Size:     4 [unused]
//   float UI_FOG_DENSITY;              // Offset:   36 Size:     4 [unused]
//   float3 UI_FOG_COLOR;               // Offset:   48 Size:    12 [unused]
//   bool UI_FOG_DEPTH_MASK;            // Offset:   60 Size:     4 [unused]
//   float roughness;                   // Offset:   64 Size:     4
//   float specular;                    // Offset:   68 Size:     4 [unused]
//   bool L1;                           // Offset:   72 Size:     4 [unused]
//   bool UI_FOG1;                      // Offset:   76 Size:     4 [unused]
//   bool UI_S_ENABLE1;                 // Offset:   80 Size:     4 [unused]
//   float3 UI_LAMP1;                   // Offset:   84 Size:    12 [unused]
//   float3 UI_LAMP1_PRECISE;           // Offset:   96 Size:    12 [unused]
//   float3 UI_COLOR1;                  // Offset:  112 Size:    12 [unused]
//   float UI_POWER1;                   // Offset:  124 Size:     4 [unused]
//   float UI_SOFT_S1;                  // Offset:  128 Size:     4 [unused]
//   bool L2;                           // Offset:  132 Size:     4 [unused]
//   bool UI_FOG2;                      // Offset:  136 Size:     4 [unused]
//   bool UI_S_ENABLE2;                 // Offset:  140 Size:     4 [unused]
//   float3 UI_LAMP2;                   // Offset:  144 Size:    12 [unused]
//   float3 UI_LAMP2_PRECISE;           // Offset:  160 Size:    12 [unused]
//   float3 UI_COLOR2;                  // Offset:  176 Size:    12 [unused]
//   float UI_POWER2;                   // Offset:  188 Size:     4 [unused]
//   float UI_SOFT_S2;                  // Offset:  192 Size:     4 [unused]
//   bool L3;                           // Offset:  196 Size:     4 [unused]
//   bool UI_FOG3;                      // Offset:  200 Size:     4 [unused]
//   bool UI_S_ENABLE3;                 // Offset:  204 Size:     4 [unused]
//   float3 UI_LAMP3;                   // Offset:  208 Size:    12 [unused]
//   float3 UI_LAMP3_PRECISE;           // Offset:  224 Size:    12 [unused]
//   float3 UI_COLOR3;                  // Offset:  240 Size:    12 [unused]
//   float UI_POWER3;                   // Offset:  252 Size:     4 [unused]
//   float UI_SOFT_S3;                  // Offset:  256 Size:     4 [unused]
//   bool L4;                           // Offset:  260 Size:     4 [unused]
//   bool UI_FOG4;                      // Offset:  264 Size:     4 [unused]
//   bool UI_S_ENABLE4;                 // Offset:  268 Size:     4 [unused]
//   float3 UI_LAMP4;                   // Offset:  272 Size:    12 [unused]
//   float3 UI_LAMP4_PRECISE;           // Offset:  288 Size:    12 [unused]
//   float3 UI_COLOR4;                  // Offset:  304 Size:    12 [unused]
//   float UI_POWER4;                   // Offset:  316 Size:     4 [unused]
//   float UI_SOFT_S4;                  // Offset:  320 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
// __V__TexColor                     texture  float4          2d             t4      1 
// __V__NormTex1                     texture  float4          2d            t10      1 
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
dcl_constantbuffer CB0[5], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t10
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 14
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t10.xyzw, s0, l(0.000000)
add r1.x, -r0.w, l(1.000000)
add_sat r1.x, r1.x, r1.x
mul r1.x, r1.x, l(0.500000)
max r1.x, r1.x, l(0.000100)
rcp r1.x, r1.x
mov r2.x, l(0)
mov r3.xyzw, l(0,0,0,0)
mov r1.yzw, l(0,0,-3,-1)
loop 
  breakc_z r1.w
  itof r2.z, r1.z
  mul r2.y, r2.z, l(0.001170)
  add r2.yz, r2.xxyx, v1.xxyx
  sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.yzyy, t10.xyzw, s0
  add r5.xyzw, -r0.xyzw, r4.xyzw
  dp4 r2.y, l(0.333000, 0.333000, 0.333000, 500.000000), |r5.xyzw|
  dp2 r2.y, r2.yyyy, r1.xxxx
  min r2.y, r2.y, l(1.000000)
  add r2.y, -r2.y, l(1.000000)
  mad r3.xyzw, r4.xyzw, r2.yyyy, r3.xyzw
  add r1.y, r1.y, r2.y
  iadd r1.z, r1.z, l(1)
  ige r1.w, l(3), r1.z
endloop 
div r0.xyzw, r3.xyzw, r1.yyyy
add r1.xyzw, v1.xyxy, l(0.000000, 0.000468, 0.000260, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.zwzz, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t4.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r4.xyz, v1.xyxx, t4.xyzw, s0
add r5.xyz, r2.xyzx, r3.xyzx
add r5.xyz, r4.xyzx, r5.xyzx
add r2.w, r5.y, r5.x
add r2.w, r5.z, r2.w
mul r2.w, r2.w, l(0.333333)
rcp r2.w, r2.w
mul r2.w, r2.w, cb0[1].z
min r2.w, r2.w, l(4.000000)
mul r5.xyz, r2.wwww, r4.xyzx
sample_l_indexable(texture2d)(float,float,float,float) r3.w, r1.zwzz, t2.yzwx, s0, l(0.000000)
mad r4.w, -r3.w, l(999.000000), l(1000.000000)
div r3.w, r3.w, r4.w
sample_l_indexable(texture2d)(float,float,float,float) r4.w, r1.xyxx, t2.yzwx, s0, l(0.000000)
mad r5.w, -r4.w, l(999.000000), l(1000.000000)
div r4.w, r4.w, r5.w
sample_l_indexable(texture2d)(float,float,float,float) r5.w, v1.xyxx, t2.yzwx, s0, l(0.000000)
mad r6.x, -r5.w, l(999.000000), l(1000.000000)
div r5.w, r5.w, r6.x
mad r6.xyz, -r2.xyzx, r2.wwww, r5.xyzx
mad r5.xyz, -r3.xyzx, r2.wwww, r5.xyzx
add r2.w, r6.y, r6.x
add r2.w, r6.z, r2.w
mul r2.w, r2.w, l(0.333333)
add r6.x, r3.w, -r5.w
mad r6.y, -|r6.x|, l(1000.000000), l(1.000000)
max r6.y, r6.y, l(0.000000)
mul r7.x, r2.w, r6.y
add r2.w, r5.y, r5.x
add r2.w, r5.z, r2.w
mul r2.w, r2.w, l(0.333333)
add r5.x, r4.w, -r5.w
mad r5.y, -|r5.x|, l(1000.000000), l(1.000000)
max r5.y, r5.y, l(0.000000)
mul r7.y, r2.w, r5.y
mov r7.z, l(1.000000)
dp3 r2.w, r7.xyzx, r7.xyzx
rsq r2.w, r2.w
mad r6.yzw, r7.xxyz, r2.wwww, l(0.000000, 0.000000, 0.000000, 1.000000)
mul r7.xyzw, r0.xyzw, l(-1.000000, -1.000000, 1.000000, 1000.000000)
dp3 r2.w, r6.yzwy, r7.xyzx
mul r8.xyz, r2.wwww, r6.yzwy
div r6.yzw, r8.xxyz, r6.wwww
mad o0.xyz, -r0.xyzx, l(-1.000000, -1.000000, 1.000000, 0.000000), r6.yzwy
mad r1.xyzw, r1.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
mul r0.xyz, r4.wwww, l(1000.000000, 523.598816, 2000.000000, 0.000000)
mul r8.xy, r0.yyyy, r1.xyxx
add r9.xyzw, v1.xyxy, l(-0.000000, -0.000468, -0.000260, -0.000000)
mad r10.xyzw, r9.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.y, r9.xyxx, t2.yxzw, s0, l(0.000000)
mad r1.x, -r0.y, l(999.000000), l(1000.000000)
div r0.y, r0.y, r1.x
mul r6.yzw, r0.yyyy, l(0.000000, 1000.000000, 523.598816, 2000.000000)
mul r11.xy, r6.zzzz, r10.xyxx
mul r12.xyz, r3.wwww, l(1000.000000, 523.598816, 2000.000000, 0.000000)
mul r1.xy, r1.zwzz, r12.yyyy
sample_l_indexable(texture2d)(float,float,float,float) r0.y, r9.zwzz, t2.yxzw, s0, l(0.000000)
mad r2.w, -r0.y, l(999.000000), l(1000.000000)
div r0.y, r0.y, r2.w
mul r9.xyz, r0.yyyy, l(1000.000000, 523.598816, 2000.000000, 0.000000)
mul r10.xy, r9.yyyy, r10.zwzz
add r13.xyzw, v1.xyxy, l(0.000000, 0.000936, -0.000000, -0.000936)
sample_l_indexable(texture2d)(float,float,float,float) r0.y, r13.xyxx, t2.yxzw, s0, l(0.000000)
mad r2.w, -r0.y, l(999.000000), l(1000.000000)
div r0.y, r0.y, r2.w
sample_l_indexable(texture2d)(float,float,float,float) r2.w, r13.zwzz, t2.yzwx, s0, l(0.000000)
mad r3.w, -r2.w, l(999.000000), l(1000.000000)
div r2.w, r2.w, r3.w
add r13.xyzw, v1.xyxy, l(0.000521, 0.000000, -0.000521, -0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r3.w, r13.xyxx, t2.yzwx, s0, l(0.000000)
mad r4.w, -r3.w, l(999.000000), l(1000.000000)
div r3.w, r3.w, r4.w
sample_l_indexable(texture2d)(float,float,float,float) r4.w, r13.zwzz, t2.yzwx, s0, l(0.000000)
mad r5.y, -r4.w, l(999.000000), l(1000.000000)
div r4.w, r4.w, r5.y
mad r0.y, -r0.y, l(1000.000000), r0.z
mad r0.z, -r2.w, l(1000.000000), r6.w
mad r2.w, -r3.w, l(1000.000000), r12.z
mad r3.w, -r4.w, l(1000.000000), r9.z
mad r5.yz, v1.xxyx, l(0.000000, 2.000000, 2.000000, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r13.xw, r5.wwww, l(523.598816, 0.000000, 0.000000, 1000.000000)
mul r13.xy, r5.yzyy, r13.xxxx
mul r13.z, r13.x, l(1.796911)
mul r8.z, r8.x, l(1.796911)
mov r8.w, r0.x
add r8.xyz, r8.wzyw, -r13.wzyw
mul r10.z, r10.x, l(1.796911)
mov r10.w, r9.x
add r9.xyz, r10.ywzy, -r13.ywzy
add r0.xy, r0.zyzz, -r13.wwww
lt r0.x, |r0.x|, |r0.y|
mul r11.z, r11.x, l(1.796911)
mov r11.w, r6.y
mad r6.yzw, r13.wwxy, l(0.000000, 1.000000, 1.796911, 1.000000), -r11.wwzy
movc r0.xyz, r0.xxxx, r6.yzwy, r8.xyzx
add r2.w, r2.w, -r13.w
add r3.w, r3.w, -r13.w
lt r2.w, |r2.w|, |r3.w|
mul r1.z, r1.x, l(1.796911)
mov r1.w, r12.x
mad r1.xyz, r13.ywxy, l(1.000000, 1.000000, 1.796911, 0.000000), -r1.ywzy
movc r1.xyz, r2.wwww, r1.xyzx, r9.xyzx
mul r6.yzw, r0.xxyz, r1.xxyz
mad r0.xyz, r0.zxyz, r1.yzxy, -r6.yzwy
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul r0.xyz, r0.xyzx, r1.xxxx
mul r0.w, r0.w, l(523.598816)
mul r7.xy, r0.wwww, r5.yzyy
mul r7.z, r7.x, l(1.796911)
mul r1.xyz, r7.xywx, l(1.796911, 1.000000, 1.000000, 0.000000)
dp3 r0.w, r7.zywz, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx
dp3 r0.x, r0.xyzx, r1.xyzx
mul r0.x, r0.x, r0.x
add r0.y, -cb0[4].x, l(1.000000)
mul_sat r0.z, cb0[4].x, l(10.000000)
mul r0.w, r0.z, l(0.100000)
log r1.x, cb0[4].x
mul r1.x, r0.y, r1.x
exp r1.x, r1.x
mul r1.y, r4.y, l(0.331000)
mad r1.y, r4.x, l(-0.169000), -r1.y
mad r1.y, r4.z, l(0.500000), r1.y
add r1.y, r1.y, l(0.501961)
mul r1.z, r0.x, |r6.x|
lt r1.z, r1.z, l(0.000030)
if_nz r1.z
  mul r1.z, r2.y, l(0.331000)
  mad r1.z, r2.x, l(-0.169000), -r1.z
  mad r1.z, r2.z, l(0.500000), r1.z
  add r1.z, r1.z, l(0.501961)
  add r1.z, -r1.z, r1.y
  min r1.z, |r1.z|, l(0.250000)
else 
  mov r1.z, l(0)
endif 
add r2.xyzw, v1.xyxy, l(-0.000260, 0.000000, 0.000000, -0.000468)
sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t2.yzwx, s0, l(0.000000)
mad r3.w, -r1.w, l(999.000000), l(1000.000000)
div r1.w, r1.w, r3.w
add r1.w, -r5.w, r1.w
mul r1.w, r0.x, |r1.w|
lt r1.w, r1.w, l(0.000030)
if_nz r1.w
  sample_indexable(texture2d)(float,float,float,float) r4.xyz, r2.xyxx, t4.xyzw, s0
  mul r1.w, r4.y, l(0.331000)
  mad r1.w, r4.x, l(-0.169000), -r1.w
  mad r1.w, r4.z, l(0.500000), r1.w
  add r1.w, r1.w, l(0.501961)
  add r1.w, -r1.w, r1.y
  min r1.w, |r1.w|, l(0.250000)
  add r1.z, r1.w, r1.z
endif 
sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.zwzz, t2.yzwx, s0, l(0.000000)
mad r2.x, -r1.w, l(999.000000), l(1000.000000)
div r1.w, r1.w, r2.x
add r1.w, -r5.w, r1.w
mul r1.w, r0.x, |r1.w|
lt r1.w, r1.w, l(0.000030)
if_nz r1.w
  sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t4.xyzw, s0
  mul r1.w, r2.y, l(0.331000)
  mad r1.w, r2.x, l(-0.169000), -r1.w
  mad r1.w, r2.z, l(0.500000), r1.w
  add r1.w, r1.w, l(0.501961)
  add r1.w, -r1.w, r1.y
  min r1.w, |r1.w|, l(0.250000)
  add r1.z, r1.w, r1.z
endif 
mul r0.x, r0.x, |r5.x|
lt r0.x, r0.x, l(0.000030)
if_nz r0.x
  mul r0.x, r3.y, l(0.331000)
  mad r0.x, r3.x, l(-0.169000), -r0.x
  mad r0.x, r3.z, l(0.500000), r0.x
  add r0.x, r0.x, l(0.501961)
  add r0.x, -r0.x, r1.y
  min r0.x, |r0.x|, l(0.250000)
  add r1.z, r0.x, r1.z
endif 
mul r0.x, r0.y, l(0.660000)
log r0.y, r1.z
mul r0.x, r0.y, r0.x
exp r0.x, r0.x
max r0.x, r0.w, r0.x
min r0.x, r0.x, l(0.800000)
mad r0.x, -r0.z, l(0.100000), r0.x
mad r0.y, -r0.z, l(0.100000), l(1.000000)
div r0.x, r0.x, r0.y
mul r0.x, r0.x, l(1.250000)
max r0.x, r0.x, l(0.000000)
min r0.x, r1.x, r0.x
min o0.w, r0.x, l(1.000000)
ret 
// Approximately 225 instruction slots used
