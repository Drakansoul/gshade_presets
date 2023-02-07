//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_VERTEXID              0   x           0   VERTID    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 1     zw        1     NONE   float     zw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { -1.000000, 1.000000, 0, 0},
                              { -1.000000, -3.000000, 0, 0},
                              { 3.000000, 1.000000, 0, 0} }
dcl_input_sgv v0.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_output o1.zw
dcl_temps 1
mov o0.zw, l(0,0,0,1.000000)
mov r0.x, v0.x
mov o0.xy, icb[r0.x + 0].xyxx
mad o1.xy, icb[r0.x + 0].xyxx, l(0.500000, -0.500000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mul o1.z, l(1.796911), icb[r0.x + 0].x
mov o1.w, -icb[r0.x + 0].y
ret 
// Approximately 7 instruction slots used