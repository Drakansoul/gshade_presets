//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   bool DebugLuma;                    // Offset:    0 Size:     4 [unused]
//   bool DebugLumaOutput;              // Offset:    4 Size:     4 [unused]
//   bool DebugLumaOutputHQ;            // Offset:    8 Size:     4 [unused]
//   bool EnableHighlightsInDarkScenes; // Offset:   12 Size:     4 [unused]
//   bool DebugHighlights;              // Offset:   16 Size:     4 [unused]
//   float LumaChangeSpeed;             // Offset:   20 Size:     4
//   float LumaHigh;                    // Offset:   24 Size:     4 [unused]
//   float LumaLow;                     // Offset:   28 Size:     4 [unused]
//   float AmbientHighlightThreshold;   // Offset:   32 Size:     4 [unused]
//   float HighlightThreshold;          // Offset:   36 Size:     4 [unused]
//   float HighlightMaxThreshold;       // Offset:   40 Size:     4 [unused]
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
// __V__LumaInputTex                 texture  float4          2d             t4      1 
// __V__LumaTexLF                    texture  float4          2d             t8      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   x           0   TARGET   float   x   
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t8
dcl_output o0.x
dcl_temps 2
mov r0.xyz, l(0,20,-1,0)
loop 
  breakc_z r0.z
  itof r1.x, r0.y
  mov r0.w, r0.x
  mov r1.zw, l(0,0,11,-1)
  loop 
    breakc_z r1.w
    itof r1.y, r1.z
    sample_l_indexable(texture2d)(float,float,float,float) r1.y, r1.xyxx, t4.yxzw, s1, l(6.000000)
    add r0.w, r0.w, r1.y
    iadd r1.z, r1.z, l(1)
    ilt r1.w, r1.z, l(22)
  endloop 
  mov r0.x, r0.w
  iadd r0.y, r0.y, l(1)
  ilt r0.z, r0.y, l(40)
endloop 
sample_indexable(texture2d)(float,float,float,float) r0.y, l(0.500000, 0.500000, 0.000000, 0.000000), t8.yxzw, s0
mad r0.x, r0.x, l(0.004545), -r0.y
mad o0.x, cb0[1].y, r0.x, r0.y
ret 
// Approximately 22 instruction slots used
