//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer _Globals
// {
//
//   int Buffer1;                       // Offset:    0 Size:     4 [unused]
//   uint RotationAngle;                // Offset:    4 Size:     4 [unused]
//   float BrightnessThresholdStart;    // Offset:    8 Size:     4
//   float BrightnessThresholdEnd;      // Offset:   12 Size:     4
//   float GradientStrength;            // Offset:   16 Size:     4 [unused]
//   float MaskingNoise;                // Offset:   20 Size:     4
//   float NoiseSize;                   // Offset:   24 Size:     4 [unused]
//   bool ReverseSort;                  // Offset:   28 Size:     4
//   bool InvertMask;                   // Offset:   32 Size:     4 [unused]
//   bool ShowMask;                     // Offset:   36 Size:     4 [unused]
//   bool HotsamplingMode;              // Offset:   40 Size:     4 [unused]
//   int Buffer2;                       // Offset:   44 Size:     4 [unused]
//   bool FilterColor;                  // Offset:   48 Size:     4 [unused]
//   bool ShowSelectedHue;              // Offset:   52 Size:     4 [unused]
//   float Value;                       // Offset:   56 Size:     4 [unused]
//   float ValueRange;                  // Offset:   60 Size:     4 [unused]
//   float Hue;                         // Offset:   64 Size:     4 [unused]
//   float HueRange;                    // Offset:   68 Size:     4 [unused]
//   float Saturation;                  // Offset:   72 Size:     4 [unused]
//   float SaturationRange;             // Offset:   76 Size:     4 [unused]
//   int Buffer3;                       // Offset:   80 Size:     4 [unused]
//   bool FilterDepth;                  // Offset:   84 Size:     4 [unused]
//   float FocusDepth;                  // Offset:   88 Size:     4 [unused]
//   float FocusRangeDepth;             // Offset:   92 Size:     4 [unused]
//   bool Spherical;                    // Offset:   96 Size:     4 [unused]
//   int Sphere_FieldOfView;            // Offset:  100 Size:     4 [unused]
//   float Sphere_FocusHorizontal;      // Offset:  104 Size:     4 [unused]
//   float Sphere_FocusVertical;        // Offset:  108 Size:     4 [unused]
//   int Buffer4;                       // Offset:  112 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// __V__ColorSorter__texHalfRes      texture  float4          2d             t4      1 
// V__ColorSorter__texColorSortStorage        UAV  float4          2d             u0      1 
// _Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[2], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t4
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_input vThreadIDInGroup.xy
dcl_input vThreadID.x
dcl_temps 10
dcl_indexableTemp x0[40], 4
dcl_indexableTemp x1[16], 4
dcl_indexableTemp x2[16], 4
dcl_indexableTemp x3[80], 4
dcl_tgsm_structured g0, 16, 1280
dcl_tgsm_structured g1, 4, 32
dcl_tgsm_structured g2, 4, 32
dcl_thread_group 2, 16, 1
imul null, r0.x, vThreadIDInGroup.y, l(640)
ushr r0.x, r0.x, l(4)
imad r0.y, vThreadIDInGroup.x, l(640), r0.x
iadd r0.z, r0.x, l(39)
imad r0.w, vThreadIDInGroup.x, l(640), r0.z
mov r1.x, vThreadID.x
mov r1.zw, l(0,0,0,0)
mov r1.y, r0.x
mov r2.x, l(-1)
loop 
  breakc_z r2.x
  imad r2.y, vThreadIDInGroup.x, l(640), r1.y
  ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyzw, t4.xyzw
  store_structured g0.xyzw, r2.y, l(0), r3.xyzw
  iadd r1.y, r1.y, l(1)
  uge r2.x, r0.z, r1.y
