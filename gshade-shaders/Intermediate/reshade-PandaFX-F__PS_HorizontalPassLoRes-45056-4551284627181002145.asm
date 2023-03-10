//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Blend_Amount;                // Offset:    0 Size:     4 [unused]
//   float Contrast_R;                  // Offset:    4 Size:     4 [unused]
//   float Contrast_G;                  // Offset:    8 Size:     4 [unused]
//   float Contrast_B;                  // Offset:   12 Size:     4 [unused]
//   float Gamma_R;                     // Offset:   16 Size:     4 [unused]
//   float Gamma_G;                     // Offset:   20 Size:     4 [unused]
//   float Gamma_B;                     // Offset:   24 Size:     4 [unused]
//   bool Enable_Diffusion;             // Offset:   28 Size:     4 [unused]
//   bool Enable_Static_Dither;         // Offset:   32 Size:     4 [unused]
//   float Diffusion_1_Amount;          // Offset:   36 Size:     4 [unused]
//   int Diffusion_1_Radius;            // Offset:   40 Size:     4 [unused]
//   float Diffusion_1_Gamma;           // Offset:   44 Size:     4 [unused]
//   float Diffusion_1_Quality;         // Offset:   48 Size:     4 [unused]
//   float Diffusion_1_Desaturate;      // Offset:   52 Size:     4 [unused]
//   float Diffusion_2_Amount;          // Offset:   56 Size:     4 [unused]
//   int Diffusion_2_Radius;            // Offset:   60 Size:     4 [unused]
//   float Diffusion_2_Gamma;           // Offset:   64 Size:     4 [unused]
//   float Diffusion_2_Quality;         // Offset:   68 Size:     4 [unused]
//   float Diffusion_2_Desaturate;      // Offset:   72 Size:     4 [unused]
//   float Diffusion_3_Amount;          // Offset:   76 Size:     4 [unused]
//   int Diffusion_3_Radius;            // Offset:   80 Size:     4
//   float Diffusion_3_Gamma;           // Offset:   84 Size:     4 [unused]
//   float Diffusion_3_Quality;         // Offset:   88 Size:     4
//   float Diffusion_3_Desaturate;      // Offset:   92 Size:     4 [unused]
//   bool Enable_Bleach_Bypass;         // Offset:   96 Size:     4 [unused]
//   float Bleach_Bypass_Amount;        // Offset:  100 Size:     4 [unused]
//   bool Enable_Dither;                // Offset:  104 Size:     4 [unused]
//   float Dither_Amount;               // Offset:  108 Size:     4 [unused]
//   float framecount;                  // Offset:  112 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__blurLayerVerticalMedRes      texture  float4          2d            t14      1 
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
dcl_constantbuffer CB0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t14
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
itof r0.x, cb0[5].x
mul r0.y, cb0[5].z, l(0.000260)
ge r0.z, r0.x, -r0.x
mov r1.y, l(0)
mov r2.xyzw, l(0,0,0,1.000000)
mov r0.w, l(0.000001)
mov r1.z, -r0.x
mov r1.w, r0.z
loop 
  breakc_z r1.w
  mul r1.x, r0.y, r1.z
  add_sat r3.xy, r1.xyxx, v1.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyxx, t14.xyzw, s0, l(0.000000)
  div r1.x, |r1.z|, r0.x
  add r1.x, -r1.x, l(1.000000)
  mad r1.x, r1.x, l(2.000000), l(-1.000000)
  mul r4.x, |r1.x|, -r1.x
  mad r1.x, r4.x, l(0.500000), r1.x
  add r1.x, r1.x, l(0.500000)
  mad r2.xyzw, r3.xyzw, r1.xxxx, r2.xyzw
  add r0.w, r0.w, r1.x
  add r1.z, r1.z, l(1.000000)
  ge r1.w, r0.x, r1.z
endloop 
div o0.xyzw, r2.xyzw, r0.wwww
ret 
// Approximately 26 instruction slots used
