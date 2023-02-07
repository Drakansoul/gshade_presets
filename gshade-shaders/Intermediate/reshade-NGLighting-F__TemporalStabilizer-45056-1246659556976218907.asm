//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s1                              sampler      NA          NA             s1      1 
// __V__texMotionVectors             texture  float4          2d             t8      1 
// __V__SSSR_FilterTex1              texture  float4          2d            t18      1 
// __V__SSSR_FilterTex2              texture  float4          2d            t20      1 
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
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t18
dcl_resource_texture2d (float,float,float,float) t20
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 21
add r0.xyzw, v1.xyxy, l(0.000260, 0.000000, -0.000260, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t18.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t18.xyzw, s0
mul r2.x, r1.y, l(0.331000)
mad r2.x, r1.x, l(-0.169000), -r2.x
mad r2.x, r1.z, l(0.500000), r2.x
add r2.y, r2.x, l(0.501961)
mul r3.x, r1.y, l(0.419000)
mad r3.x, r1.x, l(0.500000), -r3.x
mad r3.x, -r1.z, l(0.081000), r3.x
add r2.z, r3.x, l(0.501961)
dp3 r2.x, r1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r2.w, r1.w
mul r3.xyzw, r2.xyzw, r2.xyzw
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, v1.xyxx, t18.xyzw, s0
mul r5.x, r4.y, l(0.331000)
mad r5.x, r4.x, l(-0.169000), -r5.x
mad r5.x, r4.z, l(0.500000), r5.x
add r5.y, r5.x, l(0.501961)
mul r6.x, r4.y, l(0.419000)
mad r6.x, r4.x, l(0.500000), -r6.x
mad r6.x, -r4.z, l(0.081000), r6.x
add r5.z, r6.x, l(0.501961)
mov r5.w, r4.w
dp3 r5.x, r4.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mad r3.xyzw, r5.xyzw, r5.xyzw, r3.xyzw
mul r6.x, r0.y, l(0.331000)
mad r6.x, r0.x, l(-0.169000), -r6.x
mad r6.x, r0.z, l(0.500000), r6.x
add r6.y, r6.x, l(0.501961)
mul r7.x, r0.y, l(0.419000)
mad r7.x, r0.x, l(0.500000), -r7.x
mad r7.x, -r0.z, l(0.081000), r7.x
add r6.z, r7.x, l(0.501961)
dp3 r6.x, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r6.w, r0.w
mad r3.xyzw, r6.xyzw, r6.xyzw, r3.xyzw
add r7.xyzw, v1.xyxy, l(0.000000, -0.000468, 0.000000, 0.000468)
sample_indexable(texture2d)(float,float,float,float) r8.xyzw, r7.xyxx, t18.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r7.xyzw, r7.zwzz, t18.xyzw, s0
mul r9.x, r8.y, l(0.331000)
mad r9.x, r8.x, l(-0.169000), -r9.x
mad r9.x, r8.z, l(0.500000), r9.x
add r9.y, r9.x, l(0.501961)
mul r10.x, r8.y, l(0.419000)
mad r10.x, r8.x, l(0.500000), -r10.x
mad r10.x, -r8.z, l(0.081000), r10.x
add r9.z, r10.x, l(0.501961)
dp3 r9.x, r8.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r9.w, r8.w
mad r3.xyzw, r9.xyzw, r9.xyzw, r3.xyzw
mul r10.x, r7.y, l(0.331000)
mad r10.x, r7.x, l(-0.169000), -r10.x
mad r10.x, r7.z, l(0.500000), r10.x
add r10.y, r10.x, l(0.501961)
mul r11.x, r7.y, l(0.419000)
mad r11.x, r7.x, l(0.500000), -r11.x
mad r11.x, -r7.z, l(0.081000), r11.x
add r10.z, r11.x, l(0.501961)
dp3 r10.x, r7.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r10.w, r7.w
mad r3.xyzw, r10.xyzw, r10.xyzw, r3.xyzw
add r11.xyzw, v1.xyxy, l(0.000184, 0.000331, -0.000184, -0.000331)
sample_indexable(texture2d)(float,float,float,float) r12.xyzw, r11.xyxx, t18.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r11.xyzw, r11.zwzz, t18.xyzw, s0
mul r13.x, r12.y, l(0.331000)
mad r13.x, r12.x, l(-0.169000), -r13.x
mad r13.x, r12.z, l(0.500000), r13.x
add r13.y, r13.x, l(0.501961)
mul r14.x, r12.y, l(0.419000)
mad r14.x, r12.x, l(0.500000), -r14.x
mad r14.x, -r12.z, l(0.081000), r14.x
add r13.z, r14.x, l(0.501961)
dp3 r13.x, r12.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r13.w, r12.w
mad r3.xyzw, r13.xyzw, r13.xyzw, r3.xyzw
mul r14.x, r11.y, l(0.331000)
mad r14.x, r11.x, l(-0.169000), -r14.x
mad r14.x, r11.z, l(0.500000), r14.x
add r14.y, r14.x, l(0.501961)
mul r15.x, r11.y, l(0.419000)
mad r15.x, r11.x, l(0.500000), -r15.x
mad r15.x, -r11.z, l(0.081000), r15.x
add r14.z, r15.x, l(0.501961)
dp3 r14.x, r11.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r14.w, r11.w
mad r3.xyzw, r14.xyzw, r14.xyzw, r3.xyzw
add r15.xyzw, v1.xyxy, l(0.000184, -0.000331, -0.000184, 0.000331)
sample_indexable(texture2d)(float,float,float,float) r16.xyzw, r15.xyxx, t18.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r15.xyzw, r15.zwzz, t18.xyzw, s0
mul r17.x, r16.y, l(0.331000)
mad r17.x, r16.x, l(-0.169000), -r17.x
mad r17.x, r16.z, l(0.500000), r17.x
add r17.y, r17.x, l(0.501961)
mul r18.x, r16.y, l(0.419000)
mad r18.x, r16.x, l(0.500000), -r18.x
mad r18.x, -r16.z, l(0.081000), r18.x
add r17.z, r18.x, l(0.501961)
dp3 r17.x, r16.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r17.w, r16.w
mad r3.xyzw, r17.xyzw, r17.xyzw, r3.xyzw
mul r18.x, r15.y, l(0.331000)
mad r18.x, r15.x, l(-0.169000), -r18.x
mad r18.x, r15.z, l(0.500000), r18.x
add r18.y, r18.x, l(0.501961)
mul r19.x, r15.y, l(0.419000)
mad r19.x, r15.x, l(0.500000), -r19.x
mad r19.x, -r15.z, l(0.081000), r19.x
add r18.z, r19.x, l(0.501961)
dp3 r18.x, r15.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r18.w, r15.w
mad r3.xyzw, r18.xyzw, r18.xyzw, r3.xyzw
mul r3.xyzw, r3.xyzw, l(0.111111, 0.111111, 0.111111, 0.111111)
add r19.xyzw, r2.xyzw, r5.xyzw
add r19.xyzw, r6.xyzw, r19.xyzw
add r19.xyzw, r9.xyzw, r19.xyzw
add r19.xyzw, r10.xyzw, r19.xyzw
add r19.xyzw, r13.xyzw, r19.xyzw
add r19.xyzw, r14.xyzw, r19.xyzw
add r19.xyzw, r17.xyzw, r19.xyzw
add r19.xyzw, r18.xyzw, r19.xyzw
mul r19.xyzw, r19.xyzw, l(0.111111, 0.111111, 0.111111, 0.111111)
mad r3.xyzw, r19.xyzw, r19.xyzw, -r3.xyzw
sqrt r3.xyzw, |r3.xyzw|
log r3.xyzw, r3.xyzw
mul r3.xyzw, r3.xyzw, l(0.700000, 0.700000, 0.700000, 0.700000)
exp r3.xyzw, r3.xyzw
mul r3.xyz, r5.xxxx, r3.xyzx
add r19.xyzw, -r3.xyzw, r5.xyzw
max r20.xyzw, r2.xyzw, r5.xyzw
min r2.xyzw, r2.xyzw, r5.xyzw
add r5.xyzw, r3.xyzw, r5.xyzw
mad_sat r3.xyzw, r3.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
add r3.xyzw, -r3.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
min r2.xyzw, r2.xyzw, r6.xyzw
max r6.xyzw, r6.xyzw, r20.xyzw
max r6.xyzw, r6.xyzw, r9.xyzw
min r2.xyzw, r2.xyzw, r9.xyzw
min r2.xyzw, r2.xyzw, r10.xyzw
max r6.xyzw, r6.xyzw, r10.xyzw
max r6.xyzw, r6.xyzw, r13.xyzw
min r2.xyzw, r2.xyzw, r13.xyzw
min r2.xyzw, r2.xyzw, r14.xyzw
max r6.xyzw, r6.xyzw, r14.xyzw
max r6.xyzw, r6.xyzw, r17.xyzw
min r2.xyzw, r2.xyzw, r17.xyzw
min r2.xyzw, r2.xyzw, r18.xyzw
max r6.xyzw, r6.xyzw, r18.xyzw
sample_indexable(texture2d)(float,float,float,float) r9.xy, v1.xyxx, t8.xyzw, s1
add r9.zw, r9.xxxy, v1.xxxy
dp2 r9.x, r9.xyxx, r9.xyxx
sqrt r9.x, r9.x
mad r9.x, -r9.x, l(5.000000), l(1.000000)
max r9.x, r9.x, l(0.700000)
sample_indexable(texture2d)(float,float,float,float) r10.xyzw, r9.zwzz, t20.xyzw, s0
max r10.xyzw, r10.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r9.y, r10.y, l(0.331000)
mad r9.y, r10.x, l(-0.169000), -r9.y
mad r9.y, r10.z, l(0.500000), r9.y
add r13.y, r9.y, l(0.501961)
mul r9.y, r10.y, l(0.419000)
mad r9.y, r10.x, l(0.500000), -r9.y
mad r9.y, -r10.z, l(0.081000), r9.y
add r13.z, r9.y, l(0.501961)
dp3 r13.x, r10.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r13.w, r10.w
max r2.xyzw, r2.xyzw, r13.xyzw
min r2.xyzw, r6.xyzw, r2.xyzw
max r6.xyzw, r19.xyzw, r2.xyzw
min r5.xyzw, r5.xyzw, r6.xyzw
add r5.xyzw, -r2.xyzw, r5.xyzw
mad r2.xyzw, r5.xyzw, l(0.150000, 0.150000, 0.150000, 0.150000), r2.xyzw
add r5.xyz, -r13.yzwy, r2.yzwy
min r5.yzw, |r5.xxyz|, l(0.000000, 1.000000, 1.000000, 1.000000)
add r5.x, r5.z, r5.y
mad r5.xyzw, -r5.xxxw, l(10.000000, 10.000000, 10.000000, 10.000000), l(1.000000, 1.000000, 1.000000, 1.000000)
max r5.xyzw, r5.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
max r5.xyzw, r5.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000)
mul r5.xyzw, r5.xyzw, l(0.990000, 0.990000, 0.990000, 0.990000)
mul r5.xyzw, r9.xxxx, r5.xyzw
max r6.x, r9.w, r9.z
min r6.y, r9.w, r9.z
lt r6.y, r6.y, l(0.000000)
lt r6.x, l(1.000000), r6.x
or r6.x, r6.y, r6.x
movc r5.xyzw, r6.xxxx, l(0,0,0,0), r5.xyzw
add r6.xyz, r2.xyzx, l(-0.000000, -0.501961, -0.501961, 0.000000)
mad r6.w, -r6.y, l(0.343000), r6.x
mad r2.y, -r6.z, l(0.711000), r6.w
mad r2.xz, r6.zzyz, l(1.400000, 0.000000, 1.765000, 0.000000), r6.xxxx
add r2.xyzw, -r4.xyzw, r2.xyzw
mad r2.xyzw, r5.xyzw, r2.xyzw, r4.xyzw
add r4.xyzw, r1.xyzw, r4.xyzw
add r4.xyzw, r0.xyzw, r4.xyzw
add r4.xyzw, r8.xyzw, r4.xyzw
add r4.xyzw, r7.xyzw, r4.xyzw
add r4.xyzw, r12.xyzw, r4.xyzw
add r4.xyzw, r11.xyzw, r4.xyzw
add r4.xyzw, r16.xyzw, r4.xyzw
add r4.xyzw, r15.xyzw, r4.xyzw
mad r4.xyzw, -r4.xyzw, l(0.111111, 0.111111, 0.111111, 0.111111), r2.xyzw
mad r2.xyzw, r4.xyzw, r3.xyzw, r2.xyzw
min r3.xyzw, r1.xyzw, l(1000000.000000, 1000000.000000, 1000000.000000, 1000000.000000)
max r1.xyzw, r1.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
max r1.xyzw, r0.xyzw, r1.xyzw
min r0.xyzw, r0.xyzw, r3.xyzw
min r0.xyzw, r0.xyzw, r8.xyzw
max r1.xyzw, r1.xyzw, r8.xyzw
max r1.xyzw, r1.xyzw, r7.xyzw
min r0.xyzw, r0.xyzw, r7.xyzw
min r0.xyzw, r0.xyzw, r12.xyzw
max r1.xyzw, r1.xyzw, r12.xyzw
max r1.xyzw, r1.xyzw, r11.xyzw
min r0.xyzw, r0.xyzw, r11.xyzw
min r0.xyzw, r0.xyzw, r16.xyzw
max r1.xyzw, r1.xyzw, r16.xyzw
max r1.xyzw, r1.xyzw, r15.xyzw
min r0.xyzw, r0.xyzw, r15.xyzw
max r0.xyzw, r0.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
max r0.xyzw, r0.xyzw, r2.xyzw
min o0.xyzw, r1.xyzw, r0.xyzw
ret 
// Approximately 222 instruction slots used