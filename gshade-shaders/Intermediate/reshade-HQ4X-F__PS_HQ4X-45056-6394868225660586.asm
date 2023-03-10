//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float s;                           // Offset:    0 Size:     4
//   float mx;                          // Offset:    4 Size:     4
//   float k;                           // Offset:    8 Size:     4
//   float max_w;                       // Offset:   12 Size:     4
//   float min_w;                       // Offset:   16 Size:     4
//   float lum_add;                     // Offset:   20 Size:     4
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
// SV_TARGET                0   xyz         0   TARGET   float   xyz 
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 14
mad r0.xy, -cb0[0].xxxx, l(0.000260, 0.000468, 0.000000, 0.000000), v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyxx, t0.xyzw, s0
mad r1.xy, -cb0[0].xxxx, l(-0.000260, 0.000468, 0.000000, 0.000000), v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
add r3.xyz, r1.xyzx, -r2.xyzx
dp3 r0.w, |r3.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r3.xy, cb0[0].xxxx, l(-0.000260, 0.000468, 0.000000, 0.000000), v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyxx, t0.xyzw, s0
add r4.xyz, -r2.xyzx, r3.xyzx
dp3 r1.w, |r4.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
div r2.w, r1.w, r0.w
add r4.xyz, r0.xyzx, -r2.xyzx
dp3 r3.w, |r4.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r4.xyzw, cb0[0].xxxx, l(0.000130, 0.000234, 0.000260, 0.000468), v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r4.zwzz, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t0.xyzw, s0
add r6.xyz, -r2.xyzx, r5.xyzx
dp3 r4.w, |r6.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
max r5.w, r3.w, r4.w
mul r6.xyz, cb0[0].xxxx, l(0.000130, 0.000234, 0.000260, 0.000000)
mov r6.w, l(0)
add r7.xyzw, -r6.xyzw, v1.xyxy
add r6.xy, r6.zwzz, v1.xyxx
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r8.xyz, r7.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r7.xyz, r7.zwzz, t0.xyzw, s0
add r9.xyz, -r4.xyzx, r8.xyzx
dp3 r6.w, |r9.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
min r5.w, r5.w, r6.w
mul r2.w, r2.w, r5.w
lt r6.w, r1.w, r0.w
movc r2.w, r6.w, r2.w, r5.w
mul r1.xyz, r1.xyzx, r2.wwww
max r6.w, r0.w, r1.w
mov r9.z, l(0)
mul r9.xyw, cb0[0].xxxx, l(-0.000130, 0.000234, 0.000000, 0.000468)
add r10.xyzw, -r9.zwxy, v1.xyxy
add r9.xyzw, r9.zwxy, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r11.xyz, r10.zwzz, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r10.xyz, r10.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r12.xyz, r9.zwzz, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r9.xyz, r9.xyxx, t0.xyzw, s0
add r13.xyz, r11.xyzx, -r12.xyzx
dp3 r7.w, |r13.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
min r6.w, r6.w, r7.w
div r7.w, r4.w, r3.w
mul r7.w, r6.w, r7.w
lt r8.w, r4.w, r3.w
movc r7.w, r8.w, r7.w, r6.w
mad r0.xyz, r7.wwww, r0.xyzx, r1.xyzx
add r1.x, r2.w, r7.w
lt r1.y, r3.w, r4.w
div r1.z, r3.w, r4.w
mul r1.z, r1.z, r6.w
movc r1.y, r1.y, r1.z, r6.w
mad r0.xyz, r1.yyyy, r5.xyzx, r0.xyzx
add r1.x, r1.y, r1.x
div r1.y, r0.w, r1.w
lt r0.w, r0.w, r1.w
mul r1.y, r1.y, r5.w
movc r0.w, r0.w, r1.y, r5.w
mad r0.xyz, r0.wwww, r3.xyzx, r0.xyzx
add r0.w, r0.w, r1.x
add r0.w, r0.w, l(0.001000)
mad r0.xyz, r2.xyzx, l(0.001000, 0.001000, 0.001000, 0.000000), r0.xyzx
div r0.xyz, r0.xyzx, r0.wwww
add r1.xyz, -r0.xyzx, r11.xyzx
add r2.xyz, r11.xyzx, r12.xyzx
add r3.xyz, -r0.xyzx, r12.xyzx
add r1.xyz, |r1.xyzx|, |r3.xyzx|
dp3 r0.w, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.w, r0.w, cb0[0].z
dp3 r1.x, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r1.x, r1.x, l(0.125000), cb0[1].y
div r0.w, r0.w, r1.x
add r0.w, r0.w, cb0[0].y
max r0.w, r0.w, cb0[1].x
min r0.w, r0.w, cb0[0].w
mul r1.xyz, r2.xyzx, r0.wwww
add r2.xyz, -r0.xyzx, r8.xyzx
add r3.xyz, r4.xyzx, r8.xyzx
add r4.xyz, -r0.xyzx, r4.xyzx
add r2.xyz, |r2.xyzx|, |r4.xyzx|
dp3 r1.w, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r1.w, r1.w, cb0[0].z
dp3 r2.x, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.x, r2.x, l(0.125000), cb0[1].y
div r1.w, r1.w, r2.x
add r1.w, r1.w, cb0[0].y
max r1.w, r1.w, cb0[1].x
min r1.w, r1.w, cb0[0].w
mad r1.xyz, r1.wwww, r3.xyzx, r1.xyzx
add r0.w, r0.w, r1.w
add r2.xyz, -r0.xyzx, r10.xyzx
add r3.xyz, r9.xyzx, r10.xyzx
add r4.xyz, -r0.xyzx, r9.xyzx
add r2.xyz, |r2.xyzx|, |r4.xyzx|
dp3 r1.w, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r1.w, r1.w, cb0[0].z
dp3 r2.x, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.x, r2.x, l(0.125000), cb0[1].y
div r1.w, r1.w, r2.x
add r1.w, r1.w, cb0[0].y
max r1.w, r1.w, cb0[1].x
min r1.w, r1.w, cb0[0].w
mad r1.xyz, r1.wwww, r3.xyzx, r1.xyzx
add r0.w, r0.w, r1.w
add r2.xyz, -r0.xyzx, r6.xyzx
add r3.xyz, r6.xyzx, r7.xyzx
add r4.xyz, -r0.xyzx, r7.xyzx
add r2.xyz, |r2.xyzx|, |r4.xyzx|
dp3 r1.w, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r1.w, r1.w, cb0[0].z
dp3 r2.x, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.x, r2.x, l(0.125000), cb0[1].y
div r1.w, r1.w, r2.x
add r1.w, r1.w, cb0[0].y
max r1.w, r1.w, cb0[1].x
min r1.w, r1.w, cb0[0].w
mad r1.xyz, r1.wwww, r3.xyzx, r1.xyzx
add r0.w, r0.w, r1.w
mad r0.w, r0.w, l(2.000000), l(1.000000)
add r0.xyz, r0.xyzx, r1.xyzx
div o0.xyz, r0.xyzx, r0.wwww
ret 
// Approximately 126 instruction slots used
