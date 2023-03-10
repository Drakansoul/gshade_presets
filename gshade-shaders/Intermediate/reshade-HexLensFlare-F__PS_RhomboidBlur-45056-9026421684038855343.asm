//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float uIntensity;                  // Offset:    0 Size:     4 [unused]
//   float uThreshold;                  // Offset:    4 Size:     4 [unused]
//   float uScale;                      // Offset:    8 Size:     4
//   float3 uColor0;                    // Offset:   16 Size:    12 [unused]
//   float3 uColor1;                    // Offset:   32 Size:    12 [unused]
//   float3 uColor2;                    // Offset:   48 Size:    12 [unused]
//   float3 uColor3;                    // Offset:   64 Size:    12 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s1                              sampler      NA          NA             s1      1 
// __V__tHexLensFlare_VerticalBlur    texture  float4          2d             t4      1 
// __V__tHexLensFlare_DiagonalBlur    texture  float4          2d             t6      1 
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
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
mul r0.xy, cb0[0].zzzz, l(0.000521, -0.001621, 0.000000, 0.000000)
mad r0.zw, cb0[0].zzzz, l(0.000000, 0.000000, 0.000260, -0.000811), v1.xxxy
mov r1.w, l(1.000000)
mov r2.xyzw, l(0,0,0,0)
mov r3.xy, l(0,-1,0,0)
loop 
  breakc_z r3.y
  itof r3.z, r3.x
  mad r3.zw, r0.xxxy, r3.zzzz, r0.zzzw
  sample_indexable(texture2d)(float,float,float,float) r1.xyz, r3.zwzz, t4.xyzw, s1
  add r2.xyzw, r1.xyzw, r2.xyzw
  iadd r3.x, r3.x, l(1)
  ilt r3.y, r3.x, l(16)
endloop 
div r0.xyz, r2.xyzx, r2.wwww
mul r1.xy, cb0[0].zzzz, l(0.000521, 0.001621, 0.000000, 0.000000)
mad r1.zw, cb0[0].zzzz, l(0.000000, 0.000000, 0.000260, 0.000811), v1.xxxy
mov r2.w, l(1.000000)
mov r3.xyzw, l(0,0,0,0)
mov r0.w, l(0)
mov r4.x, l(-1)
loop 
  breakc_z r4.x
  itof r4.y, r0.w
  mad r4.yz, r1.xxyx, r4.yyyy, r1.zzwz
  sample_indexable(texture2d)(float,float,float,float) r2.xyz, r4.yzyy, t6.xyzw, s1
  add r3.xyzw, r2.xyzw, r3.xyzw
  iadd r0.w, r0.w, l(1)
  ilt r4.x, r0.w, l(16)
endloop 
div r1.xyz, r3.xyzx, r3.wwww
add r0.xyz, r0.xyzx, r1.xyzx
mul o0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
mov o0.w, l(1.000000)
ret 
// Approximately 35 instruction slots used
