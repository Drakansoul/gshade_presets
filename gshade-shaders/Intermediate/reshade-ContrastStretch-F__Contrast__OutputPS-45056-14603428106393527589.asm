//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Minimum;                     // Offset:    0 Size:     4 [unused]
//   float DarkThreshold;               // Offset:    4 Size:     4 [unused]
//   float LightThreshold;              // Offset:    8 Size:     4 [unused]
//   float Maximum;                     // Offset:   12 Size:     4 [unused]
//   float MaxVariance;                 // Offset:   16 Size:     4 [unused]
//   float DarkPeak;                    // Offset:   20 Size:     4 [unused]
//   float DarkMax;                     // Offset:   24 Size:     4 [unused]
//   float MidPeak;                     // Offset:   28 Size:     4 [unused]
//   float MidMax;                      // Offset:   32 Size:     4 [unused]
//   float LightPeak;                   // Offset:   36 Size:     4 [unused]
//   float LightMax;                    // Offset:   40 Size:     4 [unused]
//   uint Debug;                        // Offset:   44 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__Contrast__BackBuffer         texture  float4          2d             t0      1 
// __V__Contrast__Histogram          texture  float4          2d             t2      1 
// __V__Contrast__Variances          texture  float4          2d             t8      1 
// __V__Contrast__CSHistogramLUT     texture  float4          2d            t10      1 
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
dcl_constantbuffer CB0[3], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t10
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
dp3 r1.x, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
mov r1.y, l(0.500000)
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t10.yzwx, s0
mul r1.x, r0.y, l(0.331264)
mad r1.x, r0.x, l(-0.168736), -r1.x
mad r1.x, r0.z, l(0.500000), r1.x
mul r0.y, r0.y, l(0.418688)
mad r0.x, r0.x, l(0.500000), -r0.y
mad r0.x, -r0.z, l(0.081312), r0.x
mad r2.x, r0.x, l(1.402000), r0.w
mad r0.y, -r1.x, l(0.344136), r0.w
mad r2.y, -r0.x, l(0.714136), r0.y
mad r2.z, r1.x, l(1.772000), r0.w
ieq r0.x, cb0[2].w, l(1)
if_nz r0.x
  mad r0.x, v1.x, l(3.000000), l(-2.000000)
  ge r0.x, r0.x, l(0.000000)
  if_nz r0.x
    add r0.x, -v1.y, l(1.000000)
    mul r0.x, r0.x, l(17096.000000)
    round_ne r0.x, r0.x
    ftou r0.x, r0.x
    mad r1.x, v1.x, l(3.000000), l(-2.000000)
    mov r1.y, l(0.500000)
    sample_indexable(texture2d)(float,float,float,float) r0.y, r1.xyxx, t2.yxzw, s0
    ftou r0.y, r0.y
    uge r0.x, r0.y, r0.x
    mad r0.yzw, r2.xxyz, l(0.000000, -2.000000, -2.000000, -2.000000), l(0.000000, 1.000000, 1.000000, 1.000000)
    mad r0.yzw, r0.yyzw, l(0.000000, 0.700000, 0.700000, 0.700000), r2.xxyz
    movc o0.xyz, r0.xxxx, r0.yzwy, r2.xyzx
  else 
    mov o0.xyz, r2.xyzx
  endif 
else 
  ieq r0.x, cb0[2].w, l(2)
  if_nz r0.x
    mad r0.xy, v1.xyxx, l(-1.000000, 0.556510, 0.000000, 0.000000), l(1.000000, 0.000000, 0.000000, 0.000000)
    ge r0.xy, l(0.125000, 0.125000, 0.000000, 0.000000), r0.xyxx
    and r0.x, r0.y, r0.x
    if_nz r0.x
      ld_indexable(texture2d)(float,float,float,float) r0.x, l(0, 0, 0, 0), t8.xyzw
      mov o0.xyz, r0.xxxx
    else 
      mov o0.xyz, r2.xyzx
    endif 
  else 
    ieq r0.x, cb0[2].w, l(3)
    if_nz r0.x
      mad r0.xy, v1.xyxx, l(-1.000000, 0.556510, 0.000000, 0.000000), l(1.000000, 0.000000, 0.000000, 0.000000)
      ge r0.xy, l(0.125000, 0.125000, 0.000000, 0.000000), r0.xyxx
      and r0.x, r0.y, r0.x
      if_nz r0.x
        ld_indexable(texture2d)(float,float,float,float) r0.x, l(1, 0, 0, 0), t8.xyzw
        mov o0.xyz, r0.xxxx
      else 
        mov o0.xyz, r2.xyzx
      endif 
    else 
      ieq r0.x, cb0[2].w, l(4)
      if_nz r0.x
        mad r0.xy, v1.xyxx, l(-1.000000, 0.556510, 0.000000, 0.000000), l(1.000000, 0.000000, 0.000000, 0.000000)
        ge r0.xy, l(0.125000, 0.125000, 0.000000, 0.000000), r0.xyxx
        and r0.x, r0.y, r0.x
        if_nz r0.x
          ld_indexable(texture2d)(float,float,float,float) r0.x, l(2, 0, 0, 0), t8.xyzw
          mov o0.xyz, r0.xxxx
        else 
          mov o0.xyz, r2.xyzx
        endif 
      else 
        mov o0.xyz, r2.xyzx
      endif 
    endif 
  endif 
endif 
ret 
// Approximately 77 instruction slots used
