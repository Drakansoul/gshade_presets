//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int BlurRadius;                    // Offset:    0 Size:     4
//   float BlurOffset;                  // Offset:    4 Size:     4
//   float BlurEdge;                    // Offset:    8 Size:     4
//   float BlurStrength;                // Offset:   12 Size:     4
//   int DebugMode;                     // Offset:   16 Size:     4
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
dcl_immediateConstantBuffer { { 0, 0, 0.150999, 0},
                              { 0.000260, 0, 0.113249, 0.000361},
                              { 0, 0.000468, 0.113249, 0},
                              { 0.000260, 0.000468, 0.027399, 0.000361},
                              { 0.000260, -0.000468, 0.027399, 0.000361},
                              { 0.000521, 0, 0.045300, 0.000841},
                              { 0, 0.000936, 0.045300, 0},
                              { 0.000521, 0.000468, 0.010960, 0.000841},
                              { 0.000521, -0.000468, 0.010960, 0.000841},
                              { 0.000260, 0.000936, 0.010960, 0.000361},
                              { 0.000260, -0.000936, 0.010960, 0.000361},
                              { 0.000521, 0.000936, 0.004384, 0.000841},
                              { 0.000521, -0.000936, 0.004384, 0.000841},
                              { 0, 0.095773, 0, 0},
                              { 0, 0.133399, 0.000380, 0},
                              { 0.000648, 0.133399, 0, 0.000682},
                              { 0.000648, 0.042183, 0.000380, 0.000682},
                              { -0.000648, 0.042183, 0.000380, -0.000682},
                              { 0, 0.029644, 0.000886, 0},
                              { 0.001512, 0.029644, 0, 0.001593},
                              { 0.000648, 0.009374, 0.000886, 0.000682},
                              { -0.000648, 0.009374, 0.000886, -0.000682},
                              { 0.001512, 0.009374, 0.000380, 0.001593},
                              { -0.001512, 0.009374, 0.000380, -0.001593},
                              { 0.001512, 0.002083, 0.000886, 0.001593},
                              { -0.001512, 0.002083, 0.000886, -0.001593},
                              { 0.052992, 0, 0.001394, 0},
                              { 0.092561, 0, 0, 0.002504},
                              { 0.092561, 0, 0.001394, 0.000682},
                              { 0.021500, 0, 0.001394, -0.000682},
                              { 0.021500, 0, 0.001394, 0.001593},
                              { 0.053927, 0, 0.001394, -0.001593},
                              { 0.053927, 0, 0.000380, 0.002504},
                              { 0.012526, 0, 0.000380, -0.002504},
                              { 0.012526, 0, 0.000886, 0.002504},
                              { 0.012526, 0, 0.000886, -0.002504},
                              { 0.012526, 0, 0.001394, 0.002504},
                              { 0.007298, 0, 0.001394, -0.002504},
                              { 0.007298, 0, 0, 0},
                              { 0.020385, 0, 0, 0},
                              { 0.020385, 0, 0, 0},
                              { 0.004735, 0, 0, 0},
                              { 0.004735, 0, 0, 0},
                              { 0.002759, 0, 0, 0},
                              { 0.002759, 0, 0, 0},
                              { 0.004735, 0, 0, 0},
                              { 0.004735, 0, 0, 0},
                              { 0.002759, 0, 0, 0},
                              { 0.002759, 0, 0, 0},
                              { 0.001043, 0, 0, 0},
                              { 0.001043, 0, 0, 0} }
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
ieq r0.w, cb0[0].x, l(1)
if_nz r0.w
  mad r1.xyzw, cb0[0].yyyy, l(0.000260, 0.000000, 0.000000, 0.000468), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t0.xyzw, s0, l(0.000000)
  add r3.xyz, r0.xyzx, -r2.xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  div r0.w, r0.w, cb0[0].z
  add r0.w, r0.w, l(1.000000)
  mul r1.x, r0.w, r0.w
  mul r1.x, r1.x, r1.x
  mul r0.w, r0.w, r1.x
  rcp r0.w, r0.w
  mul r0.w, r0.w, l(0.150538)
  mad r3.xyzw, -cb0[0].yyyy, l(0.000260, 0.000000, 0.000000, 0.000468), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  add r5.xyz, r0.xyzx, -r4.xyzx
  dp3 r1.x, r5.xyzx, r5.xyzx
  div r1.x, r1.x, cb0[0].z
  add r1.x, r1.x, l(1.000000)
  mul r1.y, r1.x, r1.x
  mul r1.y, r1.y, r1.y
  mul r1.x, r1.x, r1.y
  rcp r1.x, r1.x
  mul r1.y, r1.x, l(0.150538)
  mad r1.x, r1.x, l(0.150538), r0.w
  mul r2.xyz, r2.xyzx, r0.wwww
  mad r2.xyz, r0.xyzx, l(0.225806, 0.225806, 0.225806, 0.000000), r2.xyzx
  add r0.w, r1.x, l(0.225806)
  mad r2.xyz, r1.yyyy, r4.xyzx, r2.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t0.xyzw, s0, l(0.000000)
  add r4.xyz, r0.xyzx, -r1.xyzx
  dp3 r1.w, r4.xyzx, r4.xyzx
  div r1.w, r1.w, cb0[0].z
  add r1.w, r1.w, l(1.000000)
  mul r2.w, r1.w, r1.w
  mul r2.w, r2.w, r2.w
  mul r1.w, r1.w, r2.w
  rcp r1.w, r1.w
  mul r2.w, r1.w, l(0.150538)
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  add r4.xyz, r0.xyzx, -r3.xyzx
  dp3 r3.w, r4.xyzx, r4.xyzx
  div r3.w, r3.w, cb0[0].z
  add r3.w, r3.w, l(1.000000)
  mul r4.x, r3.w, r3.w
  mul r4.x, r4.x, r4.x
  mul r3.w, r3.w, r4.x
  rcp r3.w, r3.w
  mul r4.x, r3.w, l(0.150538)
  mad r0.w, r1.w, l(0.150538), r0.w
  mad r1.xyz, r2.wwww, r1.xyzx, r2.xyzx
  mad r0.w, r3.w, l(0.150538), r0.w
  mad r1.xyz, r4.xxxx, r3.xyzx, r1.xyzx
  mad r2.xyzw, cb0[0].yyyy, l(0.000260, 0.000468, 0.000260, -0.000468), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t0.xyzw, s0, l(0.000000)
  add r4.xyz, r0.xyzx, -r3.xyzx
  dp3 r1.w, r4.xyzx, r4.xyzx
  div r1.w, r1.w, cb0[0].z
  add r1.w, r1.w, l(1.000000)
  mul r2.x, r1.w, r1.w
  mul r2.x, r2.x, r2.x
  mul r1.w, r1.w, r2.x
  rcp r1.w, r1.w
  mul r2.x, r1.w, l(0.043011)
  mad r4.xyzw, -cb0[0].yyyy, l(0.000260, 0.000468, 0.000260, -0.000468), v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r4.xyxx, t0.xyzw, s0, l(0.000000)
  add r6.xyz, r0.xyzx, -r5.xyzx
  dp3 r2.y, r6.xyzx, r6.xyzx
  div r2.y, r2.y, cb0[0].z
  add r2.y, r2.y, l(1.000000)
  mul r3.w, r2.y, r2.y
  mul r3.w, r3.w, r3.w
  mul r2.y, r2.y, r3.w
  rcp r2.y, r2.y
  mul r3.w, r2.y, l(0.043011)
  mad r0.w, r1.w, l(0.043011), r0.w
  mad r1.xyz, r2.xxxx, r3.xyzx, r1.xyzx
  mad r0.w, r2.y, l(0.043011), r0.w
  mad r1.xyz, r3.wwww, r5.xyzx, r1.xyzx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  add r3.xyz, r0.xyzx, -r2.xyzx
  dp3 r1.w, r3.xyzx, r3.xyzx
  div r1.w, r1.w, cb0[0].z
  add r1.w, r1.w, l(1.000000)
  mul r2.w, r1.w, r1.w
  mul r2.w, r2.w, r2.w
  mul r1.w, r1.w, r2.w
  rcp r1.w, r1.w
  mul r2.w, r1.w, l(0.043011)
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r4.zwzz, t0.xyzw, s0, l(0.000000)
  add r4.xyz, r0.xyzx, -r3.xyzx
  dp3 r3.w, r4.xyzx, r4.xyzx
  div r3.w, r3.w, cb0[0].z
  add r3.w, r3.w, l(1.000000)
  mul r4.x, r3.w, r3.w
  mul r4.x, r4.x, r4.x
  mul r3.w, r3.w, r4.x
  rcp r3.w, r3.w
  mul r4.x, r3.w, l(0.043011)
  mad r0.w, r1.w, l(0.043011), r0.w
  mad r1.xyz, r2.wwww, r2.xyzx, r1.xyzx
  mad r0.w, r3.w, l(0.043011), r0.w
  mad r1.xyz, r4.xxxx, r3.xyzx, r1.xyzx
