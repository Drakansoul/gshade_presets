//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int _245;                          // Offset:    0 Size:     4 [unused]
//   float DistortionAmount;            // Offset:    4 Size:     4
//   float TextureScale;                // Offset:    8 Size:     4
//   float ZScale;                      // Offset:   12 Size:     4
//   float2 Translation;                // Offset:   16 Size:     8
//   float Rotation;                    // Offset:   24 Size:     4
//   int AddressMode;                   // Offset:   28 Size:     4
//   float Timer;                       // Offset:   32 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s1                              sampler      NA          NA             s1      1 
// __s2                              sampler      NA          NA             s2      1 
// __V__FXShaders__BackBufferTex     texture  float4          2d             t0      1 
// __V__FXShaders__NormalTex         texture  float4          2d             t2      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
add r0.xy, v1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
mov r1.xw, l(1.000000,0,0,0.556510)
mov r1.yz, cb0[0].zzzz
mul r0.xy, r0.xyxx, r1.xyxx
mad r0.xy, r0.xyxx, r1.zwzz, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.xz, cb0[1].zzyz, cb0[2].xxxx
mul r0.z, r1.x, l(0.003491)
sincos r2.x, r1.x, r0.z
mad r0.xy, r0.xyxx, l(1024.000000, 1024.000000, 0.000000, 0.000000), l(-512.000000, -512.000000, 0.000000, 0.000000)
mov r2.y, r1.x
mov r0.z, -r0.y
mul r0.xyzw, r0.xxzy, r2.yxxy
add r0.xy, r0.zwzz, r0.xyxx
add r0.xy, r0.xyxx, l(512.000000, 512.000000, 0.000000, 0.000000)
mul r1.y, -cb0[1].x, cb0[2].x
mul r0.zw, r1.yyyz, l(0.000000, 0.000000, 0.000977, 0.000977)
mad r0.xy, r0.xyxx, l(0.000977, 0.000977, 0.000000, 0.000000), r0.zwzz
if_z cb0[1].w
  sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t2.xyzw, s1
else 
  ieq r0.z, cb0[1].w, l(1)
  if_nz r0.z
    sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t2.xyzw, s2
  else 
    ieq r0.z, cb0[1].w, l(2)
    if_nz r0.z
      sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t2.xyzw, s0
    else 
      mov r1.xyzw, l(0,0,0,0)
    endif 
  endif 
endif 
mul r0.xyz, r1.wwww, r1.xyzx
mad r0.xyz, r0.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -2.000000, 0.000000)
mad r0.z, cb0[0].w, r0.z, l(1.000000)
mul r0.xy, r0.zzzz, r0.xyxx
mul r0.xy, r0.xyxx, cb0[0].yyyy
mad r0.xy, r0.xyxx, l(0.026042, 0.046795, 0.000000, 0.000000), v1.xyxx
sample_indexable(texture2d)(float,float,float,float) o0.xyzw, r0.xyxx, t0.xyzw, s0
ret 
// Approximately 40 instruction slots used
