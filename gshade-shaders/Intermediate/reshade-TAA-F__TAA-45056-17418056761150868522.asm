//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Jitter_Ammount;              // Offset:    0 Size:     4
//   float Seeking;                     // Offset:    4 Size:     4 [unused]
//   int DebugOutput;                   // Offset:    8 Size:     4 [unused]
//   int random;                        // Offset:   12 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__BackBufferTex                texture  float4          2d             t0      1 
// __V__PastBackBuffer               texture  float4          2d             t2      1 
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 12
itof r0.x, cb0[0].w
lt r0.y, l(0.000000), r0.x
mov r1.x, r0.x
mov r1.y, l(0.500000)
mov r2.x, l(0)
mov r0.z, r0.y
loop 
  breakc_z r0.z
  add r0.w, r1.x, r1.x
  ge r0.w, r0.w, -r0.w
  movc r2.zw, r0.wwww, l(0,0,2.000000,0.500000), l(0,0,-2.000000,-0.500000)
  mul r0.w, r1.x, r2.w
  frc r0.w, r0.w
  mul r0.w, r0.w, r2.z
  mad r2.x, r1.y, r0.w, r2.x
  mul r1.yz, r1.yyxy, l(0.000000, 0.500000, 0.500000, 0.000000)
  round_ni r1.x, r1.z
  lt r0.z, l(0.000000), r1.x
endloop 
mov r1.x, r0.x
mov r1.y, l(0.333333)
mov r2.y, l(0)
mov r0.z, r0.y
loop 
  breakc_z r0.z
  mul r3.yzw, r1.xxxy, l(0.000000, 3.000000, 0.333333, 0.333333)
  ge r0.w, r3.y, -r3.y
  movc r1.zw, r0.wwww, l(0,0,3.000000,0.333333), l(0,0,-3.000000,-0.333333)
  mul r0.w, r1.w, r1.x
  frc r0.w, r0.w
  mul r0.w, r0.w, r1.z
  mad r2.y, r1.y, r0.w, r2.y
  round_ni r3.x, r3.z
  lt r0.z, l(0.000000), r3.x
  mov r1.xy, r3.xwxx
endloop 
mul r0.xy, r2.xyxx, cb0[0].xxxx
mad r0.xy, r0.xyxx, l(0.000260, 0.000468, 0.000000, 0.000000), v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t2.xyzw, s0
min r0.w, r0.w, l(0.500000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
mul r0.xyz, r0.xyzx, r0.xyzx
mad r2.xyz, r1.xyzx, r1.xyzx, -r0.xyzx
mad r0.xyz, r0.wwww, r2.xyzx, r0.xyzx
sqrt r0.xyz, r0.xyzx
dp3 r2.x, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r2.y, r0.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r2.z, r0.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
add r0.xyzw, v1.xyxy, l(0.000260, 0.000000, -0.000260, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r0.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.zwzz, t0.xyzw, s0
add r4.xyzw, v1.xyxy, l(0.000000, 0.000468, 0.000000, -0.000468)
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r4.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.zwzz, t0.xyzw, s0
add r6.xyzw, v1.xyxy, l(0.000260, 0.000468, -0.000260, 0.000468)
sample_indexable(texture2d)(float,float,float,float) r7.xyz, r6.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r6.zwzz, t0.xyzw, s0
add r8.xyzw, v1.xyxy, l(0.000260, -0.000468, -0.000260, -0.000468)
sample_indexable(texture2d)(float,float,float,float) r9.xyz, r8.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r8.xyz, r8.zwzz, t0.xyzw, s0
dp3 r10.x, r1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r10.y, r1.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r10.z, r1.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r1.x, r3.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r1.y, r3.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r1.z, r3.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r3.x, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r3.y, r0.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r3.z, r0.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r0.x, r5.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r0.y, r5.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r0.z, r5.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r5.x, r4.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r5.y, r4.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r5.z, r4.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r4.x, r7.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r4.y, r7.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r4.z, r7.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r7.x, r6.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r7.y, r6.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r7.z, r6.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r6.x, r9.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r6.y, r9.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r6.z, r9.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
dp3 r9.x, r8.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
dp3 r9.y, r8.xyzx, l(-0.147130, -0.288860, 0.436000, 0.000000)
dp3 r9.z, r8.xyzx, l(0.615000, -0.514990, -0.100010, 0.000000)
min r8.xyz, r1.xyzx, r10.xyzx
min r11.xyz, r0.xyzx, r3.xyzx
min r8.xyz, r8.xyzx, r11.xyzx
min r8.xyz, r5.xyzx, r8.xyzx
max r1.xyz, r1.xyzx, r10.xyzx
max r0.xyz, r0.xyzx, r3.xyzx
max r0.xyz, r0.xyzx, r1.xyzx
max r0.xyz, r5.xyzx, r0.xyzx
min r1.xyz, r4.xyzx, r7.xyzx
min r3.xyz, r6.xyzx, r9.xyzx
min r1.xyz, r1.xyzx, r3.xyzx
min r1.xyz, r8.xyzx, r1.xyzx
add r1.xyz, -r8.xyzx, r1.xyzx
mad r1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r8.xyzx
max r3.xyz, r4.xyzx, r7.xyzx
max r4.xyz, r6.xyzx, r9.xyzx
max r3.xyz, r3.xyzx, r4.xyzx
max r3.xyz, r0.xyzx, r3.xyzx
add r3.xyz, -r0.xyzx, r3.xyzx
mad r0.xyz, r3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r0.xyzx
max r1.xyz, r1.xyzx, r2.xyzx
min r0.xyz, r0.xyzx, r1.xyzx
dp2 o0.x, r0.xzxx, l(1.000000, 1.139830, 0.000000, 0.000000)
dp3 o0.y, r0.xyzx, l(1.000000, -0.394650, -0.580600, 0.000000)
dp2 o0.z, r0.xyxx, l(1.000000, 2.032110, 0.000000, 0.000000)
mov o0.w, l(0)
ret 
// Approximately 114 instruction slots used
