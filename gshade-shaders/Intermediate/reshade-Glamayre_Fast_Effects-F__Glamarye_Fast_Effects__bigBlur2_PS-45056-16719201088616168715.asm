//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int show_color_space;              // Offset:    0 Size:     4 [unused]
//   bool fxaa_enabled;                 // Offset:    4 Size:     4 [unused]
//   bool sharp_enabled;                // Offset:    8 Size:     4 [unused]
//   bool ao_enabled;                   // Offset:   12 Size:     4 [unused]
//   bool dof_enabled;                  // Offset:   16 Size:     4 [unused]
//   bool depth_detect;                 // Offset:   20 Size:     4 [unused]
//   bool sky_detect;                   // Offset:   24 Size:     4 [unused]
//   float sharp_strength;              // Offset:   28 Size:     4 [unused]
//   float ao_strength;                 // Offset:   32 Size:     4 [unused]
//   float ao_shine_strength;           // Offset:   36 Size:     4 [unused]
//   float dof_strength;                // Offset:   40 Size:     4 [unused]
//   float gi_strength;                 // Offset:   44 Size:     4 [unused]
//   float gi_saturation;               // Offset:   48 Size:     4 [unused]
//   float gi_contrast;                 // Offset:   52 Size:     4 [unused]
//   bool gi_use_depth;                 // Offset:   56 Size:     4
//   float gi_ao_strength;              // Offset:   60 Size:     4 [unused]
//   float gi_local_ao_strength;        // Offset:   64 Size:     4 [unused]
//   float bounce_multiplier;           // Offset:   68 Size:     4 [unused]
//   float gi_shape;                    // Offset:   72 Size:     4 [unused]
//   bool gi_dof_safe_mode;             // Offset:   76 Size:     4 [unused]
//   int debug_mode;                    // Offset:   80 Size:     4 [unused]
//   bool ao_big_dither;                // Offset:   84 Size:     4 [unused]
//   float reduce_ao_in_light_areas;    // Offset:   88 Size:     4 [unused]
//   float ao_fog_fix;                  // Offset:   92 Size:     4 [unused]
//   float gi_max_distance;             // Offset:   96 Size:     4 [unused]
//   float ao_radius;                   // Offset:  100 Size:     4 [unused]
//   float ao_shape_modifier;           // Offset:  104 Size:     4 [unused]
//   float ao_max_depth_diff;           // Offset:  108 Size:     4 [unused]
//   float fxaa_bias;                   // Offset:  112 Size:     4 [unused]
//   float tone_map;                    // Offset:  116 Size:     4 [unused]
//   float max_sharp_diff;              // Offset:  120 Size:     4 [unused]
//   bool edge_detect_sharpen;          // Offset:  124 Size:     4 [unused]
//   bool big_sharpen;                  // Offset:  128 Size:     4 [unused]
//   bool abtest;                       // Offset:  132 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__Glamarye_Fast_Effects__HBlurTex    texture  float4          2d             t6      1 
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
dcl_constantbuffer CB0[4], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 8
add r0.xyzw, v1.xyxy, l(0.007812, -0.097222, 0.002604, -0.032407)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t6.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t6.xyzw, s0
add r2.xyzw, v1.xyxy, l(-0.002604, 0.032407, -0.007812, 0.097222)
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t6.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.zwzz, t6.xyzw, s0
eq r4.x, r1.w, l(0.000000)
movc r1.w, r4.x, r3.w, r1.w
eq r4.x, r0.w, l(0.000000)
movc r0.w, r4.x, r3.w, r0.w
eq r4.x, r3.w, l(0.000000)
movc r3.w, r4.x, r0.w, r3.w
eq r4.x, r2.w, l(0.000000)
movc r2.w, r4.x, r0.w, r2.w
add r4.xyzw, r0.xyzw, r1.xyzw
add r4.xyzw, r3.xyzw, r4.xyzw
add r4.xyzw, r2.xyzw, r4.xyzw
mul r5.xyzw, r4.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000)
if_nz cb0[3].z
  add r6.x, r0.w, r3.w
  mul r6.x, r6.x, l(0.500000)
  min r6.y, r0.w, r6.x
  div r6.y, r1.w, r6.y
  add r6.y, r6.y, l(-1.000000)
  mul r6.y, r6.y, l(5.000000)
  min r6.y, |r6.y|, l(1.000000)
  mad r7.xyzw, r4.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000), -r1.xyzw
  mad r1.xyzw, r6.yyyy, r7.xyzw, r1.xyzw
  min r6.x, r3.w, r6.x
  div r6.x, r2.w, r6.x
  add r6.x, r6.x, l(-1.000000)
  mul r6.x, r6.x, l(5.000000)
  min r6.x, |r6.x|, l(1.000000)
  mad r7.xyzw, r4.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000), -r2.xyzw
  mad r2.xyzw, r6.xxxx, r7.xyzw, r2.xyzw
  div r6.x, r0.w, r5.w
  add r6.x, r6.x, l(-1.000000)
  mul r6.x, r6.x, l(3.000000)
  min r6.x, |r6.x|, l(1.000000)
  mad r7.xyzw, r4.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000), -r0.xyzw
  mad r0.xyzw, r6.xxxx, r7.xyzw, r0.xyzw
  div r6.x, r3.w, r5.w
  add r6.x, r6.x, l(-1.000000)
  mul r6.x, r6.x, l(3.000000)
  min r6.x, |r6.x|, l(1.000000)
  mad r4.xyzw, r4.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000), -r3.xyzw
  mad r3.xyzw, r6.xxxx, r4.xyzw, r3.xyzw
  add r0.xyzw, r0.xyzw, r1.xyzw
  add r0.xyzw, r3.xyzw, r0.xyzw
  add r0.xyzw, r2.xyzw, r0.xyzw
  mul o0.xyzw, r0.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000)
else 
  mov o0.xyzw, r5.xyzw
endif 
ret 
// Approximately 55 instruction slots used