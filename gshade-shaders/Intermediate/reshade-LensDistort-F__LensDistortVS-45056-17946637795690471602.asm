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
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { -1.000000, 1.000000, 0, 0},
                              { -1.000000, -3.000000, 0, 0},
                              { 3.000000, 1.000000, 0, 0} }
dcl_input_sgv v0.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_temps 1
mov o0.zw, l(0,0,0,1.000000)
mov r0.x, v0.x
mov o0.xy, icb[r0.x + 0].xyxx
mul o1.xy, l(0.873803, -0.486280, 0.000000, 0.000000), icb[r0.x + 0].xyxx
ret 
// Approximately 5 instruction slots used