else 
  ieq r1.w, cb0[0].x, l(2)
  if_nz r1.w
    mul r2.xyz, r0.xyzx, l(0.150999, 0.150999, 0.150999, 0.000000)
    mov r1.xyz, r2.xyzx
    mov r0.w, l(0.150999)
    mov r1.w, l(1)
    mov r2.w, l(-1)
    loop 
      breakc_z r2.w
      mov r3.xy, icb[r1.w + 0].xyxx
      mad r3.zw, r3.xxxy, cb0[0].yyyy, v1.xxxy
      sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
      add r5.xyz, r0.xyzx, -r4.xyzx
      dp3 r3.z, r5.xyzx, r5.xyzx
      div r3.z, r3.z, cb0[0].z
      add r3.z, r3.z, l(1.000000)
      mul r3.w, r3.z, r3.z
      mul r3.w, r3.w, r3.w
      mul r3.z, r3.z, r3.w
      div r3.z, icb[r1.w + 0].z, r3.z
      mad r3.xy, -r3.xyxx, cb0[0].yyyy, v1.xyxx
      sample_l_indexable(texture2d)(float,float,float,float) r3.xyw, r3.xyxx, t0.xywz, s0, l(0.000000)
      add r5.xyz, r0.xyzx, -r3.xywx
      dp3 r4.w, r5.xyzx, r5.xyzx
      div r4.w, r4.w, cb0[0].z
      add r4.w, r4.w, l(1.000000)
      mul r5.x, r4.w, r4.w
      mul r5.x, r5.x, r5.x
      mul r4.w, r4.w, r5.x
      div r4.w, icb[r1.w + 0].z, r4.w
      add r5.x, r0.w, r3.z
      mad r4.xyz, r3.zzzz, r4.xyzx, r1.xyzx
      add r0.w, r4.w, r5.x
      mad r1.xyz, r4.wwww, r3.xywx, r4.xyzx
      iadd r1.w, r1.w, l(1)
      ilt r2.w, r1.w, l(13)
    endloop 
  else 
    ieq r1.w, cb0[0].x, l(3)
    if_nz r1.w
      mul r2.xyz, r0.xyzx, l(0.095773, 0.095773, 0.095773, 0.000000)
      mov r1.xyz, r2.xyzx
      mov r0.w, l(0.095773)
      mov r1.w, l(1)
      mov r2.w, l(-1)
      loop 
        breakc_z r2.w
        mov r3.x, icb[r1.w + 0].w
        mov r3.y, icb[r1.w + 13].x
        mad r3.zw, r3.xxxy, cb0[0].yyyy, v1.xxxy
        sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
        add r5.xyz, r0.xyzx, -r4.xyzx
        dp3 r3.z, r5.xyzx, r5.xyzx
        div r3.z, r3.z, cb0[0].z
        add r3.z, r3.z, l(1.000000)
        mul r3.w, r3.z, r3.z
        mul r3.w, r3.w, r3.w
        mul r3.z, r3.z, r3.w
        div r3.z, icb[r1.w + 13].y, r3.z
        mad r3.xy, -r3.xyxx, cb0[0].yyyy, v1.xyxx
        sample_l_indexable(texture2d)(float,float,float,float) r3.xyw, r3.xyxx, t0.xywz, s0, l(0.000000)
        add r5.xyz, r0.xyzx, -r3.xywx
        dp3 r4.w, r5.xyzx, r5.xyzx
        div r4.w, r4.w, cb0[0].z
        add r4.w, r4.w, l(1.000000)
        mul r5.x, r4.w, r4.w
        mul r5.x, r5.x, r5.x
        mul r4.w, r4.w, r5.x
        div r4.w, icb[r1.w + 13].y, r4.w
        add r5.x, r0.w, r3.z
        mad r4.xyz, r3.zzzz, r4.xyzx, r1.xyzx
        add r0.w, r4.w, r5.x
        mad r1.xyz, r4.wwww, r3.xywx, r4.xyzx
        iadd r1.w, r1.w, l(1)
        ilt r2.w, r1.w, l(13)
      endloop 
    else 
      ige r1.w, cb0[0].x, l(4)
      if_nz r1.w
        mul r2.xyz, r0.xyzx, l(0.052992, 0.052992, 0.052992, 0.000000)
        mov r1.xyz, r2.xyzx
        mov r0.w, l(0.052992)
        mov r1.w, l(1)
        mov r2.w, l(-1)
        loop 
          breakc_z r2.w
          mov r3.xy, icb[r1.w + 13].zwzz
          mad r3.zw, r3.xxxy, cb0[0].yyyy, v1.xxxy
          sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
          add r5.xyz, r0.xyzx, -r4.xyzx
          dp3 r3.z, r5.xyzx, r5.xyzx
          div r3.z, r3.z, cb0[0].z
          add r3.z, r3.z, l(1.000000)
          mul r3.w, r3.z, r3.z
          mul r3.w, r3.w, r3.w
          mul r3.z, r3.z, r3.w
          div r3.z, icb[r1.w + 26].x, r3.z
          mad r3.xy, -r3.xyxx, cb0[0].yyyy, v1.xyxx
          sample_l_indexable(texture2d)(float,float,float,float) r3.xyw, r3.xyxx, t0.xywz, s0, l(0.000000)
          add r5.xyz, r0.xyzx, -r3.xywx
          dp3 r4.w, r5.xyzx, r5.xyzx
          div r4.w, r4.w, cb0[0].z
          add r4.w, r4.w, l(1.000000)
          mul r5.x, r4.w, r4.w
          mul r5.x, r5.x, r5.x
          mul r4.w, r4.w, r5.x
          div r4.w, icb[r1.w + 26].x, r4.w
          add r5.x, r0.w, r3.z
          mad r4.xyz, r3.zzzz, r4.xyzx, r1.xyzx
          add r0.w, r4.w, r5.x
          mad r1.xyz, r4.wwww, r3.xywx, r4.xyzx
          iadd r1.w, r1.w, l(1)
          ilt r2.w, r1.w, l(25)
        endloop 
      else 
        mov r1.xyz, l(0,0,0,0)
        mov r0.w, l(0)
      endif 
    endif 
  endif 
endif 
ieq r1.w, cb0[1].x, l(1)
if_nz r1.w
  mov o0.xyz, r0.wwww
  mov o0.w, l(0)
  ret 
endif 
ieq r1.w, cb0[1].x, l(2)
if_nz r1.w
  div o0.xyz, r1.xyzx, r0.wwww
  mov o0.w, l(0)
  ret 
endif 
div r1.xyz, r1.xyzx, r0.wwww
add r1.xyz, -r0.xyzx, r1.xyzx
mad_sat o0.xyz, cb0[0].wwww, r1.xyzx, r0.xyzx
mov o0.w, l(0)
ret 
// Approximately 243 instruction slots used