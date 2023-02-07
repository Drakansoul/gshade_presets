//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool enableShowEdges;              // Offset:    0 Size:     4 [unused]
//   float BlurSigma;                   // Offset:    4 Size:     4
//   float Sharpening;                  // Offset:    8 Size:     4 [unused]
//   float Threshold;                   // Offset:   12 Size:     4 [unused]
//   float limiter;                     // Offset:   16 Size:     4 [unused]
//   bool enable_depth;                 // Offset:   20 Size:     4 [unused]
//   bool enable_reverse;               // Offset:   24 Size:     4 [unused]
//   bool display_depth;                // Offset:   28 Size:     4 [unused]
//   float depthStart;                  // Offset:   32 Size:     4 [unused]
//   float depthEnd;                    // Offset:   36 Size:     4 [unused]
//   float depthCurve;                  // Offset:   40 Size:     4 [unused]
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
add r0.w, cb0[0].y, cb0[0].y
mul r1.x, cb0[0].y, l(5.013257)
div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), r1.x
mul r0.w, r0.w, r0.w
div r0.w, l(-0.500000), r0.w
mul r0.w, r0.w, l(1.442695)
exp r1.y, r0.w
mul r1.z, r1.y, r1.y
mul r0.xyz, r0.xyzx, r1.xxxx
mul r1.yw, r1.yyyz, r1.xxxy
mov r2.y, l(0)
mov r3.z, r1.z
mov r4.xyz, r0.xyzx
mov r0.w, r1.x
mov r1.z, l(1.000000)
mov r3.xy, r1.ywyy
mov r2.zw, l(0,0,0,-1)
loop 
  breakc_z r2.w
  mul r2.x, r1.z, l(0.000260)
  add r5.xy, r2.xyxx, v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xyxx, t0.xyzw, s0, l(0.000000)
  mad r5.xyz, r5.xyzx, r3.xxxx, r4.xyzx
  add r6.xy, -r2.xyxx, v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t0.xyzw, s0, l(0.000000)
  mad r4.xyz, r6.xyzx, r3.xxxx, r5.xyzx
  mad r0.w, r3.x, l(2.000000), r0.w
  add r1.z, r1.z, l(1.000000)
  mul r3.xy, r3.yzyy, r3.xyxx
  iadd r2.z, r2.z, l(1)
  itof r2.x, r2.z
  lt r2.w, r2.x, l(8.000000)
endloop 
div o0.xyz, r4.xyzx, r0.wwww
mov o0.w, l(1.000000)
ret 
// Approximately 37 instruction slots used
