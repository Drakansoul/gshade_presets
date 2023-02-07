//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s1                              sampler      NA          NA             s1      1 
// __V__TexBlur1                     texture  float4          2d            t10      1 
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
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t10
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 5
add r0.xy, v1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
mad r0.xy, r0.xyxx, l(0.500000, 0.750000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.zw, r0.xxxy, l(0.000000, 0.000000, 3840.000000, 2137.000000), l(0.000000, 0.000000, -0.500000, -0.500000)
round_ni r0.zw, r0.zzzw
add r1.xy, r0.zwzz, l(1.500000, 1.500000, 0.000000, 0.000000)
add r2.xyzw, r0.zwzw, l(0.500000, 0.500000, -0.500000, -0.500000)
mad r0.xy, r0.xyxx, l(3840.000000, 2137.000000, 0.000000, 0.000000), -r2.xyxx
mul r3.xyzw, r0.xyxy, r0.xyxy
mul r0.zw, r0.xxxy, r3.zzzw
mul r4.xyzw, r3.xyzw, l(3.000000, 3.000000, 6.000000, 6.000000)
mad r1.zw, r0.zzzw, l(0.000000, 0.000000, -3.000000, -3.000000), r4.xxxy
mad r2.xy, r0.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000), -r4.zwzz
add r2.xy, r2.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)
mad r1.zw, r0.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), r1.zzzw
mad r1.zw, r3.zzzw, r0.xxxy, r1.zzzw
mad r3.xy, r3.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), -r0.zwzz
mad r0.xy, -r0.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000), r3.xyxx
add r0.xy, r0.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
add r0.xy, r2.xyxx, r0.xyxx
div r2.xy, r2.xyxx, r0.xyxx
add r2.xy, r2.xyxx, r2.zwzz
add r1.zw, r1.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
div r0.zw, r0.zzzw, r1.zzzw
add r2.zw, r0.zzzw, r1.xxxy
mul r2.xyzw, r2.xyzw, l(0.000260, 0.000468, 0.000260, 0.000468)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.zwzz, t10.xyzw, s1
mul r3.xyz, r1.zzzz, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r2.xwxx, t10.xyzw, s1
mad r3.xyz, r4.xyzx, r0.xxxx, r3.xyzx
mul r1.xyw, r1.wwww, r3.xyxz
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.zyzz, t10.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t10.xyzw, s1
mul r3.xyz, r1.zzzz, r3.xyzx
mad r0.xzw, r2.xxyz, r0.xxxx, r3.xxyz
mad r0.xyz, r0.yyyy, r0.xzwx, r1.xywx
mul o0.xyz, r0.xyzx, l(0.027778, 0.027778, 0.027778, 0.000000)
ret 
// Approximately 37 instruction slots used
