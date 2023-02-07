//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float frametime;                   // Offset:    0 Size:     4 [unused]
//   int framecount;                    // Offset:    4 Size:     4 [unused]
//   int random;                        // Offset:    8 Size:     4 [unused]
//   bool bDebug;                       // Offset:   12 Size:     4 [unused]
//   float fPeviousDepth;               // Offset:   16 Size:     4 [unused]
//   bool bBrightnessOpacity;           // Offset:   20 Size:     4 [unused]
//   float fDepthMultiplier;            // Offset:   24 Size:     4 [unused]
//   bool bFrameAccuAuto;               // Offset:   28 Size:     4 [unused]
//   int iFrameAccu;                    // Offset:   32 Size:     4 [unused]
//   float fSkyDepth;                   // Offset:   36 Size:     4
//   float fWeaponDepth;                // Offset:   40 Size:     4 [unused]
//   int iRayPreciseHit;                // Offset:   44 Size:     4 [unused]
//   int iRayPreciseHitSteps;           // Offset:   48 Size:     4 [unused]
//   float fRayStepPrecision;           // Offset:   52 Size:     4 [unused]
//   float fRayStepMultiply;            // Offset:   56 Size:     4 [unused]
//   float fRayHitDepthThreshold;       // Offset:   60 Size:     4 [unused]
//   float fRayBounce;                  // Offset:   64 Size:     4 [unused]
//   float fFadePower;                  // Offset:   68 Size:     4 [unused]
//   float fSaturateColor;              // Offset:   72 Size:     4 [unused]
//   float fSaturateColorPower;         // Offset:   76 Size:     4 [unused]
//   float fAOMultiplier;               // Offset:   80 Size:     4
//   int iAODistance;                   // Offset:   84 Size:     4 [unused]
//   bool bNormalWeight;                // Offset:   88 Size:     4
//   int iSmoothRadius;                 // Offset:   92 Size:     4
//   int iSmoothLod;                    // Offset:   96 Size:     4
//   float fSmoothPass;                 // Offset:  100 Size:     4 [unused]
//   float fSmoothDepthThreshold;       // Offset:  104 Size:     4
//   float fSmoothNormalThreshold;      // Offset:  108 Size:     4
//   float fSourceColor;                // Offset:  112 Size:     4 [unused]
//   float fSourceDesat;                // Offset:  116 Size:     4 [unused]
//   float fLightMult;                  // Offset:  120 Size:     4 [unused]
//   float fLightOffset;                // Offset:  124 Size:     4 [unused]
//   float fMaxLight;                   // Offset:  128 Size:     4 [unused]
//   float fLightNormalize;             // Offset:  132 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __s2                              sampler      NA          NA             s2      1 
// __V__ReShade__DepthBufferTex      texture  float4          2d             t2      1 
// __V__DHRTGI__normalTex            texture  float4          2d             t6      1 
// __V__DHRTGI__lightPassTex         texture  float4          2d            t10      1 
// __V__DHRTGI__lightPassAOTex       texture  float4          2d            t14      1 
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
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[7], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t14
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 12
sample_l_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t2.xyzw, s0, l(0.000000)
mad r0.y, -r0.x, l(999.000000), l(1000.000000)
div r0.x, r0.x, r0.y
lt r0.y, cb0[2].y, r0.x
if_nz r0.y
  mov o0.xyzw, l(0,0,0,0)
  mov o1.xyzw, l(0,0,0,0)
  ret 
endif 
if_z cb0[5].w
  itof r0.y, cb0[6].x
  sample_l_indexable(texture2d)(float,float,float,float) o0.xyzw, v1.xyxx, t10.xyzw, s2, r0.y
  sample_l_indexable(texture2d)(float,float,float,float) r0.y, v1.xyxx, t14.yxzw, s2, l(0.000000)
  mov o1.xyz, r0.yyyy
  mov o1.w, l(1.000000)
  ret 
