//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int gGaussEffect;                  // Offset:    0 Size:     4 [unused]
//   float gGaussStrength;              // Offset:    4 Size:     4 [unused]
//   bool gAddBloom;                    // Offset:    8 Size:     4 [unused]
//   float gBloomStrength;              // Offset:   12 Size:     4 [unused]
//   float gBloomIntensity;             // Offset:   16 Size:     4 [unused]
//   int gGaussBloomWarmth;             // Offset:   20 Size:     4 [unused]
//   int gN_PASSES;                     // Offset:   24 Size:     4
//   float gBloomHW;                    // Offset:   28 Size:     4
//   float gBloomVW;                    // Offset:   32 Size:     4 [unused]
//   float gBloomSW;                    // Offset:   36 Size:     4 [unused]
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
dcl_immediateConstantBuffer { { 0, 0.168190, 0, 0},
                              { 1.434783, 0.272770, 0, 0},
                              { 3.347826, 0.116901, 0, 0},
                              { 5.260870, 0.024068, 0, 0},
                              { 7.173913, 0.002111, 0, 0} }
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0
mul r0.xyzw, r0.xyzw, l(0.168190, 0.168190, 0.168190, 0.168190)
ilt r1.x, l(1), cb0[1].z
mov r2.y, l(0)
mov r3.xyzw, r0.xyzw
mov r1.y, l(1)
mov r1.z, r1.x
loop 
  breakc_z r1.z
  mul r1.w, cb0[1].w, icb[r1.y + 0].x
  mul r2.x, r1.w, l(0.000260)
  add r2.zw, r2.xxxy, v1.xxxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.zwzz, t0.xyzw, s0, l(0.000000)
  mad r4.xyzw, r4.xyzw, icb[r1.y + 0].yyyy, r3.xyzw
  add r2.xz, -r2.xxyx, v1.xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r2.xzxx, t0.xyzw, s0, l(0.000000)
  mad r3.xyzw, r5.xyzw, icb[r1.y + 0].yyyy, r4.xyzw
  iadd r1.y, r1.y, l(1)
  ilt r1.z, r1.y, cb0[1].z
endloop 
mov o0.xyzw, r3.xyzw
ret 
// Approximately 22 instruction slots used
