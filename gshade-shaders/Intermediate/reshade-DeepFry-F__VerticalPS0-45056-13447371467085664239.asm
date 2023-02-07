//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   float Quality;                     // Offset:    0 Size:     4
//   float Reds;                        // Offset:    4 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __V__Image0                       texture  float4          2d             t2      1 
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
dcl_immediateConstantBuffer { { 1.000000, 16.000000, 17.000000, 0},
                              { 1.000000, 11.000000, 18.000000, 0},
                              { 1.000000, 10.000000, 24.000000, 0},
                              { 1.000000, 16.000000, 47.000000, 0},
                              { 1.000000, 24.000000, 99.000000, 0},
                              { 1.000000, 40.000000, 99.000000, 0},
                              { 1.000000, 51.000000, 99.000000, 0},
                              { 1.000000, 61.000000, 99.000000, 0},
                              { 0.980785, 12.000000, 18.000000, 0},
                              { 0.831470, 12.000000, 21.000000, 0},
                              { 0.555570, 14.000000, 26.000000, 0},
                              { 0.195090, 19.000000, 66.000000, 0},
                              { -0.195090, 26.000000, 99.000000, 0},
                              { -0.555570, 58.000000, 99.000000, 0},
                              { -0.831470, 60.000000, 99.000000, 0},
                              { -0.980785, 55.000000, 99.000000, 0},
                              { 0.923880, 14.000000, 24.000000, 0},
                              { 0.382683, 13.000000, 26.000000, 0},
                              { -0.382683, 16.000000, 56.000000, 0},
                              { -0.923880, 24.000000, 99.000000, 0},
                              { -0.923880, 40.000000, 99.000000, 0},
                              { -0.382683, 57.000000, 99.000000, 0},
                              { 0.382683, 69.000000, 99.000000, 0},
                              { 0.923880, 56.000000, 99.000000, 0},
                              { 0.831470, 14.000000, 47.000000, 0},
                              { -0.195090, 17.000000, 66.000000, 0},
                              { -0.980785, 22.000000, 99.000000, 0},
                              { -0.555570, 29.000000, 99.000000, 0},
                              { 0.555570, 51.000000, 99.000000, 0},
                              { 0.980785, 87.000000, 99.000000, 0},
                              { 0.195090, 80.000000, 99.000000, 0},
                              { -0.831470, 62.000000, 99.000000, 0},
                              { 0.707107, 18.000000, 99.000000, 0},
                              { -0.707107, 22.000000, 99.000000, 0},
                              { -0.707107, 37.000000, 99.000000, 0},
                              { 0.707107, 56.000000, 99.000000, 0},
                              { 0.707107, 68.000000, 99.000000, 0},
                              { -0.707107, 109.000000, 99.000000, 0},
                              { -0.707107, 103.000000, 99.000000, 0},
                              { 0.707107, 77.000000, 99.000000, 0},
                              { 0.555570, 24.000000, 99.000000, 0},
                              { -0.980785, 36.000000, 99.000000, 0},
                              { 0.195090, 55.000000, 99.000000, 0},
                              { 0.831470, 64.000000, 99.000000, 0},
                              { -0.831470, 81.000000, 99.000000, 0},
                              { -0.195090, 104.000000, 99.000000, 0},
                              { 0.980785, 113.000000, 99.000000, 0},
                              { -0.555570, 92.000000, 99.000000, 0},
                              { 0.382683, 49.000000, 99.000000, 0},
                              { -0.923880, 64.000000, 99.000000, 0},
                              { 0.923880, 78.000000, 99.000000, 0},
                              { -0.382683, 87.000000, 99.000000, 0},
                              { -0.382683, 103.000000, 99.000000, 0},
                              { 0.923880, 121.000000, 99.000000, 0},
                              { -0.923880, 120.000000, 99.000000, 0},
                              { 0.382683, 101.000000, 99.000000, 0},
                              { 0.195090, 72.000000, 99.000000, 0},
                              { -0.555570, 92.000000, 99.000000, 0},
                              { 0.831470, 95.000000, 99.000000, 0},
                              { -0.980785, 98.000000, 99.000000, 0},
                              { 0.980785, 112.000000, 99.000000, 0},
                              { -0.831470, 100.000000, 99.000000, 0},
                              { 0.555570, 103.000000, 99.000000, 0},
                              { -0.195090, 99.000000, 99.000000, 0} }
dcl_constantbuffer CB0[1], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
mul r0.xy, v1.xyxx, l(3840.000000, 2144.000000, 0.000000, 0.000000)
ftou r0.xy, r0.xyxx
and r0.z, r0.y, l(7)
iadd r0.w, -r0.z, r0.y
bfi r0.y, l(3), l(3), r0.y, l(0)
utof r1.x, r0.x
mov r2.zw, l(0,0,0,0)
mov r3.xyz, l(0,0,0,0)
mov r1.zw, l(0,0,0,-1)
loop 
  breakc_z r1.w
  and r3.w, r1.z, l(7)
  bfi r4.x, l(3), l(0), r1.z, r0.y
  iadd r3.w, r0.w, r3.w
  utof r1.y, r3.w
  add r4.yz, r1.xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
  ftoi r2.xy, r4.yzyy
  ld_indexable(texture2d)(float,float,float,float) r4.yzw, r2.xyzw, t2.wxyz
  add r4.yzw, r4.yyzw, l(0.000000, -0.500000, -0.500000, -0.500000)
  mad r3.xyz, r4.yzwy, icb[r4.x + 0].xxxx, r3.xyzx
  iadd r1.z, r1.z, l(1)
  ult r1.w, r1.z, l(8)
endloop 
movc r0.z, r0.z, l(1.000000), l(0.707107)
mul r1.xyz, r0.zzzz, r3.xyzx
mad r1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)
mad r1.xyz, r1.xyzx, l(255.000000, 255.000000, 255.000000, 0.000000), l(-128.000000, -128.000000, -128.000000, 0.000000)
bfi r0.x, l(3), l(0), r0.x, r0.y
mov r2.xyz, icb[r0.x + 0].yzzy
mul r0.xyw, r2.xyxz, cb0[0].xxxx
rcp r2.xyz, r0.xwwx
mul r1.xyz, r1.xyzx, r2.xyzx
round_ne r1.xyz, r1.xyzx
mul r0.xyz, r0.xywx, r1.xyzx
mad o0.xyzw, r0.xyzw, l(0.003922, 0.003922, 0.003922, 0.498039), l(0.500000, 0.500000, 0.500000, 0.500000)
ret 
// Approximately 36 instruction slots used