endloop 
if_z vThreadIDInGroup.y
  lt r1.xy, cb0[0].zwzz, l(1.020000, 1.020000, 0.000000, 0.000000)
  or r0.z, r1.y, r1.x
  not r1.x, r0.z
  ieq r1.y, r0.z, l(-1)
  mov r1.zw, l(0,0,0,0)
  mov r2.y, r1.x
  mov r2.xzw, l(0,0,0,-1)
  loop 
    breakc_z r2.w
    imad r3.x, vThreadIDInGroup.x, l(640), r1.z
    ld_structured r3.y, r3.x, l(12), g0.xxxx
    lt r4.xyz, r3.yyyy, l(0.900000, 0.600000, 0.750000, 0.000000)
    add r3.z, r3.y, r3.y
    and r3.z, r3.z, r4.y
    lt r3.z, r3.z, cb0[1].y
    and r3.z, r3.z, r4.x
    and r3.w, r0.z, r4.x
    lt r4.yw, l(0.000000, 0.750000, 0.000000, 0.650000), r3.yyyy
    and r3.w, r3.w, r4.y
    or r3.w, r2.y, r3.w
    and r3.y, r1.y, r4.w
    and r3.y, r4.z, r3.y
    movc r2.y, r3.y, l(0), r3.w
    and r3.y, r1.w, r4.x
    and r3.y, r2.y, r3.y
    not r3.w, r2.x
    and r3.w, r3.w, r3.z
    not r3.w, r3.w
    and r3.y, r3.w, r3.y
    iadd r3.w, r2.z, l(1)
    movc r2.z, r3.y, r2.z, r3.w
    and r3.y, r4.x, l(0x3f000000)
    itof r3.w, r2.z
    add r3.y, r3.y, r3.w
    store_structured g0.x, r3.x, l(12), r3.y
    iadd r1.z, r1.z, l(1)
    ult r2.w, r1.z, l(640)
    mov r1.w, r4.x
    mov r2.x, r3.z
  endloop 
endif 
sync_g_t
mov x0[0].xyzw, l(0,0,0,0)
mov x0[1].xyzw, l(0,0,0,0)
mov x0[2].xyzw, l(0,0,0,0)
mov x0[3].xyzw, l(0,0,0,0)
mov x0[4].xyzw, l(0,0,0,0)
mov x0[5].xyzw, l(0,0,0,0)
mov x0[6].xyzw, l(0,0,0,0)
mov x0[7].xyzw, l(0,0,0,0)
mov x0[8].xyzw, l(0,0,0,0)
mov x0[9].xyzw, l(0,0,0,0)
mov x0[10].xyzw, l(0,0,0,0)
mov x0[11].xyzw, l(0,0,0,0)
mov x0[12].xyzw, l(0,0,0,0)
mov x0[13].xyzw, l(0,0,0,0)
mov x0[14].xyzw, l(0,0,0,0)
mov x0[15].xyzw, l(0,0,0,0)
mov x0[16].xyzw, l(0,0,0,0)
mov x0[17].xyzw, l(0,0,0,0)
mov x0[18].xyzw, l(0,0,0,0)
mov x0[19].xyzw, l(0,0,0,0)
mov x0[20].xyzw, l(0,0,0,0)
mov x0[21].xyzw, l(0,0,0,0)
mov x0[22].xyzw, l(0,0,0,0)
mov x0[23].xyzw, l(0,0,0,0)
mov x0[24].xyzw, l(0,0,0,0)
mov x0[25].xyzw, l(0,0,0,0)
mov x0[26].xyzw, l(0,0,0,0)
mov x0[27].xyzw, l(0,0,0,0)
mov x0[28].xyzw, l(0,0,0,0)
mov x0[29].xyzw, l(0,0,0,0)
mov x0[30].xyzw, l(0,0,0,0)
mov x0[31].xyzw, l(0,0,0,0)
mov x0[32].xyzw, l(0,0,0,0)
mov x0[33].xyzw, l(0,0,0,0)
mov x0[34].xyzw, l(0,0,0,0)
mov x0[35].xyzw, l(0,0,0,0)
mov x0[36].xyzw, l(0,0,0,0)
mov x0[37].xyzw, l(0,0,0,0)
mov x0[38].xyzw, l(0,0,0,0)
mov x0[39].xyzw, l(0,0,0,0)
mov r0.z, l(0)
mov r1.x, l(-1)
loop 
  breakc_z r1.x
  iadd r1.y, r0.z, r0.y
  ld_structured r2.xyzw, r1.y, l(0), g0.xyzw
  mov x0[r0.z + 0].xyzw, r2.xyzw
  iadd r0.z, r0.z, l(1)
  ult r1.x, r0.z, l(40)
