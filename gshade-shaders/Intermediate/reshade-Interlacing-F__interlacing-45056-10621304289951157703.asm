//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int lineHeight;                    // Offset:    0 Size:     4
//   bool lineCheck;                    // Offset:    4 Size:     4
//   float framecount;                  // Offset:    8 Size:     4
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
// __V__previousTex                  texture  float4          2d             t6      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float    y  
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
dcl_constantbuffer CB0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps_siv linear noperspective v0.y, position
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 1
ine r0.x, cb0[0].y, l(0)
ieq r0.x, r0.x, l(-1)
if_nz r0.x
  ishl r0.x, cb0[0].x, l(1)
  itof r0.x, r0.x
  mul r0.y, r0.x, v0.y
  ge r0.y, r0.y, -r0.y
  movc r0.x, r0.y, r0.x, -r0.x
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
  mul r0.y, r0.y, v0.y
  frc r0.y, r0.y
  mul r0.x, r0.y, r0.x
  itof r0.y, cb0[0].x
  ge r0.x, r0.y, r0.x
  if_nz r0.x
    mov o0.xyz, l(0,0,0,0)
    ret 
  else 
    sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
    mov o0.xyz, r0.xyzx
    ret 
  endif 
else 
  ge r0.x, l(0.000000), cb0[0].z
  if_nz r0.x
    ishl r0.x, cb0[0].x, l(1)
    itof r0.x, r0.x
    mul r0.y, r0.x, v0.y
    ge r0.y, r0.y, -r0.y
    movc r0.x, r0.y, r0.x, -r0.x
    div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
    mul r0.y, r0.y, v0.y
    frc r0.y, r0.y
    mul r0.x, r0.y, r0.x
    itof r0.y, cb0[0].x
    ge r0.x, r0.y, r0.x
    if_nz r0.x
      sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t6.xyzw, s0
      mov o0.xyz, r0.xyzx
      ret 
    else 
      sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
      mov o0.xyz, r0.xyzx
      ret 
    endif 
  else 
    itof r0.x, cb0[0].x
    add r0.y, r0.x, v0.y
    ishl r0.z, cb0[0].x, l(1)
    itof r0.z, r0.z
    mul r0.w, r0.z, r0.y
    ge r0.w, r0.w, -r0.w
    movc r0.z, r0.w, r0.z, -r0.z
    div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
    mul r0.y, r0.w, r0.y
    frc r0.y, r0.y
    mul r0.y, r0.y, r0.z
    ge r0.x, r0.x, r0.y
    if_nz r0.x
      sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t6.xyzw, s0
      mov o0.xyz, r0.xyzx
      ret 
    else 
      sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
      mov o0.xyz, r0.xyzx
      ret 
    endif 
  endif 
endif 
ret 
// Approximately 70 instruction slots used
