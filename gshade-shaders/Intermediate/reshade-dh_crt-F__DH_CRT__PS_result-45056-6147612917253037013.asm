//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float iPixelHeight;                // Offset:    0 Size:     4
//   int iScanlineHeight;               // Offset:    4 Size:     4
//   float fScanlineOpacity;            // Offset:    8 Size:     4
//   bool bScanlineGrad;                // Offset:   12 Size:     4
//   float fScanlineBloom;              // Offset:   16 Size:     4
//   float fScanlineBloomThreshold;     // Offset:   20 Size:     4 [unused]
//   float fBrightnessBoost;            // Offset:   24 Size:     4
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0
mul r1.x, v1.y, l(2137.000000)
round_z r1.x, r1.x
mul r1.y, r1.x, cb0[0].x
ge r1.y, r1.y, -r1.y
movc r1.y, r1.y, cb0[0].x, -cb0[0].x
div r1.z, l(1.000000, 1.000000, 1.000000, 1.000000), r1.y
mul r1.x, r1.z, r1.x
frc r1.x, r1.x
mul r1.x, r1.x, r1.y
ftoi r1.y, r1.x
ilt r1.y, cb0[0].y, r1.y
round_z r1.x, r1.x
movc r1.x, r1.y, l(-1.000000), r1.x
lt r1.y, l(0.000000), r1.x
if_nz r1.y
  mul r1.y, r1.x, cb0[0].z
  itof r1.z, cb0[0].y
  div r1.y, r1.y, r1.z
  add r1.y, -r1.y, l(1.000000)
  mul r2.xyz, r0.xyzx, r1.yyyy
  add r1.y, -cb0[0].z, l(1.000000)
  mul r3.xyz, r0.xyzx, r1.yyyy
  movc r0.xyz, cb0[0].wwww, r2.xyzx, r3.xyzx
  lt r1.y, l(0.000000), cb0[1].x
  if_nz r1.y
    mad r2.y, -r1.x, l(0.000468), v1.y
    add r1.y, -r1.x, r1.z
    mad r3.y, r1.y, l(0.000468), v1.y
    add_sat r2.zw, v1.xxxx, l(0.000000, 0.000000, -0.000260, 0.000260)
    ge r1.w, r2.y, l(0.000000)
    if_nz r1.w
      ge r1.w, r2.w, r2.z
      div r1.x, r1.x, r1.z
      add r1.x, -r1.x, l(1.000000)
      mov r4.xyz, l(0,0,0,0)
      mov r3.z, l(0)
      mov r2.x, r2.z
      mov r3.w, r1.w
      loop 
        breakc_z r3.w
        sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r2.xyxx, t0.xyzw, s0, l(0.000000)
        max r4.w, r5.z, r5.y
        max r4.w, r4.w, r5.x
        mul r4.w, r4.w, r4.w
        mul r5.w, r1.x, r4.w
        mad r4.xyz, r5.xyzx, r5.wwww, r4.xyzx
        mad r3.z, r1.x, r4.w, r3.z
        add r2.x, r2.x, l(0.000260)
        ge r3.w, r2.w, r2.x
      endloop 
    else 
      mov r4.xyz, l(0,0,0,0)
      mov r3.z, l(0)
    endif 
    ge r1.x, l(1.000000), r3.y
    if_nz r1.x
      ge r1.x, r2.w, r2.z
      div r1.y, r1.y, r1.z
      add r1.y, -r1.y, l(1.000000)
      mov r5.xyz, r4.xyzx
      mov r1.z, r3.z
      mov r3.x, r2.z
      mov r1.w, r1.x
      loop 
        breakc_z r1.w
        sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
        max r2.x, r6.z, r6.y
        max r2.x, r2.x, r6.x
        mul r2.x, r2.x, r2.x
        mul r2.y, r1.y, r2.x
        mad r5.xyz, r6.xyzx, r2.yyyy, r5.xyzx
        mad r1.z, r1.y, r2.x, r1.z
        add r3.x, r3.x, l(0.000260)
        ge r1.w, r2.w, r3.x
      endloop 
      mov r4.xyz, r5.xyzx
      mov r3.z, r1.z
    endif 
    mul r1.xyz, r4.xyzx, cb0[1].xxxx
    div r1.xyz, r1.xyzx, r3.zzzz
    add r0.xyz, r0.xyzx, r1.xyzx
  endif 
else 
  lt r1.x, l(0.000000), cb0[1].z
  add r1.y, cb0[1].z, l(1.000000)
  mul r1.yzw, r0.xxyz, r1.yyyy
  movc r0.xyz, r1.xxxx, r1.yzwy, r0.xyzx
endif 
mov_sat o0.xyzw, r0.xyzw
ret 
// Approximately 91 instruction slots used
