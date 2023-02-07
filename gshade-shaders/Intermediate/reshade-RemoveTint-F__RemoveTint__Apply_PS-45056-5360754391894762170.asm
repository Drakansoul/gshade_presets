//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float fUISpeed;                    // Offset:    0 Size:     4 [unused]
//   bool bUIUseExcludeColor;           // Offset:    4 Size:     4 [unused]
//   float3 fUIExcludeColor;            // Offset:   16 Size:    12
//   float fUIExcludeColorStrength;     // Offset:   28 Size:     4
//   int cUIDebug;                      // Offset:   32 Size:     4 [unused]
//   float fUIStrength;                 // Offset:   36 Size:     4
//   float frametime;                   // Offset:   40 Size:     4 [unused]
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
// __V__RemoveTint__texMinRGB        texture  float4          2d             t6      1 
// __V__RemoveTint__texMaxRGB        texture  float4          2d             t8      1 
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t8
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
ld_indexable(texture2d)(float,float,float,float) r0.xyz, l(0, 0, 0, 0), t8.xyzw
ld_indexable(texture2d)(float,float,float,float) r1.xyz, l(0, 0, 0, 0), t6.xyzw
add r0.xyz, r0.xyzx, -r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
add r1.xyz, -r1.xyzx, r2.xyzx
div r0.xyz, r1.xyzx, r0.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r0.w, r2.xyzx, r2.xyzx
sqrt r0.w, r0.w
mad r1.xyz, -r0.xyzx, r0.wwww, r2.xyzx
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r0.w, r2.xyzx, cb0[1].xyzx
log r0.w, |r0.w|
mul r0.w, r0.w, cb0[1].w
exp r0.w, r0.w
min r0.w, r0.w, l(1.000000)
mad r0.xyz, r0.wwww, r1.xyzx, r0.xyzx
add r0.xyz, -r2.xyzx, r0.xyzx
mad_sat o0.xyz, cb0[2].yyyy, r0.xyzx, r2.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 23 instruction slots used