endif 
mul r0.yz, v1.xxyx, l(0.000000, 1920.000000, 1068.000000, 0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t6.xyzw, s0, l(0.000000)
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
add r1.xyz, r1.xyzx, r1.xyzx
itof r0.w, cb0[5].w
mad_sat r2.xy, -r0.wwww, l(0.000521, 0.000936, 0.000000, 0.000000), v1.xyxx
mad_sat r2.zw, r0.wwww, l(0.000000, 0.000000, 0.000521, 0.000936), v1.xxxy
ge r3.xy, r2.zwzz, r2.xyxx
round_z r0.yz, r0.yyzy
mov r4.zw, l(0,0,0,0)
mov r1.w, cb0[5].z
mov r3.zw, l(0,0,0,0)
mov r5.xyzw, l(0,0,0,0)
mov r6.x, l(0)
mov r7.x, r2.x
mov r6.y, r3.x
loop 
  breakc_z r6.y
  mov r8.xyz, r5.xyzx
  mov r6.z, r1.w
  mov r6.w, r3.z
  mov r7.z, r3.w
  mov r7.w, r5.w
  mov r8.w, r6.x
  mov r9.x, r2.y
  mov r9.y, r3.y
  loop 
    breakc_z r9.y
    mov r7.y, r9.x
    sample_l_indexable(texture2d)(float,float,float,float) r9.z, r7.xyxx, t2.yzxw, s0, l(0.000000)
    mad r9.w, -r9.z, l(999.000000), l(1000.000000)
    div r9.z, r9.z, r9.w
    lt r9.w, cb0[2].y, r9.z
    if_nz r9.w
      add r9.w, r9.x, l(0.000936)
      ge r9.y, r2.w, r9.w
      mov r9.xy, r9.wyww
      continue 
    endif 
    add r9.z, -r0.x, r9.z
    ge r9.z, cb0[6].z, |r9.z|
    if_nz r9.z
      sample_l_indexable(texture2d)(float,float,float,float) r10.xyz, r7.xyxx, t6.xyzw, s0, l(0.000000)
      add r10.xyz, r10.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
      add r11.xyz, r10.xyzx, r10.xyzx
      mad r10.xyz, r10.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), -r1.xyzx
      add r10.xyz, |r10.xyzx|, -cb0[6].wwww
      max r10.xyz, r10.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
      ne r10.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r10.xyzx
      or r9.z, r10.y, r10.x
      or r9.z, r10.z, r9.z
      if_z r9.z
        mul r9.zw, r7.xxxy, l(0.000000, 0.000000, 1920.000000, 1068.000000)
        ftoi r4.xy, r9.zwzz
        round_z r9.zw, r9.zzzw
        add r9.zw, r0.yyyz, -r9.zzzw
        dp2 r7.y, r9.zwzz, r9.zwzz
        sqrt r7.y, r7.y
        ge r7.y, r0.w, r7.y
        if_nz r7.y
          ld_indexable(texture2d)(float,float,float,float) r7.y, r4.xyzz, t14.yxzw
          max r7.y, r7.y, l(0.000000)
          log r7.y, r7.y
          mul r7.y, r7.y, cb0[5].x
          exp r7.y, r7.y
          add r7.w, r7.y, r7.w
          iadd r8.w, r8.w, l(1)
        endif 
        ld_indexable(texture2d)(float,float,float,float) r10.xyz, r4.xyww, t10.xyzw
        dp3 r4.x, r11.xyzx, r1.xyzx
        movc r4.x, r6.z, |r4.x|, l(1.000000)
        mad r8.xyz, r10.xyzx, r4.xxxx, r8.xyzx
        add r6.w, r4.x, r6.w
        iadd r7.z, r7.z, l(1)
      endif 
    endif 
    add r9.x, r9.x, l(0.000936)
    ge r9.y, r2.w, r9.x
  endloop 
  mov r5.xyz, r8.xyzx
  mov r3.z, r6.w
  mov r3.w, r7.z
  mov r5.w, r7.w
  mov r6.x, r8.w
  add r7.x, r7.x, l(0.000521)
  ge r6.y, r2.z, r7.x
endloop 
ilt r0.x, r3.w, l(1)
if_nz r0.x
  itof r0.x, cb0[6].x
  sample_l_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t10.xyzw, s2, r0.x
  mov o0.xyz, r0.xyzx
  mov o0.w, l(1.000000)
  mov o1.xyzw, l(1.000000,1.000000,1.000000,1.000000)
  ret 
else 
  itof r0.w, r6.x
  div r0.xyz, r5.wwww, r0.wwww
endif 
div o0.xyz, r5.xyzx, r3.zzzz
mov o0.w, l(1.000000)
mov o1.xyz, r0.xyzx
mov o1.w, l(1.000000)
ret 
// Approximately 121 instruction slots used