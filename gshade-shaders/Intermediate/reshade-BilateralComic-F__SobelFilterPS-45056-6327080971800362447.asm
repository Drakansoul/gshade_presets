//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__BackBuffer                   texture  float4          2d             t4      1 
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
// SV_TARGET                0   x           0   TARGET   float   x   
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v1.xy
dcl_output o0.x
dcl_temps 3
sample_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t4.xyzw, s0
add r0.xyz, r0.xyzx, r0.xyzx
dp3 r0.x, r0.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
sample_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t4.xyzw, s0
dp3 r1.x, r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
mov r0.yz, l(0,0,0,0)
add r0.xy, r0.xyxx, r1.xxxx
sample_aoffimmi_indexable(-1,1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t4.xyzw, s0
dp3 r2.x, r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
dp3 r2.y, -r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
add r1.xy, r0.xyxx, r2.xyxx
sample_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t4.xyzw, s0
add r2.xyz, r2.xyzx, r2.xyzx
dp3 r0.x, r2.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
add r1.z, r0.x, r1.y
sample_aoffimmi_indexable(0,1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t4.xyzw, s0
mul r2.xyz, r2.xyzx, l(-2.000000, -2.000000, -2.000000, 0.000000)
dp3 r0.w, r2.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
add r0.xy, r0.zwzz, r1.xzxx
sample_aoffimmi_indexable(1,-1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t4.xyzw, s0
dp3 r2.x, -r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
dp3 r2.y, r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
add r0.xy, r0.xyxx, r2.xyxx
sample_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t4.xyzw, s0
mul r1.xyz, r1.xyzx, l(-2.000000, -2.000000, -2.000000, 0.000000)
dp3 r1.x, r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
mov r1.y, l(0)
add r0.xy, r0.xyxx, r1.xyxx
sample_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t4.xyzw, s0
dp3 r0.z, -r1.xyzx, l(0.333000, 0.333000, 0.333000, 0.000000)
add r0.xy, r0.zzzz, r0.xyxx
dp2 r0.x, r0.xyxx, r0.xyxx
sqrt r0.x, r0.x
min o0.x, r0.x, l(1.000000)
ret 
// Approximately 35 instruction slots used