endloop 
iadd r0.z, -r0.y, r0.w
ige r1.x, r0.z, l(1)
ilt r1.y, r0.y, r0.w
movc r1.z, cb0[1].w, l(-1.000000), l(1.000000)
mov r1.w, l(1)
mov r2.x, r1.x
loop 
  breakc_z r2.x
  ishl r2.y, r1.w, l(1)
  mov r2.z, r0.y
  mov r2.w, r1.y
  loop 
    breakc_z r2.w
    iadd r3.x, r1.w, r2.z
    iadd r3.z, r2.y, r2.z
    iadd r3.yw, r3.xxxz, l(0, -1, 0, -1)
    imin r3.w, r0.w, r3.w
    ige r4.x, r3.y, r2.z
    ige r4.y, r3.w, r3.x
    and r4.x, r4.y, r4.x
    mov r4.yz, r2.zzzz
    mov r4.w, r3.x
    mov r5.x, r4.x
    loop 
      breakc_z r5.x
      ld_structured r6.xyzw, r4.z, l(0), g0.xyzw
      ld_structured r7.xyzw, r4.w, l(0), g0.xyzw
      add r5.y, -r6.w, r7.w
      lt r5.z, |r5.y|, l(0.100000)
      add r5.w, r6.y, r6.x
      add r5.w, r6.z, r5.w
      add r8.x, r7.y, r7.x
      add r8.x, r7.z, r8.x
      add r5.w, r5.w, -r8.x
      mul r5.w, r1.z, r5.w
      movc r5.y, r5.z, r5.w, r5.y
      lt r5.y, r5.y, l(0.000000)
      if_z r5.y
        iadd r5.y, r4.y, l(1)
        iadd r5.z, -r0.y, r4.y
        iadd r4.z, r4.z, l(1)
        mov x0[r5.z + 0].xyzw, r6.xyzw
        mov r4.y, r5.y
      else 
        iadd r5.y, r4.y, l(1)
        iadd r5.z, -r0.y, r4.y
        iadd r4.w, r4.w, l(1)
        mov x0[r5.z + 0].xyzw, r7.xyzw
        mov r4.y, r5.y
      endif 
      ige r5.yz, r3.yywy, r4.zzwz
      and r5.x, r5.z, r5.y
    endloop 
    ilt r3.x, r4.z, r0.w
    ige r4.x, r3.y, r4.z
    and r3.x, r3.x, r4.x
    mov r5.xy, r4.yzyy
    mov r4.x, r3.x
    loop 
      breakc_z r4.x
      iadd r4.w, -r0.y, r5.x
      iadd r5.zw, r5.xxxy, l(0, 0, 1, 1)
      ld_structured r6.xyzw, r5.y, l(0), g0.xyzw
      mov x0[r4.w + 0].xyzw, r6.xyzw
      ilt r4.w, r5.w, r0.w
      ige r6.x, r3.y, r5.w
      and r4.x, r4.w, r6.x
      mov r5.xy, r5.zwzz
    endloop 
    ige r3.x, r3.w, r2.z
    mov r3.y, r2.z
    mov r4.x, r3.x
    loop 
      breakc_z r4.x
      iadd r4.w, -r0.y, r3.y
      mov r5.xyzw, x0[r4.w + 0].xyzw
      store_structured g0.xyzw, r3.y, l(0), r5.xyzw
      iadd r3.y, r3.y, l(1)
      ige r4.x, r3.w, r3.y
    endloop 
    ilt r2.w, r3.z, r0.w
    mov r2.z, r3.z
  endloop 
  ige r2.x, r0.z, r2.y
  mov r1.w, r2.y
