//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Jitter_Ammount;              // Offset:    0 Size:     4 [unused]
//   float Seeking;                     // Offset:    4 Size:     4
//   int DebugOutput;                   // Offset:    8 Size:     4
//   int random;                        // Offset:   12 Size:     4 [unused]
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
// __V__TAABackBuffer                texture  float4          2d             t4      1 
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
dcl_immediateConstantBuffer { { 0, 1.000000, 0, 0},
                              { 0, -1.000000, 0, 0},
                              { 1.000000, 0, 0, 0},
                              { -1.000000, 0, 0, 0},
                              { -1.000000, -1.000000, 0, 0},
                              { 1.000000, 1.000000, 0, 0} }
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0
mov r1.xyzw, r0.xyzw
mov r2.xy, l(0,-1,0,0)
loop 
  breakc_z r2.y
  mad r2.zw, icb[r2.x + 0].xxxy, l(0.000000, 0.000000, 0.000260, 0.000468), v1.xxxy
  sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.zwzz, t0.xyzw, s0
  add r4.xyz, -r0.xyzx, r3.xyzx
  dp3 r5.x, |r4.xyzx|, l(0.299000, 0.587000, 0.114000, 0.000000)
  dp3 r5.y, |r4.xyzx|, l(-0.147130, -0.288860, 0.436000, 0.000000)
  dp3 r5.z, |r4.xyzx|, l(0.615000, -0.514990, -0.100010, 0.000000)
  dp2 r2.z, |r4.yzyy|, |r4.yzyy|
  sqrt r2.z, r2.z
  lt r2.w, cb0[0].y, r2.z
  div r2.z, cb0[0].y, r2.z
  mul r4.xyz, r5.xyzx, r2.zzzz
  dp2 r5.x, r4.xzxx, l(1.000000, 1.139830, 0.000000, 0.000000)
  dp3 r5.y, r4.xyzx, l(1.000000, -0.394650, -0.580600, 0.000000)
  dp2 r5.z, r4.xyxx, l(1.000000, 2.032110, 0.000000, 0.000000)
  movc r3.xyz, r2.wwww, r5.xyzx, r3.xyzx
  add r1.xyzw, r1.xyzw, r3.xyzw
  iadd r2.x, r2.x, l(1)
  ilt r2.y, r2.x, l(6)
endloop 
mad r1.xyzw, r1.xyzw, l(0.142857, 0.142857, 0.142857, 0.142857), -r0.xyzw
dp4 r1.x, |r1.xyzw|, |r1.xyzw|
sqrt r1.x, r1.x
mul r1.y, r1.x, l(100.000000)
dp4 r1.x, r1.xxxx, r1.yyyy
lt r1.x, r1.x, l(1.000000)
movc r1.xyzw, r1.xxxx, l(0,0,0,0), l(1.000000,1.000000,1.000000,1.000000)
if_z cb0[0].z
  sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t4.xyzw, s0
  add r2.xyzw, -r0.xyzw, r2.xyzw
  mad o0.xyzw, r1.wwww, r2.xyzw, r0.xyzw
else 
  mov o0.xyzw, r1.xyzw
endif 
ret 
// Approximately 39 instruction slots used
