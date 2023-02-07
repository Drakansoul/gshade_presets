//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __V__FogRemovalHistogram          texture  float4          2d             t8      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
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
dcl_resource_texture2d (float,float,float,float) t8
dcl_output o0.xyzw
dcl_temps 9
mov r0.yzw, l(0,4,0,7)
mov r1.y, l(0x00011c00)
mov r2.yw, l(0,10,0,1)
mov r3.xyzw, l(255.000000,255.000000,255.000000,255.000000)
mov r1.z, l(0x00008e00)
mov r4.xz, l(0x00008e00,0,0x00008e00,0)
mov r0.x, l(255)
mov r5.xz, l(0x00008e00,0,-1,0)
loop 
  breakc_z r5.z
  ld_indexable(texture2d)(float,float,float,float) r5.w, r0.xyzz, t8.yzwx
  ftoi r5.w, r5.w
  iadd r6.y, r1.z, -r5.w
  ld_indexable(texture2d)(float,float,float,float) r5.w, r0.xwzz, t8.yzwx
  ftoi r5.w, r5.w
  iadd r7.y, r4.x, -r5.w
  mov r2.xz, r0.xxzx
  ld_indexable(texture2d)(float,float,float,float) r5.w, r2.xyzz, t8.yzwx
  ftoi r5.w, r5.w
  iadd r8.y, r4.z, -r5.w
  ilt r5.w, r6.y, l(0x000086e6)
  itof r1.x, r0.x
  mov r6.x, r3.y
  movc r1.zw, r5.wwww, r1.yyyx, r6.yyyx
  ilt r5.w, r7.y, l(0x000086e6)
  mov r7.x, r3.z
  movc r4.xy, r5.wwww, r1.yxyy, r7.yxyy
  ilt r5.w, r8.y, l(0x000086e6)
  mov r8.x, r3.w
  movc r4.zw, r5.wwww, r1.yyyx, r8.yyyx
  ld_indexable(texture2d)(float,float,float,float) r2.x, r2.xwzz, t8.xyzw
  ftoi r2.x, r2.x
  iadd r3.y, -r2.x, r5.x
  ilt r2.x, r3.y, l(0x00004700)
  movc r5.xy, r2.xxxx, r1.yxyy, r3.yxyy
  iadd r0.x, r0.x, l(-1)
  ige r1.x, l(0x00008e00), r1.z
  ige r2.x, l(0x00008e00), r4.x
  or r1.x, r1.x, r2.x
  ige r2.x, l(0x00008e00), r4.z
  or r1.x, r1.x, r2.x
  ige r2.x, l(0x00008e00), r5.x
  or r1.x, r1.x, r2.x
  ige r2.x, r0.x, l(0)
  and r5.z, r1.x, r2.x
  mov r3.y, r1.w
  mov r3.zw, r4.yyyw
  mov r3.x, r5.y
endloop 
mul r0.xyzw, r3.yzwx, l(0.003922, 0.003922, 0.003922, 0.003922)
dp3 r1.x, l(0.333333, 0.333333, 0.333333, 0.000000), r0.xyzx
div o0.xyz, r1.xxxx, r0.xyzx
mov o0.w, r0.w
ret 
// Approximately 54 instruction slots used