endloop 
mov x1[0].xyzw, l(0,0,0,0)
mov x1[1].xyzw, l(0,0,0,0)
mov x1[2].xyzw, l(0,0,0,0)
mov x1[3].xyzw, l(0,0,0,0)
mov x1[4].xyzw, l(0,0,0,0)
mov x1[5].xyzw, l(0,0,0,0)
mov x1[6].xyzw, l(0,0,0,0)
mov x1[7].xyzw, l(0,0,0,0)
mov x1[8].xyzw, l(0,0,0,0)
mov x1[9].xyzw, l(0,0,0,0)
mov x1[10].xyzw, l(0,0,0,0)
mov x1[11].xyzw, l(0,0,0,0)
mov x1[12].xyzw, l(0,0,0,0)
mov x1[13].xyzw, l(0,0,0,0)
mov x1[14].xyzw, l(0,0,0,0)
mov x1[15].xyzw, l(0,0,0,0)
mov x2[0].xyzw, l(0,0,0,0)
mov x2[1].xyzw, l(0,0,0,0)
mov x2[2].xyzw, l(0,0,0,0)
mov x2[3].xyzw, l(0,0,0,0)
mov x2[4].xyzw, l(0,0,0,0)
mov x2[5].xyzw, l(0,0,0,0)
mov x2[6].xyzw, l(0,0,0,0)
mov x2[7].xyzw, l(0,0,0,0)
mov x2[8].xyzw, l(0,0,0,0)
mov x2[9].xyzw, l(0,0,0,0)
mov x2[10].xyzw, l(0,0,0,0)
mov x2[11].xyzw, l(0,0,0,0)
mov x2[12].xyzw, l(0,0,0,0)
mov x2[13].xyzw, l(0,0,0,0)
mov x2[14].xyzw, l(0,0,0,0)
mov x2[15].xyzw, l(0,0,0,0)
mov x3[0].xyzw, l(0,0,0,0)
mov x3[1].xyzw, l(0,0,0,0)
mov x3[2].xyzw, l(0,0,0,0)
mov x3[3].xyzw, l(0,0,0,0)
mov x3[4].xyzw, l(0,0,0,0)
mov x3[5].xyzw, l(0,0,0,0)
mov x3[6].xyzw, l(0,0,0,0)
mov x3[7].xyzw, l(0,0,0,0)
mov x3[8].xyzw, l(0,0,0,0)
mov x3[9].xyzw, l(0,0,0,0)
mov x3[10].xyzw, l(0,0,0,0)
mov x3[11].xyzw, l(0,0,0,0)
mov x3[12].xyzw, l(0,0,0,0)
mov x3[13].xyzw, l(0,0,0,0)
mov x3[14].xyzw, l(0,0,0,0)
mov x3[15].xyzw, l(0,0,0,0)
mov x3[16].xyzw, l(0,0,0,0)
mov x3[17].xyzw, l(0,0,0,0)
mov x3[18].xyzw, l(0,0,0,0)
mov x3[19].xyzw, l(0,0,0,0)
mov x3[20].xyzw, l(0,0,0,0)
mov x3[21].xyzw, l(0,0,0,0)
mov x3[22].xyzw, l(0,0,0,0)
mov x3[23].xyzw, l(0,0,0,0)
mov x3[24].xyzw, l(0,0,0,0)
mov x3[25].xyzw, l(0,0,0,0)
mov x3[26].xyzw, l(0,0,0,0)
mov x3[27].xyzw, l(0,0,0,0)
mov x3[28].xyzw, l(0,0,0,0)
mov x3[29].xyzw, l(0,0,0,0)
mov x3[30].xyzw, l(0,0,0,0)
mov x3[31].xyzw, l(0,0,0,0)
mov x3[32].xyzw, l(0,0,0,0)
mov x3[33].xyzw, l(0,0,0,0)
mov x3[34].xyzw, l(0,0,0,0)
mov x3[35].xyzw, l(0,0,0,0)
mov x3[36].xyzw, l(0,0,0,0)
mov x3[37].xyzw, l(0,0,0,0)
mov x3[38].xyzw, l(0,0,0,0)
mov x3[39].xyzw, l(0,0,0,0)
mov x3[40].xyzw, l(0,0,0,0)
mov x3[41].xyzw, l(0,0,0,0)
mov x3[42].xyzw, l(0,0,0,0)
mov x3[43].xyzw, l(0,0,0,0)
mov x3[44].xyzw, l(0,0,0,0)
mov x3[45].xyzw, l(0,0,0,0)
mov x3[46].xyzw, l(0,0,0,0)
mov x3[47].xyzw, l(0,0,0,0)
mov x3[48].xyzw, l(0,0,0,0)
mov x3[49].xyzw, l(0,0,0,0)
mov x3[50].xyzw, l(0,0,0,0)
mov x3[51].xyzw, l(0,0,0,0)
mov x3[52].xyzw, l(0,0,0,0)
mov x3[53].xyzw, l(0,0,0,0)
mov x3[54].xyzw, l(0,0,0,0)
mov x3[55].xyzw, l(0,0,0,0)
mov x3[56].xyzw, l(0,0,0,0)
mov x3[57].xyzw, l(0,0,0,0)
mov x3[58].xyzw, l(0,0,0,0)
mov x3[59].xyzw, l(0,0,0,0)
mov x3[60].xyzw, l(0,0,0,0)
mov x3[61].xyzw, l(0,0,0,0)
mov x3[62].xyzw, l(0,0,0,0)
mov x3[63].xyzw, l(0,0,0,0)
mov x3[64].xyzw, l(0,0,0,0)
mov x3[65].xyzw, l(0,0,0,0)
mov x3[66].xyzw, l(0,0,0,0)
mov x3[67].xyzw, l(0,0,0,0)
mov x3[68].xyzw, l(0,0,0,0)
mov x3[69].xyzw, l(0,0,0,0)
mov x3[70].xyzw, l(0,0,0,0)
mov x3[71].xyzw, l(0,0,0,0)
mov x3[72].xyzw, l(0,0,0,0)
mov x3[73].xyzw, l(0,0,0,0)
mov x3[74].xyzw, l(0,0,0,0)
mov x3[75].xyzw, l(0,0,0,0)
mov x3[76].xyzw, l(0,0,0,0)
mov x3[77].xyzw, l(0,0,0,0)
mov x3[78].xyzw, l(0,0,0,0)
mov x3[79].xyzw, l(0,0,0,0)
utof r0.y, vThreadIDInGroup.y
ishl r0.z, vThreadIDInGroup.x, l(4)
imad r0.w, vThreadIDInGroup.x, l(16), vThreadIDInGroup.y
iadd r1.x, vThreadIDInGroup.y, l(1)
iadd r1.y, r0.z, r1.x
mov r1.w, l(1)
mov r2.x, l(-1)
loop 
  breakc_z r2.x
  sync_g_t
  ishl r2.y, r1.w, l(1)
  udiv null, r2.z, vThreadIDInGroup.y, r2.y
  iadd r2.w, -r2.z, vThreadIDInGroup.y
  mov r3.xy, l(0,-1,0,0)
  loop 
    breakc_z r3.y
    iadd r3.z, r2.w, r3.x
    imul null, r3.w, r3.z, l(640)
    ushr r3.w, r3.w, l(4)
    imad r3.w, vThreadIDInGroup.x, l(640), r3.w
    ld_structured r4.xyzw, r3.w, l(0), g0.xyzw
    mov x1[r3.z + 0].xyzw, r4.xyzw
    iadd r3.x, r3.x, l(1)
    ult r3.y, r3.x, r2.y
  endloop 
  utof r3.x, r2.y
  mul r3.y, r3.x, l(0.500000)
  itof r3.z, r2.w
  mad r3.z, r3.x, l(0.500000), r3.z
  add r3.z, r3.z, l(-1.000000)
  ftoi r3.z, r3.z
  iadd r3.w, r3.z, l(1)
  iadd r4.x, r2.y, r2.w
  iadd r4.y, r4.x, l(-1)
  ige r4.z, r3.z, r2.w
  ige r4.w, r4.y, r3.w
  and r4.z, r4.w, r4.z
  mov r4.w, l(0)
  mov r5.xy, r2.wwww
  mov r5.z, r3.w
  mov r5.w, r4.z
  loop 
    breakc_z r5.w
    mov r6.xyzw, x1[r5.x + 0].xyzw
    mov r7.xyzw, x1[r5.z + 0].xyzw
    add r8.x, -r6.w, r7.w
    lt r8.y, |r8.x|, l(0.100000)
    add r8.z, r6.y, r6.x
    add r8.z, r6.z, r8.z
    add r8.w, r7.y, r7.x
    add r8.w, r7.z, r8.w
    add r8.z, -r8.w, r8.z
    mul r8.z, r1.z, r8.z
    movc r8.x, r8.y, r8.z, r8.x
    lt r8.x, r8.x, l(0.000000)
    if_z r8.x
      ieq r8.x, r5.x, vThreadIDInGroup.y
      movc r4.w, r8.x, r5.y, r4.w
      iadd r8.x, r5.y, l(1)
      iadd r5.x, r5.x, l(1)
      mov r7.xyzw, r6.xyzw
    else 
      ieq r6.x, r5.z, vThreadIDInGroup.y
      movc r4.w, r6.x, r5.y, r4.w
      iadd r8.x, r5.y, l(1)
      iadd r5.z, r5.z, l(1)
    endif 
    mov x2[r5.y + 0].xyzw, r7.xyzw
    ige r6.x, r3.z, r5.x
    ige r6.y, r4.y, r5.z
    and r5.w, r6.y, r6.x
    mov r5.y, r8.x
  endloop 
  ige r3.w, r3.z, r5.x
  mov r4.z, r4.w
  mov r5.w, r5.x
  mov r6.x, r5.y
  mov r6.y, r3.w
  loop 
    breakc_z r6.y
    ieq r6.z, r5.w, vThreadIDInGroup.y
    movc r4.z, r6.z, r6.x, r4.z
    iadd r6.z, r6.x, l(1)
    iadd r6.w, r5.w, l(1)
    mov r7.xyzw, x1[r5.w + 0].xyzw
    mov x2[r6.x + 0].xyzw, r7.xyzw
    ige r6.y, r3.z, r6.w
    mov r5.w, r6.w
    mov r6.xy, r6.zyzz
  endloop 
  ige r3.z, r4.y, r5.z
  mov r7.x, r6.x
  mov r7.y, r5.z
  mov r3.w, r4.z
  mov r5.w, r3.z
  loop 
    breakc_z r5.w
    ieq r6.y, r7.y, vThreadIDInGroup.y
    movc r3.w, r6.y, r7.x, r3.w
    iadd r6.yz, r7.xxyx, l(0, 1, 1, 0)
    mov r8.xyzw, x1[r7.y + 0].xyzw
    mov x2[r7.x + 0].xyzw, r8.xyzw
    ige r5.w, r4.y, r6.z
    mov r7.xy, r6.yzyy
  endloop 
  udiv null, r3.z, r3.w, r2.y
  div r4.y, l(1.000000, 1.000000, 1.000000, 1.000000), r3.y
  mul r4.y, r0.y, r4.y
  frc r4.y, r4.y
  utof r3.z, r3.z
  mad r3.z, -r3.y, r4.y, r3.z
  ftoi r4.y, r3.z
  utof r2.z, r2.z
  lt r2.z, r2.z, r3.y
  if_nz r2.z
    iadd r2.z, r0.z, r3.w
    store_structured g1.x, r2.z, l(0), r0.x
    if_z r4.y
      utof r3.y, r2.w
      mad r3.y, r3.x, l(0.500000), r3.y
      mul r3.y, r3.y, l(40.000000)
      ftoi r3.y, r3.y
      store_structured g2.x, r2.z, l(0), r3.y
    else 
      utof r3.y, r2.w
      mad r3.y, r3.x, l(0.500000), r3.y
      round_z r3.z, r3.z
      add r3.y, r3.z, r3.y
      add r3.y, r3.y, l(-1.000000)
      mul r3.y, r3.y, l(40.000000)
      ftoi r3.y, r3.y
      mov r7.xyzw, x2[r3.w + 0].xyzw
      add r3.z, r7.y, r7.x
      add r3.z, r7.z, r3.z
      mov r5.w, l(0)
      mov r6.y, l(-1)
      loop 
        breakc_z r6.y
        iadd r6.z, r3.y, r5.w
        store_structured g2.x, r2.z, l(0), r6.z
        imad r6.w, vThreadIDInGroup.x, l(640), r6.z
        ld_structured r8.xyzw, r6.w, l(0), g0.xyzw
        add r6.w, -r7.w, r8.w
        lt r8.w, |r6.w|, l(0.100000)
        add r8.x, r8.y, r8.x
        add r8.x, r8.z, r8.x
        add r8.x, r3.z, -r8.x
        mul r8.x, r1.z, r8.x
        movc r6.w, r8.w, r8.x, r6.w
        lt r6.w, r6.w, l(0.000000)
        if_z r6.w
          break 
        else 
          iadd r6.z, r6.z, l(1)
          store_structured g2.x, r2.z, l(0), r6.z
        endif 
        iadd r5.w, r5.w, l(1)
        ult r6.y, r5.w, l(40)
      endloop 
    endif 
  else 
    iadd r2.z, r0.z, r3.w
    store_structured g2.x, r2.z, l(0), r0.x
    if_z r4.y
      iadd r2.z, r0.z, r3.w
      imul null, r3.y, r2.w, l(640)
      ushr r3.y, r3.y, l(4)
      store_structured g1.x, r2.z, l(0), r3.y
    else 
      iadd r2.z, r2.w, r4.y
      imad r2.z, r2.z, l(640), l(-640)
      ushr r2.z, r2.z, l(4)
      iadd r3.y, r0.z, r3.w
      mov r7.xyzw, x2[r3.w + 0].xyzw
      add r3.z, r7.y, r7.x
      add r3.z, r7.z, r3.z
      mov r4.y, l(0)
      mov r5.w, l(-1)
      loop 
        breakc_z r5.w
        iadd r6.y, r2.z, r4.y
        store_structured g1.x, r3.y, l(0), r6.y
        imad r6.z, vThreadIDInGroup.x, l(640), r6.y
        ld_structured r8.xyzw, r6.z, l(0), g0.xyzw
        add r6.z, -r7.w, r8.w
        lt r6.w, |r6.z|, l(0.100000)
        add r8.x, r8.y, r8.x
        add r8.x, r8.z, r8.x
        add r8.x, r3.z, -r8.x
        mul r8.x, r1.z, r8.x
        movc r6.z, r6.w, r8.x, r6.z
        lt r6.z, r6.z, l(0.000000)
        if_z r6.z
          break 
        else 
          iadd r6.y, r6.y, l(1)
          store_structured g1.x, r3.y, l(0), r6.y
        endif 
        iadd r4.y, r4.y, l(1)
        ult r5.w, r4.y, l(40)
      endloop 
    endif 
  endif 
  sync_g_t
  ld_structured r2.z, r0.w, l(0), g1.xxxx
  ld_structured r3.y, r0.w, l(0), g2.xxxx
  udiv null, r3.z, r1.x, r2.y
  if_z r3.z
    utof r3.z, r2.w
    mad r3.z, r3.x, l(0.500000), r3.z
    mul r3.z, r3.z, l(40.000000)
    ftoi r7.x, r3.z
    imul null, r3.z, r4.x, l(640)
    ushr r7.y, r3.z, l(4)
  else 
    ld_structured r7.x, r1.y, l(0), g1.xxxx
    ld_structured r7.y, r1.y, l(0), g2.xxxx
  endif 
  ilt r3.z, r2.z, r7.x
  ilt r4.x, r3.y, r7.y
  and r3.z, r3.z, r4.x
  mov r4.x, r2.z
  mov r4.y, r3.y
  mov r5.w, l(0)
  mov r6.y, r3.z
  loop 
    breakc_z r6.y
    imad r6.z, vThreadIDInGroup.x, l(640), r4.x
    imad r6.w, vThreadIDInGroup.x, l(640), r4.y
    ld_structured r8.xyzw, r6.z, l(0), g0.xyzw
    ld_structured r9.xyzw, r6.w, l(0), g0.xyzw
    add r6.z, -r8.w, r9.w
    lt r6.w, |r6.z|, l(0.100000)
    add r7.z, r8.y, r8.x
    add r7.z, r8.z, r7.z
    add r7.w, r9.y, r9.x
    add r7.w, r9.z, r7.w
    add r7.z, -r7.w, r7.z
    mul r7.z, r1.z, r7.z
    movc r6.z, r6.w, r7.z, r6.z
    lt r6.z, r6.z, l(0.000000)
    if_z r6.z
      iadd r6.z, r5.w, l(1)
      iadd r4.x, r4.x, l(1)
      mov r9.xyzw, r8.xyzw
    else 
      iadd r6.z, r5.w, l(1)
      iadd r4.y, r4.y, l(1)
    endif 
    mov x3[r5.w + 0].xyzw, r9.xyzw
    ilt r6.w, r4.x, r7.x
    ilt r7.z, r4.y, r7.y
    and r6.y, r6.w, r7.z
    mov r5.w, r6.z
  endloop 
  ilt r3.z, r4.x, r7.x
  mov r6.y, r4.x
  mov r6.z, r5.w
  mov r6.w, r3.z
  loop 
    breakc_z r6.w
    iadd r7.zw, r6.zzzy, l(0, 0, 1, 1)
    imad r8.x, vThreadIDInGroup.x, l(640), r6.y
    ld_structured r8.xyzw, r8.x, l(0), g0.xyzw
    mov x3[r6.z + 0].xyzw, r8.xyzw
    ilt r6.w, r7.w, r7.x
    mov r6.yz, r7.wwzw
  endloop 
  ilt r3.z, r4.y, r7.y
  mov r6.y, r4.y
  mov r6.w, r6.z
  mov r7.x, r3.z
  loop 
    breakc_z r7.x
    iadd r7.zw, r6.wwwy, l(0, 0, 1, 1)
    imad r8.x, vThreadIDInGroup.x, l(640), r6.y
    ld_structured r8.xyzw, r8.x, l(0), g0.xyzw
    mov x3[r6.w + 0].xyzw, r8.xyzw
    ilt r7.x, r7.w, r7.y
    mov r6.yw, r7.wwwz
  endloop 
  sync_g_t
  iadd r2.z, r2.z, r3.y
  utof r2.w, r2.w
  mad r2.w, r3.x, l(0.500000), r2.w
  itof r2.z, r2.z
  mad r2.z, -r2.w, l(40.000000), r2.z
  ftoi r2.z, r2.z
  ilt r2.w, l(0), r6.w
  mov r3.x, l(0)
  mov r3.y, r2.w
  loop 
    breakc_z r3.y
    iadd r3.z, r2.z, r3.x
    imad r3.z, vThreadIDInGroup.x, l(640), r3.z
    mov r7.xyzw, x3[r3.x + 0].xyzw
    store_structured g0.xyzw, r3.z, l(0), r7.xyzw
    iadd r3.x, r3.x, l(1)
    ilt r3.y, r3.x, r6.w
  endloop 
  ult r2.x, r1.w, l(8)
  mov r1.w, r2.y
endloop 
sync_g_t
utof r0.y, vThreadID.x
ftoi r1.x, r0.y
mov r0.yz, l(0,0,-1,0)
loop 
  breakc_z r0.z
  iadd r0.w, r0.y, r0.x
  imad r2.x, vThreadIDInGroup.x, l(640), r0.w
  ld_structured r2.y, r2.x, l(12), g0.xxxx
  ge r2.z, r2.y, -r2.y
  movc r2.z, r2.z, l(1.000000), l(-1.000000)
  mul r2.y, r2.z, r2.y
  frc r2.y, r2.y
  mul r3.w, r2.y, r2.z
  store_structured g0.x, r2.x, l(12), r3.w
  utof r0.w, r0.w
  ftoi r1.yzw, r0.wwww
  ld_structured r3.xyz, r2.x, l(0), g0.xyzx
  store_uav_typed u0.xyzw, r1.xyzw, r3.xyzw
  iadd r0.y, r0.y, l(1)
  ult r0.z, r0.y, l(40)
endloop 
ret 
// Approximately 634 instruction slots used
