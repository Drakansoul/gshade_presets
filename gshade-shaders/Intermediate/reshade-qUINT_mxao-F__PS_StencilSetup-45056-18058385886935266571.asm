//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int qMXAO_GLOBAL_SAMPLE_QUALITY_PRESET;// Offset:    0 Size:     4 [unused]
//   float qMXAO_SAMPLE_RADIUS;         // Offset:    4 Size:     4
//   float qMXAO_SAMPLE_NORMAL_BIAS;    // Offset:    8 Size:     4 [unused]
//   float qMXAO_GLOBAL_RENDER_SCALE;   // Offset:   12 Size:     4 [unused]
//   float qMXAO_SSAO_AMOUNT;           // Offset:   16 Size:     4 [unused]
//   float qMXAO_SAMPLE_RADIUS_SECONDARY;// Offset:   20 Size:     4 [unused]
//   float qMXAO_AMOUNT_FINE;           // Offset:   24 Size:     4 [unused]
//   float qMXAO_AMOUNT_COARSE;         // Offset:   28 Size:     4 [unused]
//   int qMXAO_BLEND_TYPE;              // Offset:   32 Size:     4 [unused]
//   float qMXAO_FADE_DEPTH_START;      // Offset:   36 Size:     4 [unused]
//   float qMXAO_FADE_DEPTH_END;        // Offset:   40 Size:     4
//   int qMXAO_DEBUG_VIEW_ENABLE;       // Offset:   44 Size:     4 [unused]
//   float FRAME_TIME;                  // Offset:   48 Size:     4 [unused]
//   int FRAME_COUNT;                   // Offset:   52 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __s0                              sampler      NA          NA             s0      1 
// __V__qUINT__DepthBufferTex        texture  float4          2d             t2      1 
// __V__qMXAO_DepthTex               texture  float4          2d             t6      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xyzw        1     NONE   float     zw
// TEXCOORD                 1   x           2     NONE   float       
// TEXCOORD                 4    yzw        2     NONE   float       
// TEXCOORD                 5   xyz         3     NONE   float       
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
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v1.zw
dcl_output o0.xyzw
dcl_temps 1
sample_l_indexable(texture2d)(float,float,float,float) r0.x, v1.zwzz, t2.xyzw, s0, l(0.000000)
mad r0.y, -r0.x, l(999.000000), l(1000.000000)
div_sat r0.x, r0.x, r0.y
ge r0.x, r0.x, cb0[2].z
mul r0.y, cb0[0].y, l(0.125000)
sample_indexable(texture2d)(float,float,float,float) r0.z, v1.zwzz, t6.yzxw, s0
add r0.z, r0.z, l(2.000000)
div r0.y, r0.y, r0.z
lt r0.y, r0.y, l(0.000468)
or r0.x, r0.y, r0.x
lt r0.yz, l(0.000000, 1.000000, 1.000000, 0.000000), v1.zzwz
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x
discard_nz r0.x
mov o0.xyzw, l(1.000000,1.000000,1.000000,1.000000)
ret 
// Approximately 16 instruction slots used
