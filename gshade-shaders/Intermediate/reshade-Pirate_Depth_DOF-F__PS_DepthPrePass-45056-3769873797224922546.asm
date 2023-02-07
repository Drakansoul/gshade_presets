//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool DOF_USE_AUTO_FOCUS;           // Offset:    0 Size:     4 [unused]
//   float DOF_RADIUS;                  // Offset:    4 Size:     4 [unused]
//   float DOF_NEAR_STRENGTH;           // Offset:    8 Size:     4 [unused]
//   float DOF_FAR_STRENGTH;            // Offset:   12 Size:     4 [unused]
//   float DOF_FOCAL_RANGE;             // Offset:   16 Size:     4 [unused]
//   float DOF_FOCAL_CURVE;             // Offset:   20 Size:     4 [unused]
//   float DOF_HYPERFOCAL;              // Offset:   24 Size:     4 [unused]
//   float DOF_BLEND;                   // Offset:   28 Size:     4 [unused]
//   float DOF_BOKEH_CONTRAST;          // Offset:   32 Size:     4 [unused]
//   float DOF_BOKEH_BIAS;              // Offset:   36 Size:     4 [unused]
//   float DOF_MANUAL_FOCUS;            // Offset:   40 Size:     4 [unused]
//   float DOF_FOCUS_X;                 // Offset:   44 Size:     4 [unused]
//   float DOF_FOCUS_Y;                 // Offset:   48 Size:     4 [unused]
//   float DOF_FOCUS_SPREAD;            // Offset:   52 Size:     4 [unused]
//   float DOF_FOCUS_SPEED;             // Offset:   56 Size:     4 [unused]
//   float DOF_SCRATCHES_STRENGTH;      // Offset:   60 Size:     4 [unused]
//   int DOF_DEBUG;                     // Offset:   64 Size:     4 [unused]
//   int LUMA_MODE;                     // Offset:   68 Size:     4 [unused]
//   int FOV;                           // Offset:   72 Size:     4
//   float Frametime;                   // Offset:   76 Size:     4 [unused]
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
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
add r0.xyzw, v1.xyxy, l(0.000000, 0.000468, -0.000000, -0.000468)
sample_l_indexable(texture2d)(float,float,float,float) r1.x, r0.zwzz, t2.xyzw, s0, l(0.000000)
mad r1.y, -r1.x, l(999.000000), l(1000.000000)
div_sat r1.x, r1.x, r1.y
add r1.w, -r1.x, l(1.000000)
mad r2.xyzw, r0.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t2.xyzw, s0, l(0.000000)
mul r0.yz, r1.wwww, r2.zzwz
itof r0.w, cb0[4].z
mul r3.xy, r0.wwww, l(0.031362, 0.017453, 0.000000, 0.000000)
sincos r3.xy, null, r3.xyxx
mad r1.yz, -r0.yyzy, r3.yyxy, r2.zzwz
mad r0.yz, v1.yyxy, l(0.000000, 2.000000, 2.000000, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t2.yzwx, s0, l(0.000000)
mad r1.w, -r0.w, l(999.000000), l(1000.000000)
div_sat r4.y, r0.w, r1.w
add r0.w, -r4.y, l(1.000000)
mul r2.zw, r0.wwww, r0.yyyz
mad r4.xz, -r2.zzwz, r3.xxyx, r0.yyzy
add r0.yzw, -r1.xxyz, r4.yyzx
mad r1.x, -r0.x, l(999.000000), l(1000.000000)
div_sat r1.x, r0.x, r1.x
add r0.x, -r1.x, l(1.000000)
mul r2.zw, r0.xxxx, r2.xxxy
mad r1.yz, -r2.zzwz, r3.yyxy, r2.xxyx
add r1.xyz, -r4.yzxy, r1.xyzx
lt r0.x, |r0.y|, |r1.x|
add r0.yzw, r0.yyzw, -r1.xxyz
and r0.x, r0.x, l(0x3f800000)
mad r0.xyz, r0.xxxx, r0.yzwy, r1.xyzx
add r1.xyzw, v1.xyxy, l(0.000260, 0.000000, -0.000260, -0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.w, r1.zwzz, t2.yzwx, s0, l(0.000000)
mad r2.x, -r0.w, l(999.000000), l(1000.000000)
div_sat r2.y, r0.w, r2.x
add r0.w, -r2.y, l(1.000000)
mad r5.xyzw, r1.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t2.xyzw, s0, l(0.000000)
mul r1.yz, r0.wwww, r5.wwzw
mad r2.xz, -r1.yyzy, r3.xxyx, r5.wwzw
add r1.yzw, -r2.xxyz, r4.xxyz
mad r0.w, -r1.x, l(999.000000), l(1000.000000)
div_sat r2.y, r1.x, r0.w
add r0.w, -r2.y, l(1.000000)
mul r3.zw, r0.wwww, r5.yyyx
mad r2.xz, -r3.zzwz, r3.xxyx, r5.yyxy
add r2.xyz, -r4.xyzx, r2.xyzx
mov o0.w, r4.y
add r1.xyw, r1.yzyw, -r2.xyxz
lt r0.w, |r1.z|, |r2.y|
and r0.w, r0.w, l(0x3f800000)
mad r1.xyz, r0.wwww, r1.xywx, r2.xyzx
mul r2.xyz, r0.xyzx, r1.xyzx
mad r0.xyz, r0.zxyz, r1.yzxy, -r2.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mad r0.xyz, r0.xyzx, r0.wwww, l(1.000000, 1.000000, 1.000000, 0.000000)
mul o0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
ret 
// Approximately 58 instruction slots used
