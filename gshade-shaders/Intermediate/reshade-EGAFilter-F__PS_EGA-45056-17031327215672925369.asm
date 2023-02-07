//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s1                              sampler      NA          NA             s1      1 
// __V__ReShade__BackBufferTex       texture  float4          2d             t0      1 
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
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
dcl_indexableTemp x0[16], 4
mov x0[0].xyz, l(0,0,0,0)
mov x0[1].xyz, l(0,0,0.666670,0)
mov x0[2].xyz, l(0,0.666670,0,0)
mov x0[3].xyz, l(0,0.666670,0.666670,0)
mov x0[4].xyz, l(0.666670,0,0,0)
mov x0[5].xyz, l(0.666670,0,0.666670,0)
mov x0[6].xyz, l(0.666670,0.333330,0,0)
mov x0[7].xyz, l(0.666670,0.666670,0.666670,0)
mov x0[8].xyz, l(0.333330,0.333330,0.333330,0)
mov x0[9].xyz, l(0.333330,0.333330,1.000000,0)
mov x0[10].xyz, l(0.333330,1.000000,0.333330,0)
mov x0[11].xyz, l(0.333330,1.000000,1.000000,0)
mov x0[12].xyz, l(1.000000,0.333330,0.333330,0)
mov x0[13].xyz, l(1.000000,0.333330,1.000000,0)
mov x0[14].xyz, l(1.000000,1.000000,0.333330,0)
mov x0[15].xyz, l(1.000000,1.000000,1.000000,0)
mov r0.yw, l(0,2,0,3)
mov r1.yw, l(0,0,0,1)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s1
dp3 r2.w, r2.xyzx, r2.xyzx
sqrt r2.w, r2.w
min r1.x, r2.w, l(2.000000)
add r3.xyz, r2.xyzx, l(-0.000000, -0.000000, -0.666670, 0.000000)
dp3 r2.w, r3.xyzx, r3.xyzx
sqrt r1.z, r2.w
lt r2.w, r1.z, r1.x
movc r1.xy, r2.wwww, r1.zwzz, r1.xyxx
add r3.xyz, r2.xyzx, l(-0.000000, -0.666670, -0.000000, 0.000000)
dp3 r1.z, r3.xyzx, r3.xyzx
sqrt r0.x, r1.z
lt r1.z, r0.x, r1.x
movc r0.xy, r1.zzzz, r0.xyxx, r1.xyxx
add r1.xyz, r2.xyzx, l(-0.000000, -0.666670, -0.666670, 0.000000)
dp3 r1.x, r1.xyzx, r1.xyzx
sqrt r0.z, r1.x
lt r1.x, r0.z, r0.x
movc r0.xy, r1.xxxx, r0.zwzz, r0.xyxx
add r1.xyz, r2.xyzx, l(-0.666670, -0.000000, -0.000000, 0.000000)
dp3 r0.z, r1.xyzx, r1.xyzx
sqrt r1.x, r0.z
lt r0.z, r1.x, r0.x
mov r1.yw, l(0,4,0,5)
movc r0.xy, r0.zzzz, r1.xyxx, r0.xyxx
add r3.xyz, r2.xyzx, l(-0.666670, -0.000000, -0.666670, 0.000000)
dp3 r0.z, r3.xyzx, r3.xyzx
sqrt r1.z, r0.z
lt r0.z, r1.z, r0.x
movc r0.xy, r0.zzzz, r1.zwzz, r0.xyxx
add r1.xyz, r2.xyzx, l(-0.666670, -0.333330, -0.000000, 0.000000)
dp3 r0.z, r1.xyzx, r1.xyzx
sqrt r1.x, r0.z
lt r0.z, r1.x, r0.x
mov r1.yw, l(0,6,0,7)
movc r0.xy, r0.zzzz, r1.xyxx, r0.xyxx
add r3.xyz, r2.xyzx, l(-0.666670, -0.666670, -0.666670, 0.000000)
dp3 r0.z, r3.xyzx, r3.xyzx
sqrt r1.z, r0.z
lt r0.z, r1.z, r0.x
movc r0.xy, r0.zzzz, r1.zwzz, r0.xyxx
add r1.xyz, r2.xyzx, l(-0.333330, -0.333330, -0.333330, 0.000000)
dp3 r0.z, r1.xyzx, r1.xyzx
sqrt r1.x, r0.z
lt r0.z, r1.x, r0.x
mov r1.yw, l(0,8,0,9)
movc r0.xy, r0.zzzz, r1.xyxx, r0.xyxx
add r3.xyz, r2.xyzx, l(-0.333330, -0.333330, -1.000000, 0.000000)
dp3 r0.z, r3.xyzx, r3.xyzx
sqrt r1.z, r0.z
lt r0.z, r1.z, r0.x
movc r0.xy, r0.zzzz, r1.zwzz, r0.xyxx
add r1.xyz, r2.xyzx, l(-0.333330, -1.000000, -0.333330, 0.000000)
dp3 r0.z, r1.xyzx, r1.xyzx
sqrt r1.x, r0.z
lt r0.z, r1.x, r0.x
mov r1.yw, l(0,10,0,11)
movc r0.xy, r0.zzzz, r1.xyxx, r0.xyxx
add r3.xyz, r2.xyzx, l(-0.333330, -1.000000, -1.000000, 0.000000)
dp3 r0.z, r3.xyzx, r3.xyzx
sqrt r1.z, r0.z
lt r0.z, r1.z, r0.x
movc r0.xy, r0.zzzz, r1.zwzz, r0.xyxx
add r1.xyz, r2.xyzx, l(-1.000000, -0.333330, -0.333330, 0.000000)
dp3 r0.z, r1.xyzx, r1.xyzx
sqrt r1.x, r0.z
lt r0.z, r1.x, r0.x
mov r1.yw, l(0,12,0,13)
movc r0.xy, r0.zzzz, r1.xyxx, r0.xyxx
add r3.xyz, r2.xyzx, l(-1.000000, -0.333330, -1.000000, 0.000000)
dp3 r0.z, r3.xyzx, r3.xyzx
sqrt r1.z, r0.z
lt r0.z, r1.z, r0.x
movc r0.xy, r0.zzzz, r1.zwzz, r0.xyxx
add r1.xyz, r2.xyzx, l(-1.000000, -1.000000, -0.333330, 0.000000)
add r2.xyz, r2.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
dp3 r0.z, r2.xyzx, r2.xyzx
sqrt r0.z, r0.z
dp3 r0.w, r1.xyzx, r1.xyzx
sqrt r1.x, r0.w
lt r0.w, r1.x, r0.x
mov r1.y, l(14)
movc r0.xy, r0.wwww, r1.xyxx, r0.xyxx
lt r0.x, r0.z, r0.x
movc r0.x, r0.x, l(15), r0.y
mov o0.xyz, x0[r0.x + 0].xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 106 instruction slots used
