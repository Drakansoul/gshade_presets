//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Strength;                    // Offset:    0 Size:     4 [unused]
//   int SampleDistance;                // Offset:    4 Size:     4 [unused]
//   int Quality;                       // Offset:    8 Size:     4 [unused]
//   float StartFade;                   // Offset:   12 Size:     4 [unused]
//   float EndFade;                     // Offset:   16 Size:     4 [unused]
//   float NormalBias;                  // Offset:   20 Size:     4 [unused]
//   int DebugEnabled;                  // Offset:   24 Size:     4 [unused]
//   int Bilateral;                     // Offset:   28 Size:     4 [unused]
//   int BlurRadius;                    // Offset:   32 Size:     4 [unused]
//   float BlurQuality;                 // Offset:   36 Size:     4 [unused]
//   float Gamma;                       // Offset:   40 Size:     4 [unused]
//   float NormalPower;                 // Offset:   44 Size:     4 [unused]
//   int FOV;                           // Offset:   48 Size:     4
//   float DepthShrink;                 // Offset:   52 Size:     4 [unused]
//   int DepthEndFade;                  // Offset:   56 Size:     4 [unused]
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
dcl_constantbuffer CB0[4], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
add r0.xyzw, v1.xyxy, l(0.000260, 0.000000, -0.000260, -0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t2.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.y, r0.zwzz, t2.yxzw, s0, l(0.000000)
mad r0.z, -r0.x, l(999.000000), l(1000.000000)
div r0.x, r0.x, r0.z
mul r1.x, r0.x, l(1000.000000)
mad r0.xz, v1.xxyx, l(1.000000, 0.000000, -1.000000, 0.000000), l(0.000260, 0.000000, 1.000000, 0.000000)
mad r0.xz, r0.xxzx, l(2.000000, 0.000000, 2.000000, 0.000000), l(-1.000000, 0.000000, -1.000000, 0.000000)
itof r0.w, cb0[3].x
mul r2.xy, r0.wwww, l(0.008726, 0.004856, 0.000000, 0.000000)
sincos r2.x, r3.x, r2.x
sincos r4.x, r5.x, r2.y
div r0.w, r4.x, r5.x
div r4.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
div r0.w, r2.x, r3.x
div r4.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
div r2.xy, r4.zxzz, r1.xxxx
div r1.yz, r0.xxzx, r2.xxyx
mad r0.xz, v1.yyxy, l(-1.000000, 0.000000, 1.000000, 0.000000), l(1.000000, 0.000000, 0.000000, 0.000000)
mad r0.xz, r0.xxzx, l(2.000000, 0.000000, 2.000000, 0.000000), l(-1.000000, 0.000000, -1.000000, 0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t2.yzwx, s0, l(0.000000)
mad r1.w, -r0.w, l(999.000000), l(1000.000000)
div r0.w, r0.w, r1.w
mul r2.y, r0.w, l(1000.000000)
div r3.xy, r4.xzxx, r2.yyyy
div r2.xz, r0.xxzx, r3.xxyx
add r0.xzw, r1.xxyz, -r2.yyzx
mad r1.x, -r0.y, l(999.000000), l(1000.000000)
div r0.y, r0.y, r1.x
mul r1.x, r0.y, l(1000.000000)
div r3.xy, r4.zxzz, r1.xxxx
mad r3.zw, v1.xxxy, l(0.000000, 0.000000, 1.000000, -1.000000), l(0.000000, 0.000000, -0.000260, 1.000000)
mad r3.zw, r3.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)
div r1.yz, r3.zzwz, r3.xxyx
add r1.xyz, -r1.xyzx, r2.yzxy
add r0.xyz, r0.xzwx, r1.xyzx
add r1.xyzw, v1.xyxy, l(0.000000, 0.000468, -0.000000, -0.000468)
sample_l_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t2.yzwx, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.x, r1.zwzz, t2.xyzw, s0, l(0.000000)
mad r1.y, -r0.w, l(999.000000), l(1000.000000)
div r0.w, r0.w, r1.y
mul r3.y, r0.w, l(1000.000000)
div r1.yz, r4.xxzx, r3.yyyy
mad r4.yw, v1.yyyx, l(0.000000, -1.000000, 0.000000, 1.000000), l(0.000000, 0.999532, 0.000000, 0.000000)
mad r4.yw, r4.yyyw, l(0.000000, 2.000000, 0.000000, 2.000000), l(0.000000, -1.000000, 0.000000, -1.000000)
div r3.xz, r4.yywy, r1.yyzy
add r1.yzw, -r2.xxyz, r3.xxyz
mad r0.w, -r1.x, l(999.000000), l(1000.000000)
div r0.w, r1.x, r0.w
mul r3.y, r0.w, l(1000.000000)
div r4.xy, r4.xzxx, r3.yyyy
mad r4.zw, v1.yyyx, l(0.000000, 0.000000, -1.000000, 1.000000), l(0.000000, 0.000000, 1.000468, 0.000000)
mad r4.zw, r4.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)
div r3.xz, r4.zzwz, r4.xxyx
add r2.xzw, r2.xxyz, -r3.xxyz
mov o0.w, r2.y
add r1.xyz, r1.yzwy, r2.xzwx
mul r2.xyz, r0.xyzx, r1.xyzx
mad r0.xyz, r0.zxyz, r1.yzxy, -r2.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
mad o0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)
ret 
// Approximately 64 instruction slots used
