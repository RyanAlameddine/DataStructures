
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Core
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Trees
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 05 54 72 65 65 73 00 00 )                   // ...Trees..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 05 54 72 65 65 73 00 00 )                   // ...Trees..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 37 00 00 )                            //  2017..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 34 39 36 30 32 37 33 62 2D 33 34 37 35   // ..$4960273b-3475
                                                                                                  2D 34 62 33 37 2D 38 38 62 32 2D 37 64 35 65 62   // -4b37-88b2-7d5eb
                                                                                                  31 30 32 34 62 30 62 00 00 )                      // 1024b0b..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module Trees.exe
// MVID: {AF1D0F49-ED8A-46D0-B271-DEBB0B8B48FC}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00020003    //  ILONLY 32BITPREFERRED
// Image base: 0x049F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Trees.RedBlackTree
       extends [mscorlib]System.Object
{
  .field public static int32 highestId
  .field private class Trees.RBNode root
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [mscorlib]System.Object::.ctor()
    IL_000d:  nop
    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldnull
    IL_0011:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0016:  stfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_001b:  ret
  } // end of method RedBlackTree::.ctor

  .method public hidebysig instance string 
          InOrderTraverse() cil managed
  {
    // Code size       524 (0x20c)
    .maxstack  3
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.RBNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.RBNode previous,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] bool V_14,
             [15] bool V_15)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.RBNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_001f:  stloc.2
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.3
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.s    finishedLeft
    IL_0025:  br         IL_01f7

    IL_002a:  nop
    IL_002b:  ldloc.s    finishedLeft
    IL_002d:  ldc.i4.0
    IL_002e:  ceq
    IL_0030:  stloc.s    V_5
    IL_0032:  ldloc.s    V_5
    IL_0034:  brfalse.s  IL_006c

    IL_0036:  nop
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_003d:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0042:  ldnull
    IL_0043:  ceq
    IL_0045:  stloc.s    V_6
    IL_0047:  ldloc.s    V_6
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  nop
    IL_004c:  ldc.i4.1
    IL_004d:  stloc.s    finishedLeft
    IL_004f:  nop
    IL_0050:  br.s       IL_0066

    IL_0052:  nop
    IL_0053:  ldloc.1
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_005a:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_005f:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_0064:  nop
    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  br         IL_01f6

    IL_006c:  nop
    IL_006d:  ldnull
    IL_006e:  stloc.s    previous
    IL_0070:  br         IL_0162

    IL_0075:  nop
    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_007c:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0087:  bne.un.s   IL_00a3

    IL_0089:  ldloc.1
    IL_008a:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_008f:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0094:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0099:  ldloc.1
    IL_009a:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_009f:  ceq
    IL_00a1:  br.s       IL_00a4

    IL_00a3:  ldc.i4.0
    IL_00a4:  stloc.s    V_8
    IL_00a6:  ldloc.s    V_8
    IL_00a8:  brfalse.s  IL_00ce

    IL_00aa:  nop
    IL_00ab:  ldc.i4.1
    IL_00ac:  stloc.3
    IL_00ad:  ldloc.0
    IL_00ae:  ldloc.0
    IL_00af:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00b4:  ldc.i4.2
    IL_00b5:  sub
    IL_00b6:  ldc.i4.2
    IL_00b7:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_00bc:  stloc.0
    IL_00bd:  ldloc.0
    IL_00be:  ldstr      "}"
    IL_00c3:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00c8:  stloc.0
    IL_00c9:  br         IL_018a

    IL_00ce:  ldloc.1
    IL_00cf:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_00d4:  stloc.s    previous
    IL_00d6:  ldloc.2
    IL_00d7:  ldloc.1
    IL_00d8:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_00dd:  ldfld      int32 Trees.RBNode::id
    IL_00e2:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_00e7:  ldc.i4.0
    IL_00e8:  ceq
    IL_00ea:  stloc.s    V_9
    IL_00ec:  ldloc.s    V_9
    IL_00ee:  brfalse.s  IL_0122

    IL_00f0:  nop
    IL_00f1:  ldloc.2
    IL_00f2:  ldloc.1
    IL_00f3:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_00f8:  ldfld      int32 Trees.RBNode::id
    IL_00fd:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0102:  nop
    IL_0103:  ldloc.0
    IL_0104:  ldloc.1
    IL_0105:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Pop()
    IL_010a:  ldfld      int32 Trees.RBNode::key
    IL_010f:  box        [mscorlib]System.Int32
    IL_0114:  ldstr      ", "
    IL_0119:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_011e:  stloc.0
    IL_011f:  nop
    IL_0120:  br.s       IL_012b

    IL_0122:  nop
    IL_0123:  ldloc.1
    IL_0124:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Pop()
    IL_0129:  pop
    IL_012a:  nop
    IL_012b:  ldloc.1
    IL_012c:  callvirt   instance int32 class Trees.Stack`1<class Trees.RBNode>::Count()
    IL_0131:  ldc.i4.0
    IL_0132:  ceq
    IL_0134:  stloc.s    V_10
    IL_0136:  ldloc.s    V_10
    IL_0138:  brfalse.s  IL_0161

    IL_013a:  nop
    IL_013b:  ldc.i4.1
    IL_013c:  stloc.3
    IL_013d:  ldloc.0
    IL_013e:  ldloc.0
    IL_013f:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0144:  ldc.i4.2
    IL_0145:  sub
    IL_0146:  ldc.i4.2
    IL_0147:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_014c:  stloc.0
    IL_014d:  ldloc.0
    IL_014e:  ldstr      "}"
    IL_0153:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0158:  stloc.0
    IL_0159:  ldloc.0
    IL_015a:  stloc.s    V_11
    IL_015c:  br         IL_0209

    IL_0161:  nop
    IL_0162:  ldloc.1
    IL_0163:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0168:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_016d:  brfalse.s  IL_0180

    IL_016f:  ldloc.1
    IL_0170:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0175:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_017a:  ldloc.s    previous
    IL_017c:  ceq
    IL_017e:  br.s       IL_0181

    IL_0180:  ldc.i4.1
    IL_0181:  stloc.s    V_12
    IL_0183:  ldloc.s    V_12
    IL_0185:  brtrue     IL_0075

    IL_018a:  ldloc.3
    IL_018b:  ldc.i4.0
    IL_018c:  ceq
    IL_018e:  stloc.s    V_13
    IL_0190:  ldloc.s    V_13
    IL_0192:  brfalse.s  IL_01e0

    IL_0194:  nop
    IL_0195:  ldloc.2
    IL_0196:  ldloc.1
    IL_0197:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_019c:  ldfld      int32 Trees.RBNode::id
    IL_01a1:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_01a6:  ldc.i4.0
    IL_01a7:  ceq
    IL_01a9:  stloc.s    V_14
    IL_01ab:  ldloc.s    V_14
    IL_01ad:  brfalse.s  IL_01df

    IL_01af:  nop
    IL_01b0:  ldloc.2
    IL_01b1:  ldloc.1
    IL_01b2:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01b7:  ldfld      int32 Trees.RBNode::id
    IL_01bc:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_01c1:  nop
    IL_01c2:  ldloc.0
    IL_01c3:  ldloc.1
    IL_01c4:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01c9:  ldfld      int32 Trees.RBNode::key
    IL_01ce:  box        [mscorlib]System.Int32
    IL_01d3:  ldstr      ", "
    IL_01d8:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_01dd:  stloc.0
    IL_01de:  nop
    IL_01df:  nop
    IL_01e0:  ldc.i4.0
    IL_01e1:  stloc.s    finishedLeft
    IL_01e3:  ldloc.1
    IL_01e4:  ldloc.1
    IL_01e5:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01ea:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01ef:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_01f4:  nop
    IL_01f5:  nop
    IL_01f6:  nop
    IL_01f7:  ldloc.3
    IL_01f8:  ldc.i4.0
    IL_01f9:  ceq
    IL_01fb:  stloc.s    V_15
    IL_01fd:  ldloc.s    V_15
    IL_01ff:  brtrue     IL_002a

    IL_0204:  ldloc.0
    IL_0205:  stloc.s    V_11
    IL_0207:  br.s       IL_0209

    IL_0209:  ldloc.s    V_11
    IL_020b:  ret
  } // end of method RedBlackTree::InOrderTraverse

  .method public hidebysig instance string 
          PreOrderTraverse() cil managed
  {
    // Code size       801 (0x321)
    .maxstack  4
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.RBNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] bool V_7,
             [8] class Trees.RBNode previous,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] bool V_14,
             [15] bool V_15,
             [16] bool V_16,
             [17] bool V_17,
             [18] bool V_18)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.RBNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  ldloc.0
    IL_001b:  ldloc.1
    IL_001c:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0021:  ldfld      int32 Trees.RBNode::key
    IL_0026:  box        [mscorlib]System.Int32
    IL_002b:  ldstr      ", "
    IL_0030:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0035:  stloc.0
    IL_0036:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_003b:  stloc.2
    IL_003c:  ldloc.2
    IL_003d:  ldloc.1
    IL_003e:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0043:  ldfld      int32 Trees.RBNode::id
    IL_0048:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_004d:  nop
    IL_004e:  ldc.i4.0
    IL_004f:  stloc.3
    IL_0050:  ldc.i4.0
    IL_0051:  stloc.s    finishedLeft
    IL_0053:  br         IL_030c

    IL_0058:  nop
    IL_0059:  ldloc.s    finishedLeft
    IL_005b:  ldc.i4.0
    IL_005c:  ceq
    IL_005e:  stloc.s    V_5
    IL_0060:  ldloc.s    V_5
    IL_0062:  brfalse    IL_00e7

    IL_0067:  nop
    IL_0068:  ldloc.1
    IL_0069:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_006e:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0073:  ldnull
    IL_0074:  ceq
    IL_0076:  stloc.s    V_6
    IL_0078:  ldloc.s    V_6
    IL_007a:  brfalse.s  IL_0083

    IL_007c:  nop
    IL_007d:  ldc.i4.1
    IL_007e:  stloc.s    finishedLeft
    IL_0080:  nop
    IL_0081:  br.s       IL_00e1

    IL_0083:  nop
    IL_0084:  ldloc.1
    IL_0085:  ldloc.1
    IL_0086:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_008b:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0090:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_0095:  nop
    IL_0096:  ldloc.2
    IL_0097:  ldloc.1
    IL_0098:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_009d:  ldfld      int32 Trees.RBNode::id
    IL_00a2:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_00a7:  ldc.i4.0
    IL_00a8:  ceq
    IL_00aa:  stloc.s    V_7
    IL_00ac:  ldloc.s    V_7
    IL_00ae:  brfalse.s  IL_00e0

    IL_00b0:  nop
    IL_00b1:  ldloc.2
    IL_00b2:  ldloc.1
    IL_00b3:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_00b8:  ldfld      int32 Trees.RBNode::id
    IL_00bd:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00c2:  nop
    IL_00c3:  ldloc.0
    IL_00c4:  ldloc.1
    IL_00c5:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_00ca:  ldfld      int32 Trees.RBNode::key
    IL_00cf:  box        [mscorlib]System.Int32
    IL_00d4:  ldstr      ", "
    IL_00d9:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00de:  stloc.0
    IL_00df:  nop
    IL_00e0:  nop
    IL_00e1:  nop
    IL_00e2:  br         IL_030b

    IL_00e7:  nop
    IL_00e8:  ldnull
    IL_00e9:  stloc.s    previous
    IL_00eb:  br         IL_01da

    IL_00f0:  nop
    IL_00f1:  ldloc.1
    IL_00f2:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_00f7:  stloc.s    previous
    IL_00f9:  ldloc.2
    IL_00fa:  ldloc.1
    IL_00fb:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0100:  ldfld      int32 Trees.RBNode::id
    IL_0105:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_010a:  ldc.i4.0
    IL_010b:  ceq
    IL_010d:  stloc.s    V_9
    IL_010f:  ldloc.s    V_9
    IL_0111:  brfalse.s  IL_0145

    IL_0113:  nop
    IL_0114:  ldloc.2
    IL_0115:  ldloc.1
    IL_0116:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_011b:  ldfld      int32 Trees.RBNode::id
    IL_0120:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0125:  nop
    IL_0126:  ldloc.0
    IL_0127:  ldloc.1
    IL_0128:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Pop()
    IL_012d:  ldfld      int32 Trees.RBNode::key
    IL_0132:  box        [mscorlib]System.Int32
    IL_0137:  ldstr      ", "
    IL_013c:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0141:  stloc.0
    IL_0142:  nop
    IL_0143:  br.s       IL_014e

    IL_0145:  nop
    IL_0146:  ldloc.1
    IL_0147:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Pop()
    IL_014c:  pop
    IL_014d:  nop
    IL_014e:  ldloc.1
    IL_014f:  callvirt   instance int32 class Trees.Stack`1<class Trees.RBNode>::Count()
    IL_0154:  ldc.i4.0
    IL_0155:  ceq
    IL_0157:  stloc.s    V_10
    IL_0159:  ldloc.s    V_10
    IL_015b:  brfalse.s  IL_0184

    IL_015d:  nop
    IL_015e:  ldc.i4.1
    IL_015f:  stloc.3
    IL_0160:  ldloc.0
    IL_0161:  ldloc.0
    IL_0162:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0167:  ldc.i4.2
    IL_0168:  sub
    IL_0169:  ldc.i4.2
    IL_016a:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_016f:  stloc.0
    IL_0170:  ldloc.0
    IL_0171:  ldstr      "}"
    IL_0176:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_017b:  stloc.0
    IL_017c:  ldloc.0
    IL_017d:  stloc.s    V_11
    IL_017f:  br         IL_031e

    IL_0184:  ldloc.1
    IL_0185:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_018a:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0195:  bne.un.s   IL_01b1

    IL_0197:  ldloc.1
    IL_0198:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_019d:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_01a2:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01a7:  ldloc.1
    IL_01a8:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01ad:  ceq
    IL_01af:  br.s       IL_01b2

    IL_01b1:  ldc.i4.0
    IL_01b2:  stloc.s    V_12
    IL_01b4:  ldloc.s    V_12
    IL_01b6:  brfalse.s  IL_01d9

    IL_01b8:  nop
    IL_01b9:  ldc.i4.1
    IL_01ba:  stloc.3
    IL_01bb:  ldloc.0
    IL_01bc:  ldloc.0
    IL_01bd:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_01c2:  ldc.i4.2
    IL_01c3:  sub
    IL_01c4:  ldc.i4.2
    IL_01c5:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_01ca:  stloc.0
    IL_01cb:  ldloc.0
    IL_01cc:  ldstr      "}"
    IL_01d1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01d6:  stloc.0
    IL_01d7:  br.s       IL_0202

    IL_01d9:  nop
    IL_01da:  ldloc.1
    IL_01db:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01e0:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01e5:  brfalse.s  IL_01f8

    IL_01e7:  ldloc.1
    IL_01e8:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01ed:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01f2:  ldloc.s    previous
    IL_01f4:  ceq
    IL_01f6:  br.s       IL_01f9

    IL_01f8:  ldc.i4.1
    IL_01f9:  stloc.s    V_13
    IL_01fb:  ldloc.s    V_13
    IL_01fd:  brtrue     IL_00f0

    IL_0202:  ldloc.3
    IL_0203:  ldc.i4.0
    IL_0204:  ceq
    IL_0206:  stloc.s    V_14
    IL_0208:  ldloc.s    V_14
    IL_020a:  brfalse.s  IL_0258

    IL_020c:  nop
    IL_020d:  ldloc.2
    IL_020e:  ldloc.1
    IL_020f:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0214:  ldfld      int32 Trees.RBNode::id
    IL_0219:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_021e:  ldc.i4.0
    IL_021f:  ceq
    IL_0221:  stloc.s    V_15
    IL_0223:  ldloc.s    V_15
    IL_0225:  brfalse.s  IL_0257

    IL_0227:  nop
    IL_0228:  ldloc.2
    IL_0229:  ldloc.1
    IL_022a:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_022f:  ldfld      int32 Trees.RBNode::id
    IL_0234:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0239:  nop
    IL_023a:  ldloc.0
    IL_023b:  ldloc.1
    IL_023c:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0241:  ldfld      int32 Trees.RBNode::key
    IL_0246:  box        [mscorlib]System.Int32
    IL_024b:  ldstr      ", "
    IL_0250:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0255:  stloc.0
    IL_0256:  nop
    IL_0257:  nop
    IL_0258:  ldc.i4.0
    IL_0259:  stloc.s    finishedLeft
    IL_025b:  ldloc.1
    IL_025c:  ldloc.1
    IL_025d:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0262:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0267:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_026c:  nop
    IL_026d:  ldloc.2
    IL_026e:  ldloc.1
    IL_026f:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0274:  ldfld      int32 Trees.RBNode::id
    IL_0279:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_027e:  ldc.i4.0
    IL_027f:  ceq
    IL_0281:  stloc.s    V_16
    IL_0283:  ldloc.s    V_16
    IL_0285:  brfalse    IL_030a

    IL_028a:  nop
    IL_028b:  ldloc.2
    IL_028c:  ldloc.1
    IL_028d:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0292:  ldfld      int32 Trees.RBNode::id
    IL_0297:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_029c:  nop
    IL_029d:  ldloc.3
    IL_029e:  stloc.s    V_17
    IL_02a0:  ldloc.s    V_17
    IL_02a2:  brfalse.s  IL_02eb

    IL_02a4:  nop
    IL_02a5:  ldloc.0
    IL_02a6:  ldloc.0
    IL_02a7:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_02ac:  ldc.i4.1
    IL_02ad:  sub
    IL_02ae:  ldc.i4.1
    IL_02af:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_02b4:  stloc.0
    IL_02b5:  ldc.i4.4
    IL_02b6:  newarr     [mscorlib]System.Object
    IL_02bb:  dup
    IL_02bc:  ldc.i4.0
    IL_02bd:  ldloc.0
    IL_02be:  stelem.ref
    IL_02bf:  dup
    IL_02c0:  ldc.i4.1
    IL_02c1:  ldstr      ", "
    IL_02c6:  stelem.ref
    IL_02c7:  dup
    IL_02c8:  ldc.i4.2
    IL_02c9:  ldloc.1
    IL_02ca:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_02cf:  ldfld      int32 Trees.RBNode::key
    IL_02d4:  box        [mscorlib]System.Int32
    IL_02d9:  stelem.ref
    IL_02da:  dup
    IL_02db:  ldc.i4.3
    IL_02dc:  ldstr      "}"
    IL_02e1:  stelem.ref
    IL_02e2:  call       string [mscorlib]System.String::Concat(object[])
    IL_02e7:  stloc.0
    IL_02e8:  nop
    IL_02e9:  br.s       IL_0309

    IL_02eb:  nop
    IL_02ec:  ldloc.0
    IL_02ed:  ldloc.1
    IL_02ee:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_02f3:  ldfld      int32 Trees.RBNode::key
    IL_02f8:  box        [mscorlib]System.Int32
    IL_02fd:  ldstr      ", "
    IL_0302:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0307:  stloc.0
    IL_0308:  nop
    IL_0309:  nop
    IL_030a:  nop
    IL_030b:  nop
    IL_030c:  ldloc.3
    IL_030d:  ldc.i4.0
    IL_030e:  ceq
    IL_0310:  stloc.s    V_18
    IL_0312:  ldloc.s    V_18
    IL_0314:  brtrue     IL_0058

    IL_0319:  ldloc.0
    IL_031a:  stloc.s    V_11
    IL_031c:  br.s       IL_031e

    IL_031e:  ldloc.s    V_11
    IL_0320:  ret
  } // end of method RedBlackTree::PreOrderTraverse

  .method public hidebysig instance string 
          PostOrderTraverse() cil managed
  {
    // Code size       491 (0x1eb)
    .maxstack  3
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.RBNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.RBNode previous,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11,
             [12] bool V_12,
             [13] bool V_13)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.RBNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_001f:  stloc.2
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.3
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.s    finishedLeft
    IL_0025:  br         IL_01d6

    IL_002a:  nop
    IL_002b:  ldloc.s    finishedLeft
    IL_002d:  ldc.i4.0
    IL_002e:  ceq
    IL_0030:  stloc.s    V_5
    IL_0032:  ldloc.s    V_5
    IL_0034:  brfalse.s  IL_006c

    IL_0036:  nop
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_003d:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0042:  ldnull
    IL_0043:  ceq
    IL_0045:  stloc.s    V_6
    IL_0047:  ldloc.s    V_6
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  nop
    IL_004c:  ldc.i4.1
    IL_004d:  stloc.s    finishedLeft
    IL_004f:  nop
    IL_0050:  br.s       IL_0066

    IL_0052:  nop
    IL_0053:  ldloc.1
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_005a:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_005f:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_0064:  nop
    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  br         IL_01d5

    IL_006c:  nop
    IL_006d:  ldnull
    IL_006e:  stloc.s    previous
    IL_0070:  br         IL_0197

    IL_0075:  nop
    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_007c:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0087:  bne.un.s   IL_00a3

    IL_0089:  ldloc.1
    IL_008a:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_008f:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0094:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0099:  ldloc.1
    IL_009a:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_009f:  ceq
    IL_00a1:  br.s       IL_00a4

    IL_00a3:  ldc.i4.0
    IL_00a4:  stloc.s    V_8
    IL_00a6:  ldloc.s    V_8
    IL_00a8:  brfalse.s  IL_0106

    IL_00aa:  nop
    IL_00ab:  ldc.i4.1
    IL_00ac:  stloc.3
    IL_00ad:  ldloc.0
    IL_00ae:  ldloc.1
    IL_00af:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_00b4:  ldfld      int32 Trees.RBNode::key
    IL_00b9:  box        [mscorlib]System.Int32
    IL_00be:  ldstr      ", "
    IL_00c3:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00c8:  stloc.0
    IL_00c9:  ldloc.0
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_00d0:  ldfld      int32 Trees.RBNode::key
    IL_00d5:  box        [mscorlib]System.Int32
    IL_00da:  ldstr      ", "
    IL_00df:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00e4:  stloc.0
    IL_00e5:  ldloc.0
    IL_00e6:  ldloc.0
    IL_00e7:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00ec:  ldc.i4.2
    IL_00ed:  sub
    IL_00ee:  ldc.i4.2
    IL_00ef:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_00f4:  stloc.0
    IL_00f5:  ldloc.0
    IL_00f6:  ldstr      "}"
    IL_00fb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0100:  stloc.0
    IL_0101:  br         IL_01bf

    IL_0106:  ldloc.1
    IL_0107:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_010c:  stloc.s    previous
    IL_010e:  ldloc.2
    IL_010f:  ldloc.1
    IL_0110:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0115:  ldfld      int32 Trees.RBNode::id
    IL_011a:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_011f:  ldc.i4.0
    IL_0120:  ceq
    IL_0122:  stloc.s    V_9
    IL_0124:  ldloc.s    V_9
    IL_0126:  brfalse.s  IL_015a

    IL_0128:  nop
    IL_0129:  ldloc.2
    IL_012a:  ldloc.1
    IL_012b:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_0130:  ldfld      int32 Trees.RBNode::id
    IL_0135:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_013a:  nop
    IL_013b:  ldloc.0
    IL_013c:  ldloc.1
    IL_013d:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Pop()
    IL_0142:  ldfld      int32 Trees.RBNode::key
    IL_0147:  box        [mscorlib]System.Int32
    IL_014c:  ldstr      ", "
    IL_0151:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0156:  stloc.0
    IL_0157:  nop
    IL_0158:  br.s       IL_0163

    IL_015a:  nop
    IL_015b:  ldloc.1
    IL_015c:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Pop()
    IL_0161:  pop
    IL_0162:  nop
    IL_0163:  ldloc.1
    IL_0164:  callvirt   instance int32 class Trees.Stack`1<class Trees.RBNode>::Count()
    IL_0169:  ldc.i4.0
    IL_016a:  ceq
    IL_016c:  stloc.s    V_10
    IL_016e:  ldloc.s    V_10
    IL_0170:  brfalse.s  IL_0196

    IL_0172:  nop
    IL_0173:  ldc.i4.1
    IL_0174:  stloc.3
    IL_0175:  ldloc.0
    IL_0176:  ldloc.0
    IL_0177:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_017c:  ldc.i4.2
    IL_017d:  sub
    IL_017e:  ldc.i4.2
    IL_017f:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0184:  stloc.0
    IL_0185:  ldloc.0
    IL_0186:  ldstr      "}"
    IL_018b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0190:  stloc.0
    IL_0191:  ldloc.0
    IL_0192:  stloc.s    V_11
    IL_0194:  br.s       IL_01e8

    IL_0196:  nop
    IL_0197:  ldloc.1
    IL_0198:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_019d:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01a2:  brfalse.s  IL_01b5

    IL_01a4:  ldloc.1
    IL_01a5:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01aa:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01af:  ldloc.s    previous
    IL_01b1:  ceq
    IL_01b3:  br.s       IL_01b6

    IL_01b5:  ldc.i4.1
    IL_01b6:  stloc.s    V_12
    IL_01b8:  ldloc.s    V_12
    IL_01ba:  brtrue     IL_0075

    IL_01bf:  ldc.i4.0
    IL_01c0:  stloc.s    finishedLeft
    IL_01c2:  ldloc.1
    IL_01c3:  ldloc.1
    IL_01c4:  callvirt   instance !0 class Trees.Stack`1<class Trees.RBNode>::Peek()
    IL_01c9:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01ce:  callvirt   instance void class Trees.Stack`1<class Trees.RBNode>::Push(!0)
    IL_01d3:  nop
    IL_01d4:  nop
    IL_01d5:  nop
    IL_01d6:  ldloc.3
    IL_01d7:  ldc.i4.0
    IL_01d8:  ceq
    IL_01da:  stloc.s    V_13
    IL_01dc:  ldloc.s    V_13
    IL_01de:  brtrue     IL_002a

    IL_01e3:  ldloc.0
    IL_01e4:  stloc.s    V_11
    IL_01e6:  br.s       IL_01e8

    IL_01e8:  ldloc.s    V_11
    IL_01ea:  ret
  } // end of method RedBlackTree::PostOrderTraverse

  .method public hidebysig instance string 
          LevelOrderTraverse() cil managed
  {
    // Code size       342 (0x156)
    .maxstack  3
    .locals init ([0] string description,
             [1] bool finished,
             [2] class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode> previousNodes,
             [3] class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode> currentNodes,
             [4] bool anyExist,
             [5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode> V_5,
             [6] class Trees.RBNode node,
             [7] bool V_7,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] bool V_11,
             [12] bool V_12,
             [13] string V_13)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::.ctor()
    IL_000e:  stloc.2
    IL_000f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::.ctor()
    IL_0014:  stloc.3
    IL_0015:  ldloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_001c:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0021:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0026:  stloc.0
    IL_0027:  ldloc.2
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_002e:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Add(!0)
    IL_0033:  nop
    IL_0034:  br         IL_0125

    IL_0039:  nop
    IL_003a:  ldc.i4.0
    IL_003b:  stloc.s    anyExist
    IL_003d:  nop
    IL_003e:  ldloc.2
    IL_003f:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::GetEnumerator()
    IL_0044:  stloc.s    V_5
    .try
    {
      IL_0046:  br         IL_00f0

      IL_004b:  ldloca.s   V_5
      IL_004d:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode>::get_Current()
      IL_0052:  stloc.s    node
      IL_0054:  nop
      IL_0055:  ldloc.s    node
      IL_0057:  ldfld      class Trees.RBNode Trees.RBNode::left
      IL_005c:  ldnull
      IL_005d:  cgt.un
      IL_005f:  stloc.s    V_7
      IL_0061:  ldloc.s    V_7
      IL_0063:  brfalse.s  IL_00a2

      IL_0065:  nop
      IL_0066:  ldc.i4.1
      IL_0067:  stloc.s    anyExist
      IL_0069:  ldloc.s    node
      IL_006b:  ldfld      class Trees.RBNode Trees.RBNode::left
      IL_0070:  ldfld      bool Trees.RBNode::NIL
      IL_0075:  ldc.i4.0
      IL_0076:  ceq
      IL_0078:  stloc.s    V_8
      IL_007a:  ldloc.s    V_8
      IL_007c:  brfalse.s  IL_0093

      IL_007e:  nop
      IL_007f:  ldloc.0
      IL_0080:  ldloc.s    node
      IL_0082:  ldfld      class Trees.RBNode Trees.RBNode::left
      IL_0087:  callvirt   instance string [mscorlib]System.Object::ToString()
      IL_008c:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0091:  stloc.0
      IL_0092:  nop
      IL_0093:  ldloc.3
      IL_0094:  ldloc.s    node
      IL_0096:  ldfld      class Trees.RBNode Trees.RBNode::left
      IL_009b:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Add(!0)
      IL_00a0:  nop
      IL_00a1:  nop
      IL_00a2:  ldloc.s    node
      IL_00a4:  ldfld      class Trees.RBNode Trees.RBNode::right
      IL_00a9:  ldnull
      IL_00aa:  cgt.un
      IL_00ac:  stloc.s    V_9
      IL_00ae:  ldloc.s    V_9
      IL_00b0:  brfalse.s  IL_00ef

      IL_00b2:  nop
      IL_00b3:  ldc.i4.1
      IL_00b4:  stloc.s    anyExist
      IL_00b6:  ldloc.s    node
      IL_00b8:  ldfld      class Trees.RBNode Trees.RBNode::right
      IL_00bd:  ldfld      bool Trees.RBNode::NIL
      IL_00c2:  ldc.i4.0
      IL_00c3:  ceq
      IL_00c5:  stloc.s    V_10
      IL_00c7:  ldloc.s    V_10
      IL_00c9:  brfalse.s  IL_00e0

      IL_00cb:  nop
      IL_00cc:  ldloc.0
      IL_00cd:  ldloc.s    node
      IL_00cf:  ldfld      class Trees.RBNode Trees.RBNode::right
      IL_00d4:  callvirt   instance string [mscorlib]System.Object::ToString()
      IL_00d9:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_00de:  stloc.0
      IL_00df:  nop
      IL_00e0:  ldloc.3
      IL_00e1:  ldloc.s    node
      IL_00e3:  ldfld      class Trees.RBNode Trees.RBNode::right
      IL_00e8:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Add(!0)
      IL_00ed:  nop
      IL_00ee:  nop
      IL_00ef:  nop
      IL_00f0:  ldloca.s   V_5
      IL_00f2:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode>::MoveNext()
      IL_00f7:  brtrue     IL_004b

      IL_00fc:  leave.s    IL_010d

    }  // end .try
    finally
    {
      IL_00fe:  ldloca.s   V_5
      IL_0100:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode>
      IL_0106:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_010b:  nop
      IL_010c:  endfinally
    }  // end handler
    IL_010d:  ldloc.3
    IL_010e:  stloc.2
    IL_010f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::.ctor()
    IL_0114:  stloc.3
    IL_0115:  ldloc.s    anyExist
    IL_0117:  ldc.i4.0
    IL_0118:  ceq
    IL_011a:  stloc.s    V_11
    IL_011c:  ldloc.s    V_11
    IL_011e:  brfalse.s  IL_0124

    IL_0120:  nop
    IL_0121:  ldc.i4.1
    IL_0122:  stloc.1
    IL_0123:  nop
    IL_0124:  nop
    IL_0125:  ldloc.1
    IL_0126:  ldc.i4.0
    IL_0127:  ceq
    IL_0129:  stloc.s    V_12
    IL_012b:  ldloc.s    V_12
    IL_012d:  brtrue     IL_0039

    IL_0132:  ldloc.0
    IL_0133:  ldloc.0
    IL_0134:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0139:  ldc.i4.2
    IL_013a:  sub
    IL_013b:  ldc.i4.2
    IL_013c:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0141:  stloc.0
    IL_0142:  ldloc.0
    IL_0143:  ldstr      "}"
    IL_0148:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_014d:  stloc.0
    IL_014e:  ldloc.0
    IL_014f:  stloc.s    V_13
    IL_0151:  br.s       IL_0153

    IL_0153:  ldloc.s    V_13
    IL_0155:  ret
  } // end of method RedBlackTree::LevelOrderTraverse

  .method public hidebysig instance class Trees.RBNode 
          Search(int32 key) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init ([0] class Trees.RBNode V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0009:  call       instance class Trees.RBNode Trees.RedBlackTree::BFS(int32,
                                                                             class Trees.RBNode)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method RedBlackTree::Search

  .method private hidebysig instance class Trees.RBNode 
          BFS(int32 key,
              class Trees.RBNode current) cil managed
  {
    // Code size       78 (0x4e)
    .maxstack  3
    .locals init ([0] class Trees.RBNode right,
             [1] class Trees.RBNode left,
             [2] bool V_2,
             [3] class Trees.RBNode V_3,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.2
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.2
    IL_0006:  ldloc.2
    IL_0007:  brfalse.s  IL_000d

    IL_0009:  ldnull
    IL_000a:  stloc.3
    IL_000b:  br.s       IL_004c

    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldfld      int32 Trees.RBNode::key
    IL_0014:  ceq
    IL_0016:  stloc.s    V_4
    IL_0018:  ldloc.s    V_4
    IL_001a:  brfalse.s  IL_0020

    IL_001c:  ldarg.2
    IL_001d:  stloc.3
    IL_001e:  br.s       IL_004c

    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0028:  call       instance class Trees.RBNode Trees.RedBlackTree::BFS(int32,
                                                                             class Trees.RBNode)
    IL_002d:  stloc.0
    IL_002e:  ldarg.0
    IL_002f:  ldarg.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0036:  call       instance class Trees.RBNode Trees.RedBlackTree::BFS(int32,
                                                                             class Trees.RBNode)
    IL_003b:  stloc.1
    IL_003c:  ldloc.0
    IL_003d:  brtrue.s   IL_0048

    IL_003f:  ldloc.1
    IL_0040:  brtrue.s   IL_0045

    IL_0042:  ldnull
    IL_0043:  br.s       IL_0046

    IL_0045:  ldloc.1
    IL_0046:  br.s       IL_0049

    IL_0048:  ldloc.0
    IL_0049:  stloc.3
    IL_004a:  br.s       IL_004c

    IL_004c:  ldloc.3
    IL_004d:  ret
  } // end of method RedBlackTree::BFS

  .method public hidebysig instance class Trees.RBNode 
          IterativeFind(int32 key) cil managed
  {
    // Code size       73 (0x49)
    .maxstack  2
    .locals init ([0] class Trees.RBNode current,
             [1] bool V_1,
             [2] bool V_2,
             [3] class Trees.RBNode V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_002d

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      int32 Trees.RBNode::key
    IL_0011:  ldarg.1
    IL_0012:  clt
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  brfalse.s  IL_0023

    IL_0018:  nop
    IL_0019:  ldloc.0
    IL_001a:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_001f:  stloc.0
    IL_0020:  nop
    IL_0021:  br.s       IL_002c

    IL_0023:  nop
    IL_0024:  ldloc.0
    IL_0025:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_002a:  stloc.0
    IL_002b:  nop
    IL_002c:  nop
    IL_002d:  ldloc.0
    IL_002e:  brfalse.s  IL_003e

    IL_0030:  ldloc.0
    IL_0031:  ldfld      int32 Trees.RBNode::key
    IL_0036:  ldarg.1
    IL_0037:  ceq
    IL_0039:  ldc.i4.0
    IL_003a:  ceq
    IL_003c:  br.s       IL_003f

    IL_003e:  ldc.i4.0
    IL_003f:  stloc.2
    IL_0040:  ldloc.2
    IL_0041:  brtrue.s   IL_000a

    IL_0043:  ldloc.0
    IL_0044:  stloc.3
    IL_0045:  br.s       IL_0047

    IL_0047:  ldloc.3
    IL_0048:  ret
  } // end of method RedBlackTree::IterativeFind

  .method public hidebysig instance class Trees.RBNode 
          Minimum() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init ([0] class Trees.RBNode current,
             [1] bool V_1,
             [2] class Trees.RBNode V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_0013

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0011:  stloc.0
    IL_0012:  nop
    IL_0013:  ldloc.0
    IL_0014:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0019:  ldnull
    IL_001a:  cgt.un
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brtrue.s   IL_000a

    IL_0020:  ldloc.0
    IL_0021:  stloc.2
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.2
    IL_0025:  ret
  } // end of method RedBlackTree::Minimum

  .method public hidebysig instance class Trees.RBNode 
          Maximum() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init ([0] class Trees.RBNode current,
             [1] bool V_1,
             [2] class Trees.RBNode V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_0013

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0011:  stloc.0
    IL_0012:  nop
    IL_0013:  ldloc.0
    IL_0014:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0019:  ldnull
    IL_001a:  cgt.un
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brtrue.s   IL_000a

    IL_0020:  ldloc.0
    IL_0021:  stloc.2
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.2
    IL_0025:  ret
  } // end of method RedBlackTree::Maximum

  .method private hidebysig instance void 
          InsertRuleCheck(class Trees.RBNode x) cil managed
  {
    // Code size       950 (0x3b6)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] class Trees.RBNode uncle,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.RBNode main,
             [8] class Trees.RBNode parent,
             [9] bool V_9,
             [10] bool V_10,
             [11] class Trees.RBNode V_11,
             [12] class Trees.RBNode V_12,
             [13] valuetype [mscorlib]System.ConsoleColor color,
             [14] bool V_14,
             [15] bool V_15,
             [16] bool V_16,
             [17] class Trees.RBNode V_17,
             [18] class Trees.RBNode V_18,
             [19] bool V_19,
             [20] bool V_20,
             [21] class Trees.RBNode V_21,
             [22] class Trees.RBNode V_22,
             [23] valuetype [mscorlib]System.ConsoleColor V_23,
             [24] bool V_24,
             [25] bool V_25)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0007:  brfalse.s  IL_001a

    IL_0009:  ldarg.1
    IL_000a:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_000f:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0014:  ldc.i4.s   12
    IL_0016:  ceq
    IL_0018:  br.s       IL_001b

    IL_001a:  ldc.i4.0
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  brfalse    IL_03a9

    IL_0022:  nop
    IL_0023:  ldnull
    IL_0024:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0029:  stloc.1
    IL_002a:  ldarg.1
    IL_002b:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0030:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0035:  ldnull
    IL_0036:  cgt.un
    IL_0038:  stloc.2
    IL_0039:  ldloc.2
    IL_003a:  brfalse.s  IL_0082

    IL_003c:  nop
    IL_003d:  ldarg.1
    IL_003e:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0043:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0048:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_004d:  ldarg.1
    IL_004e:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0053:  ceq
    IL_0055:  stloc.3
    IL_0056:  ldloc.3
    IL_0057:  brfalse.s  IL_006e

    IL_0059:  nop
    IL_005a:  ldarg.1
    IL_005b:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0060:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0065:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_006a:  stloc.1
    IL_006b:  nop
    IL_006c:  br.s       IL_0081

    IL_006e:  nop
    IL_006f:  ldarg.1
    IL_0070:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0075:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_007a:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_007f:  stloc.1
    IL_0080:  nop
    IL_0081:  nop
    IL_0082:  ldloc.1
    IL_0083:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0088:  ldc.i4.s   12
    IL_008a:  ceq
    IL_008c:  stloc.s    V_4
    IL_008e:  ldloc.s    V_4
    IL_0090:  brfalse.s  IL_00d0

    IL_0092:  nop
    IL_0093:  ldarg.1
    IL_0094:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0099:  ldc.i4.0
    IL_009a:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_009f:  ldloc.1
    IL_00a0:  ldc.i4.0
    IL_00a1:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_00a6:  ldarg.1
    IL_00a7:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00ac:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00b1:  ldc.i4.s   12
    IL_00b3:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_00b8:  ldarg.0
    IL_00b9:  ldarg.1
    IL_00ba:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00bf:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00c4:  call       instance void Trees.RedBlackTree::InsertRuleCheck(class Trees.RBNode)
    IL_00c9:  nop
    IL_00ca:  nop
    IL_00cb:  br         IL_03a8

    IL_00d0:  nop
    IL_00d1:  ldarg.1
    IL_00d2:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00d7:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00dc:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00e1:  ldarg.1
    IL_00e2:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00e7:  ceq
    IL_00e9:  stloc.s    V_5
    IL_00eb:  ldloc.s    V_5
    IL_00ed:  brfalse    IL_024f

    IL_00f2:  nop
    IL_00f3:  ldarg.1
    IL_00f4:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00f9:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_00fe:  ldarg.1
    IL_00ff:  ceq
    IL_0101:  stloc.s    V_6
    IL_0103:  ldloc.s    V_6
    IL_0105:  brfalse.s  IL_017f

    IL_0107:  nop
    IL_0108:  ldarg.1
    IL_0109:  stloc.s    main
    IL_010b:  ldloc.s    main
    IL_010d:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0112:  stloc.s    parent
    IL_0114:  ldloc.s    parent
    IL_0116:  ldloc.s    main
    IL_0118:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_011d:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0122:  ldloc.s    main
    IL_0124:  ldloc.s    parent
    IL_0126:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_012b:  ldloc.s    main
    IL_012d:  ldloc.s    parent
    IL_012f:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0134:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0139:  ldloc.s    parent
    IL_013b:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0140:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0145:  ldloc.s    parent
    IL_0147:  ceq
    IL_0149:  stloc.s    V_9
    IL_014b:  ldloc.s    V_9
    IL_014d:  brfalse.s  IL_015f

    IL_014f:  ldloc.s    parent
    IL_0151:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0156:  ldloc.s    main
    IL_0158:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_015d:  br.s       IL_016d

    IL_015f:  ldloc.s    parent
    IL_0161:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0166:  ldloc.s    main
    IL_0168:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_016d:  ldloc.s    parent
    IL_016f:  ldloc.s    main
    IL_0171:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0176:  ldarg.1
    IL_0177:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_017c:  starg.s    x
    IL_017e:  nop
    IL_017f:  ldarg.1
    IL_0180:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0185:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_018a:  ldarg.1
    IL_018b:  ceq
    IL_018d:  stloc.s    V_10
    IL_018f:  ldloc.s    V_10
    IL_0191:  brfalse    IL_0249

    IL_0196:  nop
    IL_0197:  ldarg.1
    IL_0198:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_019d:  stloc.s    V_11
    IL_019f:  ldloc.s    V_11
    IL_01a1:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_01a6:  stloc.s    V_12
    IL_01a8:  ldloc.s    V_12
    IL_01aa:  ldloc.s    V_11
    IL_01ac:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01b1:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_01b6:  ldloc.s    V_11
    IL_01b8:  ldloc.s    V_12
    IL_01ba:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_01bf:  ldloc.s    V_11
    IL_01c1:  ldloc.s    V_12
    IL_01c3:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_01c8:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_01cd:  ldloc.s    V_12
    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_01d5:  ceq
    IL_01d7:  stloc.s    V_14
    IL_01d9:  ldloc.s    V_14
    IL_01db:  brfalse.s  IL_01e9

    IL_01dd:  nop
    IL_01de:  ldarg.0
    IL_01df:  ldloc.s    V_11
    IL_01e1:  stfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_01e6:  nop
    IL_01e7:  br.s       IL_021f

    IL_01e9:  nop
    IL_01ea:  ldloc.s    V_12
    IL_01ec:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_01f1:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_01f6:  ldloc.s    V_12
    IL_01f8:  ceq
    IL_01fa:  stloc.s    V_15
    IL_01fc:  ldloc.s    V_15
    IL_01fe:  brfalse.s  IL_0210

    IL_0200:  ldloc.s    V_12
    IL_0202:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0207:  ldloc.s    V_11
    IL_0209:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_020e:  br.s       IL_021e

    IL_0210:  ldloc.s    V_12
    IL_0212:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0217:  ldloc.s    V_11
    IL_0219:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_021e:  nop
    IL_021f:  ldloc.s    V_12
    IL_0221:  ldloc.s    V_11
    IL_0223:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0228:  ldloc.s    V_11
    IL_022a:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_022f:  stloc.s    color
    IL_0231:  ldloc.s    V_11
    IL_0233:  ldloc.s    V_12
    IL_0235:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_023a:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_023f:  ldloc.s    V_12
    IL_0241:  ldloc.s    color
    IL_0243:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0248:  nop
    IL_0249:  nop
    IL_024a:  br         IL_03a7

    IL_024f:  nop
    IL_0250:  ldarg.1
    IL_0251:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0256:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_025b:  ldarg.1
    IL_025c:  ceq
    IL_025e:  stloc.s    V_16
    IL_0260:  ldloc.s    V_16
    IL_0262:  brfalse.s  IL_02dc

    IL_0264:  nop
    IL_0265:  ldarg.1
    IL_0266:  stloc.s    V_17
    IL_0268:  ldloc.s    V_17
    IL_026a:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_026f:  stloc.s    V_18
    IL_0271:  ldloc.s    V_18
    IL_0273:  ldloc.s    V_17
    IL_0275:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_027a:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_027f:  ldloc.s    V_17
    IL_0281:  ldloc.s    V_18
    IL_0283:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0288:  ldloc.s    V_17
    IL_028a:  ldloc.s    V_18
    IL_028c:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0291:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0296:  ldloc.s    V_18
    IL_0298:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_029d:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_02a2:  ldloc.s    V_18
    IL_02a4:  ceq
    IL_02a6:  stloc.s    V_19
    IL_02a8:  ldloc.s    V_19
    IL_02aa:  brfalse.s  IL_02bc

    IL_02ac:  ldloc.s    V_18
    IL_02ae:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_02b3:  ldloc.s    V_17
    IL_02b5:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_02ba:  br.s       IL_02ca

    IL_02bc:  ldloc.s    V_18
    IL_02be:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_02c3:  ldloc.s    V_17
    IL_02c5:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_02ca:  ldloc.s    V_18
    IL_02cc:  ldloc.s    V_17
    IL_02ce:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_02d3:  ldarg.1
    IL_02d4:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_02d9:  starg.s    x
    IL_02db:  nop
    IL_02dc:  ldarg.1
    IL_02dd:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_02e2:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_02e7:  ldarg.1
    IL_02e8:  ceq
    IL_02ea:  stloc.s    V_20
    IL_02ec:  ldloc.s    V_20
    IL_02ee:  brfalse    IL_03a6

    IL_02f3:  nop
    IL_02f4:  ldarg.1
    IL_02f5:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_02fa:  stloc.s    V_21
    IL_02fc:  ldloc.s    V_21
    IL_02fe:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0303:  stloc.s    V_22
    IL_0305:  ldloc.s    V_22
    IL_0307:  ldloc.s    V_21
    IL_0309:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_030e:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0313:  ldloc.s    V_21
    IL_0315:  ldloc.s    V_22
    IL_0317:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_031c:  ldloc.s    V_21
    IL_031e:  ldloc.s    V_22
    IL_0320:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0325:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_032a:  ldloc.s    V_22
    IL_032c:  ldarg.0
    IL_032d:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0332:  ceq
    IL_0334:  stloc.s    V_24
    IL_0336:  ldloc.s    V_24
    IL_0338:  brfalse.s  IL_0346

    IL_033a:  nop
    IL_033b:  ldarg.0
    IL_033c:  ldloc.s    V_21
    IL_033e:  stfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0343:  nop
    IL_0344:  br.s       IL_037c

    IL_0346:  nop
    IL_0347:  ldloc.s    V_22
    IL_0349:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_034e:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0353:  ldloc.s    V_22
    IL_0355:  ceq
    IL_0357:  stloc.s    V_25
    IL_0359:  ldloc.s    V_25
    IL_035b:  brfalse.s  IL_036d

    IL_035d:  ldloc.s    V_22
    IL_035f:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0364:  ldloc.s    V_21
    IL_0366:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_036b:  br.s       IL_037b

    IL_036d:  ldloc.s    V_22
    IL_036f:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0374:  ldloc.s    V_21
    IL_0376:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_037b:  nop
    IL_037c:  ldloc.s    V_22
    IL_037e:  ldloc.s    V_21
    IL_0380:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0385:  ldloc.s    V_21
    IL_0387:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_038c:  stloc.s    V_23
    IL_038e:  ldloc.s    V_21
    IL_0390:  ldloc.s    V_22
    IL_0392:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0397:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_039c:  ldloc.s    V_22
    IL_039e:  ldloc.s    V_23
    IL_03a0:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_03a5:  nop
    IL_03a6:  nop
    IL_03a7:  nop
    IL_03a8:  nop
    IL_03a9:  ldarg.0
    IL_03aa:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_03af:  ldc.i4.0
    IL_03b0:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_03b5:  ret
  } // end of method RedBlackTree::InsertRuleCheck

  .method public hidebysig instance void 
          Insert(class Trees.RBNode newNode) cil managed
  {
    // Code size       348 (0x15c)
    .maxstack  2
    .locals init ([0] class Trees.RBNode current,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldfld      bool Trees.RBNode::NIL
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  brfalse.s  IL_0050

    IL_0012:  nop
    IL_0013:  ldarg.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_001a:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0025:  ldarg.1
    IL_0026:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_002b:  ldarg.1
    IL_002c:  ldarg.1
    IL_002d:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0032:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0037:  ldarg.0
    IL_0038:  ldarg.1
    IL_0039:  stfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_0044:  ldc.i4.0
    IL_0045:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_004a:  nop
    IL_004b:  br         IL_015b

    IL_0050:  nop
    IL_0051:  br         IL_0153

    IL_0056:  nop
    IL_0057:  ldloc.0
    IL_0058:  ldfld      int32 Trees.RBNode::key
    IL_005d:  ldarg.1
    IL_005e:  ldfld      int32 Trees.RBNode::key
    IL_0063:  cgt
    IL_0065:  stloc.2
    IL_0066:  ldloc.2
    IL_0067:  brfalse.s  IL_00df

    IL_0069:  nop
    IL_006a:  ldloc.0
    IL_006b:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0070:  ldfld      bool Trees.RBNode::NIL
    IL_0075:  stloc.3
    IL_0076:  ldloc.3
    IL_0077:  brfalse.s  IL_00d3

    IL_0079:  nop
    IL_007a:  ldloc.0
    IL_007b:  ldarg.1
    IL_007c:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_0081:  ldarg.1
    IL_0082:  ldloc.0
    IL_0083:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0088:  ldloc.0
    IL_0089:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_008e:  ldloc.0
    IL_008f:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0094:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0099:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_009e:  ldloc.0
    IL_009f:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00a4:  ldloc.0
    IL_00a5:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00aa:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_00af:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_00b4:  ldloc.0
    IL_00b5:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00ba:  ldc.i4.s   12
    IL_00bc:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_00c1:  ldarg.0
    IL_00c2:  ldloc.0
    IL_00c3:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00c8:  call       instance void Trees.RedBlackTree::InsertRuleCheck(class Trees.RBNode)
    IL_00cd:  nop
    IL_00ce:  br         IL_015b

    IL_00d3:  nop
    IL_00d4:  ldloc.0
    IL_00d5:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00da:  stloc.0
    IL_00db:  nop
    IL_00dc:  nop
    IL_00dd:  br.s       IL_0152

    IL_00df:  nop
    IL_00e0:  ldloc.0
    IL_00e1:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_00e6:  ldfld      bool Trees.RBNode::NIL
    IL_00eb:  stloc.s    V_4
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  brfalse.s  IL_0148

    IL_00f1:  nop
    IL_00f2:  ldloc.0
    IL_00f3:  ldarg.1
    IL_00f4:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_00f9:  ldarg.1
    IL_00fa:  ldloc.0
    IL_00fb:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0100:  ldloc.0
    IL_0101:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0106:  ldloc.0
    IL_0107:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_010c:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0111:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0116:  ldloc.0
    IL_0117:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_011c:  ldloc.0
    IL_011d:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0122:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0127:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_012c:  ldloc.0
    IL_012d:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0132:  ldc.i4.s   12
    IL_0134:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0139:  ldarg.0
    IL_013a:  ldloc.0
    IL_013b:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0140:  call       instance void Trees.RedBlackTree::InsertRuleCheck(class Trees.RBNode)
    IL_0145:  nop
    IL_0146:  br.s       IL_015b

    IL_0148:  nop
    IL_0149:  ldloc.0
    IL_014a:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_014f:  stloc.0
    IL_0150:  nop
    IL_0151:  nop
    IL_0152:  nop
    IL_0153:  ldc.i4.1
    IL_0154:  stloc.s    V_5
    IL_0156:  br         IL_0056

    IL_015b:  ret
  } // end of method RedBlackTree::Insert

  .method public hidebysig instance void 
          Delete(class Trees.RBNode v) cil managed
  {
    // Code size       433 (0x1b1)
    .maxstack  3
    .locals init ([0] class Trees.RBNode u,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.RBNode current,
             [8] bool V_8)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance bool Trees.RBNode::isLeaf()
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  brfalse.s  IL_006e

    IL_000b:  nop
    IL_000c:  ldarg.1
    IL_000d:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0012:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0017:  ldarg.1
    IL_0018:  ceq
    IL_001a:  stloc.2
    IL_001b:  ldloc.2
    IL_001c:  brfalse.s  IL_0044

    IL_001e:  nop
    IL_001f:  ldarg.1
    IL_0020:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0025:  ldarg.1
    IL_0026:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_002b:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0030:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0035:  ldarg.1
    IL_0036:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_003b:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0040:  stloc.0
    IL_0041:  nop
    IL_0042:  br.s       IL_0068

    IL_0044:  nop
    IL_0045:  ldarg.1
    IL_0046:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_004b:  ldarg.1
    IL_004c:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0051:  newobj     instance void Trees.RBNode::.ctor(class Trees.RBNode)
    IL_0056:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_005b:  ldarg.1
    IL_005c:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0061:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0066:  stloc.0
    IL_0067:  nop
    IL_0068:  nop
    IL_0069:  br         IL_01a7

    IL_006e:  ldarg.1
    IL_006f:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0074:  ldfld      bool Trees.RBNode::NIL
    IL_0079:  stloc.3
    IL_007a:  ldloc.3
    IL_007b:  brfalse.s  IL_00e9

    IL_007d:  nop
    IL_007e:  ldarg.1
    IL_007f:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0084:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0089:  ldarg.1
    IL_008a:  ceq
    IL_008c:  stloc.s    V_4
    IL_008e:  ldloc.s    V_4
    IL_0090:  brfalse.s  IL_00b8

    IL_0092:  nop
    IL_0093:  ldarg.1
    IL_0094:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0099:  ldarg.1
    IL_009a:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_009f:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_00a4:  ldarg.1
    IL_00a5:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00aa:  ldarg.1
    IL_00ab:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00b0:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_00b5:  nop
    IL_00b6:  br.s       IL_00dc

    IL_00b8:  nop
    IL_00b9:  ldarg.1
    IL_00ba:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00bf:  ldarg.1
    IL_00c0:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00c5:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_00ca:  ldarg.1
    IL_00cb:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00d0:  ldarg.1
    IL_00d1:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_00d6:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_00db:  nop
    IL_00dc:  ldarg.1
    IL_00dd:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00e2:  stloc.0
    IL_00e3:  nop
    IL_00e4:  br         IL_01a7

    IL_00e9:  ldarg.1
    IL_00ea:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_00ef:  ldfld      bool Trees.RBNode::NIL
    IL_00f4:  stloc.s    V_5
    IL_00f6:  ldloc.s    V_5
    IL_00f8:  brfalse.s  IL_0163

    IL_00fa:  nop
    IL_00fb:  ldarg.1
    IL_00fc:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0101:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0106:  ldarg.1
    IL_0107:  ceq
    IL_0109:  stloc.s    V_6
    IL_010b:  ldloc.s    V_6
    IL_010d:  brfalse.s  IL_0135

    IL_010f:  nop
    IL_0110:  ldarg.1
    IL_0111:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0116:  ldarg.1
    IL_0117:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_011c:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0121:  ldarg.1
    IL_0122:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0127:  ldarg.1
    IL_0128:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_012d:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0132:  nop
    IL_0133:  br.s       IL_0159

    IL_0135:  nop
    IL_0136:  ldarg.1
    IL_0137:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_013c:  ldarg.1
    IL_013d:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0142:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_0147:  ldarg.1
    IL_0148:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_014d:  ldarg.1
    IL_014e:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0153:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0158:  nop
    IL_0159:  ldarg.1
    IL_015a:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_015f:  stloc.0
    IL_0160:  nop
    IL_0161:  br.s       IL_01a7

    IL_0163:  nop
    IL_0164:  ldarg.1
    IL_0165:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_016a:  stloc.s    current
    IL_016c:  br.s       IL_0179

    IL_016e:  nop
    IL_016f:  ldloc.s    current
    IL_0171:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0176:  stloc.s    current
    IL_0178:  nop
    IL_0179:  ldarg.1
    IL_017a:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_017f:  ldfld      bool Trees.RBNode::NIL
    IL_0184:  ldc.i4.0
    IL_0185:  ceq
    IL_0187:  stloc.s    V_8
    IL_0189:  ldloc.s    V_8
    IL_018b:  brtrue.s   IL_016e

    IL_018d:  ldloc.s    current
    IL_018f:  stloc.0
    IL_0190:  ldarg.1
    IL_0191:  ldloc.s    current
    IL_0193:  ldfld      int32 Trees.RBNode::key
    IL_0198:  stfld      int32 Trees.RBNode::key
    IL_019d:  ldarg.0
    IL_019e:  ldloc.s    current
    IL_01a0:  call       instance void Trees.RedBlackTree::Delete(class Trees.RBNode)
    IL_01a5:  nop
    IL_01a6:  nop
    IL_01a7:  ldarg.0
    IL_01a8:  ldloc.0
    IL_01a9:  ldarg.1
    IL_01aa:  call       instance void Trees.RedBlackTree::DeleteRuleCheck(class Trees.RBNode,
                                                                           class Trees.RBNode)
    IL_01af:  nop
    IL_01b0:  ret
  } // end of method RedBlackTree::Delete

  .method private hidebysig instance void 
          DeleteRuleCheck(class Trees.RBNode u,
                          class Trees.RBNode v) cil managed
  {
    // Code size       438 (0x1b6)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] class Trees.RBNode s,
             [2] class Trees.RBNode r,
             [3] class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode> layer,
             [4] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode> V_4,
             [5] class Trees.RBNode current,
             [6] bool V_6,
             [7] bool V_7,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] bool V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] bool V_14)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0007:  ldc.i4.s   12
    IL_0009:  beq.s      IL_0017

    IL_000b:  ldarg.2
    IL_000c:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0011:  ldc.i4.s   12
    IL_0013:  ceq
    IL_0015:  br.s       IL_0018

    IL_0017:  ldc.i4.1
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  brfalse.s  IL_002a

    IL_001c:  nop
    IL_001d:  ldarg.1
    IL_001e:  ldc.i4.0
    IL_001f:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0024:  nop
    IL_0025:  br         IL_01b5

    IL_002a:  nop
    IL_002b:  ldarg.2
    IL_002c:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0031:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0036:  ldarg.2
    IL_0037:  beq.s      IL_0046

    IL_0039:  ldarg.2
    IL_003a:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_003f:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0044:  br.s       IL_0051

    IL_0046:  ldarg.2
    IL_0047:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_004c:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0051:  stloc.1
    IL_0052:  ldnull
    IL_0053:  stloc.2
    IL_0054:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::.ctor()
    IL_0059:  stloc.3
    IL_005a:  ldloc.3
    IL_005b:  ldloc.1
    IL_005c:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0061:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Add(!0)
    IL_0066:  nop
    IL_0067:  ldloc.3
    IL_0068:  ldloc.1
    IL_0069:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_006e:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Add(!0)
    IL_0073:  nop
    IL_0074:  br         IL_011e

    IL_0079:  nop
    IL_007a:  nop
    IL_007b:  ldloc.3
    IL_007c:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::GetEnumerator()
    IL_0081:  stloc.s    V_4
    .try
    {
      IL_0083:  br.s       IL_00f2

      IL_0085:  ldloca.s   V_4
      IL_0087:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode>::get_Current()
      IL_008c:  stloc.s    current
      IL_008e:  nop
      IL_008f:  ldloc.s    current
      IL_0091:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
      IL_0096:  ldc.i4.s   12
      IL_0098:  ceq
      IL_009a:  stloc.s    V_6
      IL_009c:  ldloc.s    V_6
      IL_009e:  brfalse.s  IL_00a6

      IL_00a0:  nop
      IL_00a1:  ldloc.s    current
      IL_00a3:  stloc.2
      IL_00a4:  br.s       IL_00fb

      IL_00a6:  nop
      IL_00a7:  ldloc.3
      IL_00a8:  ldloc.s    current
      IL_00aa:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Remove(!0)
      IL_00af:  pop
      IL_00b0:  ldloc.s    current
      IL_00b2:  ldfld      class Trees.RBNode Trees.RBNode::left
      IL_00b7:  ldnull
      IL_00b8:  cgt.un
      IL_00ba:  stloc.s    V_7
      IL_00bc:  ldloc.s    V_7
      IL_00be:  brfalse.s  IL_00d0

      IL_00c0:  nop
      IL_00c1:  ldloc.3
      IL_00c2:  ldloc.s    current
      IL_00c4:  ldfld      class Trees.RBNode Trees.RBNode::left
      IL_00c9:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Add(!0)
      IL_00ce:  nop
      IL_00cf:  nop
      IL_00d0:  ldloc.s    current
      IL_00d2:  ldfld      class Trees.RBNode Trees.RBNode::right
      IL_00d7:  ldnull
      IL_00d8:  cgt.un
      IL_00da:  stloc.s    V_8
      IL_00dc:  ldloc.s    V_8
      IL_00de:  brfalse.s  IL_00f0

      IL_00e0:  nop
      IL_00e1:  ldloc.3
      IL_00e2:  ldloc.s    current
      IL_00e4:  ldfld      class Trees.RBNode Trees.RBNode::right
      IL_00e9:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::Add(!0)
      IL_00ee:  nop
      IL_00ef:  nop
      IL_00f0:  nop
      IL_00f1:  nop
      IL_00f2:  ldloca.s   V_4
      IL_00f4:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode>::MoveNext()
      IL_00f9:  brtrue.s   IL_0085

      IL_00fb:  leave.s    IL_010c

    }  // end .try
    finally
    {
      IL_00fd:  ldloca.s   V_4
      IL_00ff:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.RBNode>
      IL_0105:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_010a:  nop
      IL_010b:  endfinally
    }  // end handler
    IL_010c:  ldloc.3
    IL_010d:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.List`1<class Trees.RBNode>::get_Count()
    IL_0112:  ldc.i4.0
    IL_0113:  ceq
    IL_0115:  stloc.s    V_9
    IL_0117:  ldloc.s    V_9
    IL_0119:  brfalse.s  IL_011d

    IL_011b:  br.s       IL_012b

    IL_011d:  nop
    IL_011e:  ldloc.2
    IL_011f:  ldnull
    IL_0120:  ceq
    IL_0122:  stloc.s    V_10
    IL_0124:  ldloc.s    V_10
    IL_0126:  brtrue     IL_0079

    IL_012b:  ldloc.1
    IL_012c:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0131:  brtrue.s   IL_0139

    IL_0133:  ldloc.2
    IL_0134:  ldnull
    IL_0135:  cgt.un
    IL_0137:  br.s       IL_013a

    IL_0139:  ldc.i4.0
    IL_013a:  stloc.s    V_11
    IL_013c:  ldloc.s    V_11
    IL_013e:  brfalse.s  IL_014a

    IL_0140:  nop
    IL_0141:  ldarg.0
    IL_0142:  ldloc.1
    IL_0143:  call       instance void Trees.RedBlackTree::InsertRuleCheck(class Trees.RBNode)
    IL_0148:  nop
    IL_0149:  nop
    IL_014a:  ldloc.1
    IL_014b:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0150:  brtrue.s   IL_016f

    IL_0152:  ldloc.1
    IL_0153:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0158:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_015d:  brtrue.s   IL_016f

    IL_015f:  ldloc.1
    IL_0160:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_0165:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_016a:  ldc.i4.0
    IL_016b:  ceq
    IL_016d:  br.s       IL_0170

    IL_016f:  ldc.i4.0
    IL_0170:  stloc.s    V_12
    IL_0172:  ldloc.s    V_12
    IL_0174:  brfalse.s  IL_018c

    IL_0176:  nop
    IL_0177:  ldloc.1
    IL_0178:  ldc.i4.s   12
    IL_017a:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_017f:  ldloc.1
    IL_0180:  ldfld      class Trees.RBNode Trees.RBNode::parent
    IL_0185:  ldc.i4.1
    IL_0186:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_018b:  nop
    IL_018c:  ldloc.1
    IL_018d:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0192:  ldc.i4.s   12
    IL_0194:  ceq
    IL_0196:  stloc.s    V_13
    IL_0198:  ldloc.s    V_13
    IL_019a:  brfalse.s  IL_019e

    IL_019c:  nop
    IL_019d:  nop
    IL_019e:  ldarg.1
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      class Trees.RBNode Trees.RedBlackTree::root
    IL_01a5:  ceq
    IL_01a7:  stloc.s    V_14
    IL_01a9:  ldloc.s    V_14
    IL_01ab:  brfalse.s  IL_01b4

    IL_01ad:  ldarg.1
    IL_01ae:  ldc.i4.0
    IL_01af:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_01b4:  nop
    IL_01b5:  ret
  } // end of method RedBlackTree::DeleteRuleCheck

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     int32 Trees.RedBlackTree::highestId
    IL_0006:  ret
  } // end of method RedBlackTree::.cctor

} // end of class Trees.RedBlackTree

.class public auto ansi beforefieldinit Trees.RBNode
       extends [mscorlib]System.Object
{
  .field public int32 id
  .field public int32 key
  .field public class Trees.RBNode parent
  .field public class Trees.RBNode left
  .field public class Trees.RBNode right
  .field public valuetype [mscorlib]System.ConsoleColor color
  .field public bool NIL
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 key) cil managed
  {
    // Code size       70 (0x46)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_001c:  ldarg.0
    IL_001d:  ldc.i4.0
    IL_001e:  stfld      bool Trees.RBNode::NIL
    IL_0023:  ldarg.0
    IL_0024:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0029:  nop
    IL_002a:  nop
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  stfld      int32 Trees.RBNode::key
    IL_0032:  ldarg.0
    IL_0033:  ldsfld     int32 Trees.AVL::highestId
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  dup
    IL_003b:  stsfld     int32 Trees.AVL::highestId
    IL_0040:  stfld      int32 Trees.RBNode::id
    IL_0045:  ret
  } // end of method RBNode::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Trees.RBNode NILParent) cil managed
  {
    // Code size       65 (0x41)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  stfld      class Trees.RBNode Trees.RBNode::left
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      class Trees.RBNode Trees.RBNode::right
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_001c:  ldarg.0
    IL_001d:  ldc.i4.0
    IL_001e:  stfld      bool Trees.RBNode::NIL
    IL_0023:  ldarg.0
    IL_0024:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0029:  nop
    IL_002a:  nop
    IL_002b:  ldarg.0
    IL_002c:  ldc.i4.1
    IL_002d:  stfld      bool Trees.RBNode::NIL
    IL_0032:  ldarg.0
    IL_0033:  ldc.i4.0
    IL_0034:  stfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  stfld      class Trees.RBNode Trees.RBNode::parent
    IL_0040:  ret
  } // end of method RBNode::.ctor

  .method public hidebysig instance bool 
          isLeaf() cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.RBNode Trees.RBNode::left
    IL_0007:  brtrue.s   IL_0014

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Trees.RBNode Trees.RBNode::right
    IL_000f:  ldnull
    IL_0010:  ceq
    IL_0012:  br.s       IL_0015

    IL_0014:  ldc.i4.0
    IL_0015:  stloc.0
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method RBNode::isLeaf

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       39 (0x27)
    .maxstack  2
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype [mscorlib]System.ConsoleColor Trees.RBNode::color
    IL_0007:  call       void [mscorlib]System.Console::set_ForegroundColor(valuetype [mscorlib]System.ConsoleColor)
    IL_000c:  nop
    IL_000d:  ldstr      "RBNode: "
    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32 Trees.RBNode::key
    IL_0018:  box        [mscorlib]System.Int32
    IL_001d:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0022:  stloc.0
    IL_0023:  br.s       IL_0025

    IL_0025:  ldloc.0
    IL_0026:  ret
  } // end of method RBNode::ToString

} // end of class Trees.RBNode

.class public auto ansi beforefieldinit Trees.AVL
       extends [mscorlib]System.Object
{
  .field public static int32 highestId
  .field private class Trees.AVLNode root
  .method public hidebysig instance string 
          InOrderTraverse() cil managed
  {
    // Code size       524 (0x20c)
    .maxstack  3
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.AVLNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.AVLNode previous,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] bool V_14,
             [15] bool V_15)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.AVLNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_001f:  stloc.2
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.3
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.s    finishedLeft
    IL_0025:  br         IL_01f7

    IL_002a:  nop
    IL_002b:  ldloc.s    finishedLeft
    IL_002d:  ldc.i4.0
    IL_002e:  ceq
    IL_0030:  stloc.s    V_5
    IL_0032:  ldloc.s    V_5
    IL_0034:  brfalse.s  IL_006c

    IL_0036:  nop
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_003d:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0042:  ldnull
    IL_0043:  ceq
    IL_0045:  stloc.s    V_6
    IL_0047:  ldloc.s    V_6
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  nop
    IL_004c:  ldc.i4.1
    IL_004d:  stloc.s    finishedLeft
    IL_004f:  nop
    IL_0050:  br.s       IL_0066

    IL_0052:  nop
    IL_0053:  ldloc.1
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_005a:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_005f:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0064:  nop
    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  br         IL_01f6

    IL_006c:  nop
    IL_006d:  ldnull
    IL_006e:  stloc.s    previous
    IL_0070:  br         IL_0162

    IL_0075:  nop
    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_007c:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0087:  bne.un.s   IL_00a3

    IL_0089:  ldloc.1
    IL_008a:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_008f:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0094:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0099:  ldloc.1
    IL_009a:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_009f:  ceq
    IL_00a1:  br.s       IL_00a4

    IL_00a3:  ldc.i4.0
    IL_00a4:  stloc.s    V_8
    IL_00a6:  ldloc.s    V_8
    IL_00a8:  brfalse.s  IL_00ce

    IL_00aa:  nop
    IL_00ab:  ldc.i4.1
    IL_00ac:  stloc.3
    IL_00ad:  ldloc.0
    IL_00ae:  ldloc.0
    IL_00af:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00b4:  ldc.i4.2
    IL_00b5:  sub
    IL_00b6:  ldc.i4.2
    IL_00b7:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_00bc:  stloc.0
    IL_00bd:  ldloc.0
    IL_00be:  ldstr      "}"
    IL_00c3:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_00c8:  stloc.0
    IL_00c9:  br         IL_018a

    IL_00ce:  ldloc.1
    IL_00cf:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00d4:  stloc.s    previous
    IL_00d6:  ldloc.2
    IL_00d7:  ldloc.1
    IL_00d8:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00dd:  ldfld      int32 Trees.AVLNode::id
    IL_00e2:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_00e7:  ldc.i4.0
    IL_00e8:  ceq
    IL_00ea:  stloc.s    V_9
    IL_00ec:  ldloc.s    V_9
    IL_00ee:  brfalse.s  IL_0122

    IL_00f0:  nop
    IL_00f1:  ldloc.2
    IL_00f2:  ldloc.1
    IL_00f3:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00f8:  ldfld      int32 Trees.AVLNode::id
    IL_00fd:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0102:  nop
    IL_0103:  ldloc.0
    IL_0104:  ldloc.1
    IL_0105:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_010a:  ldfld      int32 Trees.AVLNode::key
    IL_010f:  box        [mscorlib]System.Int32
    IL_0114:  ldstr      ", "
    IL_0119:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_011e:  stloc.0
    IL_011f:  nop
    IL_0120:  br.s       IL_012b

    IL_0122:  nop
    IL_0123:  ldloc.1
    IL_0124:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_0129:  pop
    IL_012a:  nop
    IL_012b:  ldloc.1
    IL_012c:  callvirt   instance int32 class Trees.Stack`1<class Trees.AVLNode>::Count()
    IL_0131:  ldc.i4.0
    IL_0132:  ceq
    IL_0134:  stloc.s    V_10
    IL_0136:  ldloc.s    V_10
    IL_0138:  brfalse.s  IL_0161

    IL_013a:  nop
    IL_013b:  ldc.i4.1
    IL_013c:  stloc.3
    IL_013d:  ldloc.0
    IL_013e:  ldloc.0
    IL_013f:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0144:  ldc.i4.2
    IL_0145:  sub
    IL_0146:  ldc.i4.2
    IL_0147:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_014c:  stloc.0
    IL_014d:  ldloc.0
    IL_014e:  ldstr      "}"
    IL_0153:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0158:  stloc.0
    IL_0159:  ldloc.0
    IL_015a:  stloc.s    V_11
    IL_015c:  br         IL_0209

    IL_0161:  nop
    IL_0162:  ldloc.1
    IL_0163:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0168:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_016d:  brfalse.s  IL_0180

    IL_016f:  ldloc.1
    IL_0170:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0175:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_017a:  ldloc.s    previous
    IL_017c:  ceq
    IL_017e:  br.s       IL_0181

    IL_0180:  ldc.i4.1
    IL_0181:  stloc.s    V_12
    IL_0183:  ldloc.s    V_12
    IL_0185:  brtrue     IL_0075

    IL_018a:  ldloc.3
    IL_018b:  ldc.i4.0
    IL_018c:  ceq
    IL_018e:  stloc.s    V_13
    IL_0190:  ldloc.s    V_13
    IL_0192:  brfalse.s  IL_01e0

    IL_0194:  nop
    IL_0195:  ldloc.2
    IL_0196:  ldloc.1
    IL_0197:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_019c:  ldfld      int32 Trees.AVLNode::id
    IL_01a1:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_01a6:  ldc.i4.0
    IL_01a7:  ceq
    IL_01a9:  stloc.s    V_14
    IL_01ab:  ldloc.s    V_14
    IL_01ad:  brfalse.s  IL_01df

    IL_01af:  nop
    IL_01b0:  ldloc.2
    IL_01b1:  ldloc.1
    IL_01b2:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01b7:  ldfld      int32 Trees.AVLNode::id
    IL_01bc:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_01c1:  nop
    IL_01c2:  ldloc.0
    IL_01c3:  ldloc.1
    IL_01c4:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01c9:  ldfld      int32 Trees.AVLNode::key
    IL_01ce:  box        [mscorlib]System.Int32
    IL_01d3:  ldstr      ", "
    IL_01d8:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_01dd:  stloc.0
    IL_01de:  nop
    IL_01df:  nop
    IL_01e0:  ldc.i4.0
    IL_01e1:  stloc.s    finishedLeft
    IL_01e3:  ldloc.1
    IL_01e4:  ldloc.1
    IL_01e5:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01ea:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01ef:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_01f4:  nop
    IL_01f5:  nop
    IL_01f6:  nop
    IL_01f7:  ldloc.3
    IL_01f8:  ldc.i4.0
    IL_01f9:  ceq
    IL_01fb:  stloc.s    V_15
    IL_01fd:  ldloc.s    V_15
    IL_01ff:  brtrue     IL_002a

    IL_0204:  ldloc.0
    IL_0205:  stloc.s    V_11
    IL_0207:  br.s       IL_0209

    IL_0209:  ldloc.s    V_11
    IL_020b:  ret
  } // end of method AVL::InOrderTraverse

  .method public hidebysig instance string 
          PreOrderTraverse() cil managed
  {
    // Code size       801 (0x321)
    .maxstack  4
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.AVLNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] bool V_7,
             [8] class Trees.AVLNode previous,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] bool V_14,
             [15] bool V_15,
             [16] bool V_16,
             [17] bool V_17,
             [18] bool V_18)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.AVLNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  ldloc.0
    IL_001b:  ldloc.1
    IL_001c:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0021:  ldfld      int32 Trees.AVLNode::key
    IL_0026:  box        [mscorlib]System.Int32
    IL_002b:  ldstr      ", "
    IL_0030:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0035:  stloc.0
    IL_0036:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_003b:  stloc.2
    IL_003c:  ldloc.2
    IL_003d:  ldloc.1
    IL_003e:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0043:  ldfld      int32 Trees.AVLNode::id
    IL_0048:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_004d:  nop
    IL_004e:  ldc.i4.0
    IL_004f:  stloc.3
    IL_0050:  ldc.i4.0
    IL_0051:  stloc.s    finishedLeft
    IL_0053:  br         IL_030c

    IL_0058:  nop
    IL_0059:  ldloc.s    finishedLeft
    IL_005b:  ldc.i4.0
    IL_005c:  ceq
    IL_005e:  stloc.s    V_5
    IL_0060:  ldloc.s    V_5
    IL_0062:  brfalse    IL_00e7

    IL_0067:  nop
    IL_0068:  ldloc.1
    IL_0069:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_006e:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0073:  ldnull
    IL_0074:  ceq
    IL_0076:  stloc.s    V_6
    IL_0078:  ldloc.s    V_6
    IL_007a:  brfalse.s  IL_0083

    IL_007c:  nop
    IL_007d:  ldc.i4.1
    IL_007e:  stloc.s    finishedLeft
    IL_0080:  nop
    IL_0081:  br.s       IL_00e1

    IL_0083:  nop
    IL_0084:  ldloc.1
    IL_0085:  ldloc.1
    IL_0086:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_008b:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0090:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0095:  nop
    IL_0096:  ldloc.2
    IL_0097:  ldloc.1
    IL_0098:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_009d:  ldfld      int32 Trees.AVLNode::id
    IL_00a2:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_00a7:  ldc.i4.0
    IL_00a8:  ceq
    IL_00aa:  stloc.s    V_7
    IL_00ac:  ldloc.s    V_7
    IL_00ae:  brfalse.s  IL_00e0

    IL_00b0:  nop
    IL_00b1:  ldloc.2
    IL_00b2:  ldloc.1
    IL_00b3:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00b8:  ldfld      int32 Trees.AVLNode::id
    IL_00bd:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00c2:  nop
    IL_00c3:  ldloc.0
    IL_00c4:  ldloc.1
    IL_00c5:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00ca:  ldfld      int32 Trees.AVLNode::key
    IL_00cf:  box        [mscorlib]System.Int32
    IL_00d4:  ldstr      ", "
    IL_00d9:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00de:  stloc.0
    IL_00df:  nop
    IL_00e0:  nop
    IL_00e1:  nop
    IL_00e2:  br         IL_030b

    IL_00e7:  nop
    IL_00e8:  ldnull
    IL_00e9:  stloc.s    previous
    IL_00eb:  br         IL_01da

    IL_00f0:  nop
    IL_00f1:  ldloc.1
    IL_00f2:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00f7:  stloc.s    previous
    IL_00f9:  ldloc.2
    IL_00fa:  ldloc.1
    IL_00fb:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0100:  ldfld      int32 Trees.AVLNode::id
    IL_0105:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_010a:  ldc.i4.0
    IL_010b:  ceq
    IL_010d:  stloc.s    V_9
    IL_010f:  ldloc.s    V_9
    IL_0111:  brfalse.s  IL_0145

    IL_0113:  nop
    IL_0114:  ldloc.2
    IL_0115:  ldloc.1
    IL_0116:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_011b:  ldfld      int32 Trees.AVLNode::id
    IL_0120:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0125:  nop
    IL_0126:  ldloc.0
    IL_0127:  ldloc.1
    IL_0128:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_012d:  ldfld      int32 Trees.AVLNode::key
    IL_0132:  box        [mscorlib]System.Int32
    IL_0137:  ldstr      ", "
    IL_013c:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0141:  stloc.0
    IL_0142:  nop
    IL_0143:  br.s       IL_014e

    IL_0145:  nop
    IL_0146:  ldloc.1
    IL_0147:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_014c:  pop
    IL_014d:  nop
    IL_014e:  ldloc.1
    IL_014f:  callvirt   instance int32 class Trees.Stack`1<class Trees.AVLNode>::Count()
    IL_0154:  ldc.i4.0
    IL_0155:  ceq
    IL_0157:  stloc.s    V_10
    IL_0159:  ldloc.s    V_10
    IL_015b:  brfalse.s  IL_0184

    IL_015d:  nop
    IL_015e:  ldc.i4.1
    IL_015f:  stloc.3
    IL_0160:  ldloc.0
    IL_0161:  ldloc.0
    IL_0162:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0167:  ldc.i4.2
    IL_0168:  sub
    IL_0169:  ldc.i4.2
    IL_016a:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_016f:  stloc.0
    IL_0170:  ldloc.0
    IL_0171:  ldstr      "}"
    IL_0176:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_017b:  stloc.0
    IL_017c:  ldloc.0
    IL_017d:  stloc.s    V_11
    IL_017f:  br         IL_031e

    IL_0184:  ldloc.1
    IL_0185:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_018a:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0195:  bne.un.s   IL_01b1

    IL_0197:  ldloc.1
    IL_0198:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_019d:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01a2:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01a7:  ldloc.1
    IL_01a8:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01ad:  ceq
    IL_01af:  br.s       IL_01b2

    IL_01b1:  ldc.i4.0
    IL_01b2:  stloc.s    V_12
    IL_01b4:  ldloc.s    V_12
    IL_01b6:  brfalse.s  IL_01d9

    IL_01b8:  nop
    IL_01b9:  ldc.i4.1
    IL_01ba:  stloc.3
    IL_01bb:  ldloc.0
    IL_01bc:  ldloc.0
    IL_01bd:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_01c2:  ldc.i4.2
    IL_01c3:  sub
    IL_01c4:  ldc.i4.2
    IL_01c5:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_01ca:  stloc.0
    IL_01cb:  ldloc.0
    IL_01cc:  ldstr      "}"
    IL_01d1:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01d6:  stloc.0
    IL_01d7:  br.s       IL_0202

    IL_01d9:  nop
    IL_01da:  ldloc.1
    IL_01db:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01e0:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01e5:  brfalse.s  IL_01f8

    IL_01e7:  ldloc.1
    IL_01e8:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01ed:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01f2:  ldloc.s    previous
    IL_01f4:  ceq
    IL_01f6:  br.s       IL_01f9

    IL_01f8:  ldc.i4.1
    IL_01f9:  stloc.s    V_13
    IL_01fb:  ldloc.s    V_13
    IL_01fd:  brtrue     IL_00f0

    IL_0202:  ldloc.3
    IL_0203:  ldc.i4.0
    IL_0204:  ceq
    IL_0206:  stloc.s    V_14
    IL_0208:  ldloc.s    V_14
    IL_020a:  brfalse.s  IL_0258

    IL_020c:  nop
    IL_020d:  ldloc.2
    IL_020e:  ldloc.1
    IL_020f:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0214:  ldfld      int32 Trees.AVLNode::id
    IL_0219:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_021e:  ldc.i4.0
    IL_021f:  ceq
    IL_0221:  stloc.s    V_15
    IL_0223:  ldloc.s    V_15
    IL_0225:  brfalse.s  IL_0257

    IL_0227:  nop
    IL_0228:  ldloc.2
    IL_0229:  ldloc.1
    IL_022a:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_022f:  ldfld      int32 Trees.AVLNode::id
    IL_0234:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0239:  nop
    IL_023a:  ldloc.0
    IL_023b:  ldloc.1
    IL_023c:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0241:  ldfld      int32 Trees.AVLNode::key
    IL_0246:  box        [mscorlib]System.Int32
    IL_024b:  ldstr      ", "
    IL_0250:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0255:  stloc.0
    IL_0256:  nop
    IL_0257:  nop
    IL_0258:  ldc.i4.0
    IL_0259:  stloc.s    finishedLeft
    IL_025b:  ldloc.1
    IL_025c:  ldloc.1
    IL_025d:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0262:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0267:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_026c:  nop
    IL_026d:  ldloc.2
    IL_026e:  ldloc.1
    IL_026f:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0274:  ldfld      int32 Trees.AVLNode::id
    IL_0279:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_027e:  ldc.i4.0
    IL_027f:  ceq
    IL_0281:  stloc.s    V_16
    IL_0283:  ldloc.s    V_16
    IL_0285:  brfalse    IL_030a

    IL_028a:  nop
    IL_028b:  ldloc.2
    IL_028c:  ldloc.1
    IL_028d:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0292:  ldfld      int32 Trees.AVLNode::id
    IL_0297:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_029c:  nop
    IL_029d:  ldloc.3
    IL_029e:  stloc.s    V_17
    IL_02a0:  ldloc.s    V_17
    IL_02a2:  brfalse.s  IL_02eb

    IL_02a4:  nop
    IL_02a5:  ldloc.0
    IL_02a6:  ldloc.0
    IL_02a7:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_02ac:  ldc.i4.1
    IL_02ad:  sub
    IL_02ae:  ldc.i4.1
    IL_02af:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_02b4:  stloc.0
    IL_02b5:  ldc.i4.4
    IL_02b6:  newarr     [mscorlib]System.Object
    IL_02bb:  dup
    IL_02bc:  ldc.i4.0
    IL_02bd:  ldloc.0
    IL_02be:  stelem.ref
    IL_02bf:  dup
    IL_02c0:  ldc.i4.1
    IL_02c1:  ldstr      ", "
    IL_02c6:  stelem.ref
    IL_02c7:  dup
    IL_02c8:  ldc.i4.2
    IL_02c9:  ldloc.1
    IL_02ca:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_02cf:  ldfld      int32 Trees.AVLNode::key
    IL_02d4:  box        [mscorlib]System.Int32
    IL_02d9:  stelem.ref
    IL_02da:  dup
    IL_02db:  ldc.i4.3
    IL_02dc:  ldstr      "}"
    IL_02e1:  stelem.ref
    IL_02e2:  call       string [mscorlib]System.String::Concat(object[])
    IL_02e7:  stloc.0
    IL_02e8:  nop
    IL_02e9:  br.s       IL_0309

    IL_02eb:  nop
    IL_02ec:  ldloc.0
    IL_02ed:  ldloc.1
    IL_02ee:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_02f3:  ldfld      int32 Trees.AVLNode::key
    IL_02f8:  box        [mscorlib]System.Int32
    IL_02fd:  ldstr      ", "
    IL_0302:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0307:  stloc.0
    IL_0308:  nop
    IL_0309:  nop
    IL_030a:  nop
    IL_030b:  nop
    IL_030c:  ldloc.3
    IL_030d:  ldc.i4.0
    IL_030e:  ceq
    IL_0310:  stloc.s    V_18
    IL_0312:  ldloc.s    V_18
    IL_0314:  brtrue     IL_0058

    IL_0319:  ldloc.0
    IL_031a:  stloc.s    V_11
    IL_031c:  br.s       IL_031e

    IL_031e:  ldloc.s    V_11
    IL_0320:  ret
  } // end of method AVL::PreOrderTraverse

  .method public hidebysig instance string 
          PostOrderTraverse() cil managed
  {
    // Code size       491 (0x1eb)
    .maxstack  3
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.AVLNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.AVLNode previous,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11,
             [12] bool V_12,
             [13] bool V_13)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.AVLNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_001f:  stloc.2
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.3
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.s    finishedLeft
    IL_0025:  br         IL_01d6

    IL_002a:  nop
    IL_002b:  ldloc.s    finishedLeft
    IL_002d:  ldc.i4.0
    IL_002e:  ceq
    IL_0030:  stloc.s    V_5
    IL_0032:  ldloc.s    V_5
    IL_0034:  brfalse.s  IL_006c

    IL_0036:  nop
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_003d:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0042:  ldnull
    IL_0043:  ceq
    IL_0045:  stloc.s    V_6
    IL_0047:  ldloc.s    V_6
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  nop
    IL_004c:  ldc.i4.1
    IL_004d:  stloc.s    finishedLeft
    IL_004f:  nop
    IL_0050:  br.s       IL_0066

    IL_0052:  nop
    IL_0053:  ldloc.1
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_005a:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_005f:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0064:  nop
    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  br         IL_01d5

    IL_006c:  nop
    IL_006d:  ldnull
    IL_006e:  stloc.s    previous
    IL_0070:  br         IL_0197

    IL_0075:  nop
    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_007c:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0087:  bne.un.s   IL_00a3

    IL_0089:  ldloc.1
    IL_008a:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_008f:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0094:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0099:  ldloc.1
    IL_009a:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_009f:  ceq
    IL_00a1:  br.s       IL_00a4

    IL_00a3:  ldc.i4.0
    IL_00a4:  stloc.s    V_8
    IL_00a6:  ldloc.s    V_8
    IL_00a8:  brfalse.s  IL_0106

    IL_00aa:  nop
    IL_00ab:  ldc.i4.1
    IL_00ac:  stloc.3
    IL_00ad:  ldloc.0
    IL_00ae:  ldloc.1
    IL_00af:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00b4:  ldfld      int32 Trees.AVLNode::key
    IL_00b9:  box        [mscorlib]System.Int32
    IL_00be:  ldstr      ", "
    IL_00c3:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00c8:  stloc.0
    IL_00c9:  ldloc.0
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_00d0:  ldfld      int32 Trees.AVLNode::key
    IL_00d5:  box        [mscorlib]System.Int32
    IL_00da:  ldstr      ", "
    IL_00df:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00e4:  stloc.0
    IL_00e5:  ldloc.0
    IL_00e6:  ldloc.0
    IL_00e7:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00ec:  ldc.i4.2
    IL_00ed:  sub
    IL_00ee:  ldc.i4.2
    IL_00ef:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_00f4:  stloc.0
    IL_00f5:  ldloc.0
    IL_00f6:  ldstr      "}"
    IL_00fb:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0100:  stloc.0
    IL_0101:  br         IL_01bf

    IL_0106:  ldloc.1
    IL_0107:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_010c:  stloc.s    previous
    IL_010e:  ldloc.2
    IL_010f:  ldloc.1
    IL_0110:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0115:  ldfld      int32 Trees.AVLNode::id
    IL_011a:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_011f:  ldc.i4.0
    IL_0120:  ceq
    IL_0122:  stloc.s    V_9
    IL_0124:  ldloc.s    V_9
    IL_0126:  brfalse.s  IL_015a

    IL_0128:  nop
    IL_0129:  ldloc.2
    IL_012a:  ldloc.1
    IL_012b:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0130:  ldfld      int32 Trees.AVLNode::id
    IL_0135:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_013a:  nop
    IL_013b:  ldloc.0
    IL_013c:  ldloc.1
    IL_013d:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_0142:  ldfld      int32 Trees.AVLNode::key
    IL_0147:  box        [mscorlib]System.Int32
    IL_014c:  ldstr      ", "
    IL_0151:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0156:  stloc.0
    IL_0157:  nop
    IL_0158:  br.s       IL_0163

    IL_015a:  nop
    IL_015b:  ldloc.1
    IL_015c:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_0161:  pop
    IL_0162:  nop
    IL_0163:  ldloc.1
    IL_0164:  callvirt   instance int32 class Trees.Stack`1<class Trees.AVLNode>::Count()
    IL_0169:  ldc.i4.0
    IL_016a:  ceq
    IL_016c:  stloc.s    V_10
    IL_016e:  ldloc.s    V_10
    IL_0170:  brfalse.s  IL_0196

    IL_0172:  nop
    IL_0173:  ldc.i4.1
    IL_0174:  stloc.3
    IL_0175:  ldloc.0
    IL_0176:  ldloc.0
    IL_0177:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_017c:  ldc.i4.2
    IL_017d:  sub
    IL_017e:  ldc.i4.2
    IL_017f:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0184:  stloc.0
    IL_0185:  ldloc.0
    IL_0186:  ldstr      "}"
    IL_018b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0190:  stloc.0
    IL_0191:  ldloc.0
    IL_0192:  stloc.s    V_11
    IL_0194:  br.s       IL_01e8

    IL_0196:  nop
    IL_0197:  ldloc.1
    IL_0198:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_019d:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01a2:  brfalse.s  IL_01b5

    IL_01a4:  ldloc.1
    IL_01a5:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01aa:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01af:  ldloc.s    previous
    IL_01b1:  ceq
    IL_01b3:  br.s       IL_01b6

    IL_01b5:  ldc.i4.1
    IL_01b6:  stloc.s    V_12
    IL_01b8:  ldloc.s    V_12
    IL_01ba:  brtrue     IL_0075

    IL_01bf:  ldc.i4.0
    IL_01c0:  stloc.s    finishedLeft
    IL_01c2:  ldloc.1
    IL_01c3:  ldloc.1
    IL_01c4:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_01c9:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01ce:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_01d3:  nop
    IL_01d4:  nop
    IL_01d5:  nop
    IL_01d6:  ldloc.3
    IL_01d7:  ldc.i4.0
    IL_01d8:  ceq
    IL_01da:  stloc.s    V_13
    IL_01dc:  ldloc.s    V_13
    IL_01de:  brtrue     IL_002a

    IL_01e3:  ldloc.0
    IL_01e4:  stloc.s    V_11
    IL_01e6:  br.s       IL_01e8

    IL_01e8:  ldloc.s    V_11
    IL_01ea:  ret
  } // end of method AVL::PostOrderTraverse

  .method private hidebysig instance void 
          PostOrderHeightCalculation() cil managed
  {
    // Code size       355 (0x163)
    .maxstack  2
    .locals init ([0] class Trees.Stack`1<class Trees.AVLNode> nodes,
             [1] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [2] bool finished,
             [3] bool finishedLeft,
             [4] bool V_4,
             [5] bool V_5,
             [6] class Trees.AVLNode previous,
             [7] bool V_7,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] bool V_11)
    IL_0000:  nop
    IL_0001:  newobj     instance void class Trees.Stack`1<class Trees.AVLNode>::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_000e:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0013:  nop
    IL_0014:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0019:  stloc.1
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.3
    IL_001e:  br         IL_0155

    IL_0023:  nop
    IL_0024:  ldloc.3
    IL_0025:  ldc.i4.0
    IL_0026:  ceq
    IL_0028:  stloc.s    V_4
    IL_002a:  ldloc.s    V_4
    IL_002c:  brfalse.s  IL_0063

    IL_002e:  nop
    IL_002f:  ldloc.0
    IL_0030:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0035:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_003a:  ldnull
    IL_003b:  ceq
    IL_003d:  stloc.s    V_5
    IL_003f:  ldloc.s    V_5
    IL_0041:  brfalse.s  IL_0049

    IL_0043:  nop
    IL_0044:  ldc.i4.1
    IL_0045:  stloc.3
    IL_0046:  nop
    IL_0047:  br.s       IL_005d

    IL_0049:  nop
    IL_004a:  ldloc.0
    IL_004b:  ldloc.0
    IL_004c:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0051:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0056:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_005b:  nop
    IL_005c:  nop
    IL_005d:  nop
    IL_005e:  br         IL_0154

    IL_0063:  nop
    IL_0064:  ldnull
    IL_0065:  stloc.s    previous
    IL_0067:  br         IL_0117

    IL_006c:  nop
    IL_006d:  ldloc.0
    IL_006e:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0073:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_007e:  bne.un.s   IL_009a

    IL_0080:  ldloc.0
    IL_0081:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0086:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_008b:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0090:  ldloc.0
    IL_0091:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0096:  ceq
    IL_0098:  br.s       IL_009b

    IL_009a:  ldc.i4.0
    IL_009b:  stloc.s    V_7
    IL_009d:  ldloc.s    V_7
    IL_009f:  brfalse.s  IL_00b5

    IL_00a1:  nop
    IL_00a2:  ldc.i4.1
    IL_00a3:  stloc.2
    IL_00a4:  ldloc.0
    IL_00a5:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00aa:  callvirt   instance void Trees.AVLNode::CalculateHeight()
    IL_00af:  nop
    IL_00b0:  br         IL_013f

    IL_00b5:  ldloc.0
    IL_00b6:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00bb:  stloc.s    previous
    IL_00bd:  ldloc.1
    IL_00be:  ldloc.0
    IL_00bf:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00c4:  ldfld      int32 Trees.AVLNode::id
    IL_00c9:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_00ce:  ldc.i4.0
    IL_00cf:  ceq
    IL_00d1:  stloc.s    V_8
    IL_00d3:  ldloc.s    V_8
    IL_00d5:  brfalse.s  IL_00f9

    IL_00d7:  nop
    IL_00d8:  ldloc.1
    IL_00d9:  ldloc.0
    IL_00da:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_00df:  ldfld      int32 Trees.AVLNode::id
    IL_00e4:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00e9:  nop
    IL_00ea:  ldloc.0
    IL_00eb:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_00f0:  callvirt   instance void Trees.AVLNode::CalculateHeight()
    IL_00f5:  nop
    IL_00f6:  nop
    IL_00f7:  br.s       IL_0102

    IL_00f9:  nop
    IL_00fa:  ldloc.0
    IL_00fb:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Pop()
    IL_0100:  pop
    IL_0101:  nop
    IL_0102:  ldloc.0
    IL_0103:  callvirt   instance int32 class Trees.Stack`1<class Trees.AVLNode>::Count()
    IL_0108:  ldc.i4.0
    IL_0109:  ceq
    IL_010b:  stloc.s    V_9
    IL_010d:  ldloc.s    V_9
    IL_010f:  brfalse.s  IL_0116

    IL_0111:  nop
    IL_0112:  ldc.i4.1
    IL_0113:  stloc.2
    IL_0114:  br.s       IL_0162

    IL_0116:  nop
    IL_0117:  ldloc.0
    IL_0118:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_011d:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0122:  brfalse.s  IL_0135

    IL_0124:  ldloc.0
    IL_0125:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_012a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_012f:  ldloc.s    previous
    IL_0131:  ceq
    IL_0133:  br.s       IL_0136

    IL_0135:  ldc.i4.1
    IL_0136:  stloc.s    V_10
    IL_0138:  ldloc.s    V_10
    IL_013a:  brtrue     IL_006c

    IL_013f:  ldc.i4.0
    IL_0140:  stloc.3
    IL_0141:  ldloc.0
    IL_0142:  ldloc.0
    IL_0143:  callvirt   instance !0 class Trees.Stack`1<class Trees.AVLNode>::Peek()
    IL_0148:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_014d:  callvirt   instance void class Trees.Stack`1<class Trees.AVLNode>::Push(!0)
    IL_0152:  nop
    IL_0153:  nop
    IL_0154:  nop
    IL_0155:  ldloc.2
    IL_0156:  ldc.i4.0
    IL_0157:  ceq
    IL_0159:  stloc.s    V_11
    IL_015b:  ldloc.s    V_11
    IL_015d:  brtrue     IL_0023

    IL_0162:  ret
  } // end of method AVL::PostOrderHeightCalculation

  .method public hidebysig instance string 
          LevelOrderTraverse() cil managed
  {
    // Code size       326 (0x146)
    .maxstack  3
    .locals init ([0] string description,
             [1] bool finished,
             [2] class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode> previousNodes,
             [3] class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode> currentNodes,
             [4] bool anyExist,
             [5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.AVLNode> V_5,
             [6] class Trees.AVLNode node,
             [7] bool V_7,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode>::.ctor()
    IL_000e:  stloc.2
    IL_000f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode>::.ctor()
    IL_0014:  stloc.3
    IL_0015:  ldloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_001c:  ldfld      int32 Trees.AVLNode::key
    IL_0021:  box        [mscorlib]System.Int32
    IL_0026:  ldstr      ", "
    IL_002b:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0030:  stloc.0
    IL_0031:  ldloc.2
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0038:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode>::Add(!0)
    IL_003d:  nop
    IL_003e:  br         IL_0115

    IL_0043:  nop
    IL_0044:  ldc.i4.0
    IL_0045:  stloc.s    anyExist
    IL_0047:  nop
    IL_0048:  ldloc.2
    IL_0049:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode>::GetEnumerator()
    IL_004e:  stloc.s    V_5
    .try
    {
      IL_0050:  br         IL_00e0

      IL_0055:  ldloca.s   V_5
      IL_0057:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.AVLNode>::get_Current()
      IL_005c:  stloc.s    node
      IL_005e:  nop
      IL_005f:  ldloc.s    node
      IL_0061:  ldfld      class Trees.AVLNode Trees.AVLNode::left
      IL_0066:  ldnull
      IL_0067:  cgt.un
      IL_0069:  stloc.s    V_7
      IL_006b:  ldloc.s    V_7
      IL_006d:  brfalse.s  IL_009f

      IL_006f:  nop
      IL_0070:  ldc.i4.1
      IL_0071:  stloc.s    anyExist
      IL_0073:  ldloc.0
      IL_0074:  ldloc.s    node
      IL_0076:  ldfld      class Trees.AVLNode Trees.AVLNode::left
      IL_007b:  ldfld      int32 Trees.AVLNode::key
      IL_0080:  box        [mscorlib]System.Int32
      IL_0085:  ldstr      ", "
      IL_008a:  call       string [mscorlib]System.String::Concat(object,
                                                                  object,
                                                                  object)
      IL_008f:  stloc.0
      IL_0090:  ldloc.3
      IL_0091:  ldloc.s    node
      IL_0093:  ldfld      class Trees.AVLNode Trees.AVLNode::left
      IL_0098:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode>::Add(!0)
      IL_009d:  nop
      IL_009e:  nop
      IL_009f:  ldloc.s    node
      IL_00a1:  ldfld      class Trees.AVLNode Trees.AVLNode::right
      IL_00a6:  ldnull
      IL_00a7:  cgt.un
      IL_00a9:  stloc.s    V_8
      IL_00ab:  ldloc.s    V_8
      IL_00ad:  brfalse.s  IL_00df

      IL_00af:  nop
      IL_00b0:  ldc.i4.1
      IL_00b1:  stloc.s    anyExist
      IL_00b3:  ldloc.0
      IL_00b4:  ldloc.s    node
      IL_00b6:  ldfld      class Trees.AVLNode Trees.AVLNode::right
      IL_00bb:  ldfld      int32 Trees.AVLNode::key
      IL_00c0:  box        [mscorlib]System.Int32
      IL_00c5:  ldstr      ", "
      IL_00ca:  call       string [mscorlib]System.String::Concat(object,
                                                                  object,
                                                                  object)
      IL_00cf:  stloc.0
      IL_00d0:  ldloc.3
      IL_00d1:  ldloc.s    node
      IL_00d3:  ldfld      class Trees.AVLNode Trees.AVLNode::right
      IL_00d8:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode>::Add(!0)
      IL_00dd:  nop
      IL_00de:  nop
      IL_00df:  nop
      IL_00e0:  ldloca.s   V_5
      IL_00e2:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.AVLNode>::MoveNext()
      IL_00e7:  brtrue     IL_0055

      IL_00ec:  leave.s    IL_00fd

    }  // end .try
    finally
    {
      IL_00ee:  ldloca.s   V_5
      IL_00f0:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.AVLNode>
      IL_00f6:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00fb:  nop
      IL_00fc:  endfinally
    }  // end handler
    IL_00fd:  ldloc.3
    IL_00fe:  stloc.2
    IL_00ff:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.AVLNode>::.ctor()
    IL_0104:  stloc.3
    IL_0105:  ldloc.s    anyExist
    IL_0107:  ldc.i4.0
    IL_0108:  ceq
    IL_010a:  stloc.s    V_9
    IL_010c:  ldloc.s    V_9
    IL_010e:  brfalse.s  IL_0114

    IL_0110:  nop
    IL_0111:  ldc.i4.1
    IL_0112:  stloc.1
    IL_0113:  nop
    IL_0114:  nop
    IL_0115:  ldloc.1
    IL_0116:  ldc.i4.0
    IL_0117:  ceq
    IL_0119:  stloc.s    V_10
    IL_011b:  ldloc.s    V_10
    IL_011d:  brtrue     IL_0043

    IL_0122:  ldloc.0
    IL_0123:  ldloc.0
    IL_0124:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0129:  ldc.i4.2
    IL_012a:  sub
    IL_012b:  ldc.i4.2
    IL_012c:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0131:  stloc.0
    IL_0132:  ldloc.0
    IL_0133:  ldstr      "}"
    IL_0138:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_013d:  stloc.0
    IL_013e:  ldloc.0
    IL_013f:  stloc.s    V_11
    IL_0141:  br.s       IL_0143

    IL_0143:  ldloc.s    V_11
    IL_0145:  ret
  } // end of method AVL::LevelOrderTraverse

  .method public hidebysig instance class Trees.AVLNode 
          Search(int32 key) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init ([0] class Trees.AVLNode V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0009:  call       instance class Trees.AVLNode Trees.AVL::BFS(int32,
                                                                     class Trees.AVLNode)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method AVL::Search

  .method private hidebysig instance class Trees.AVLNode 
          BFS(int32 key,
              class Trees.AVLNode current) cil managed
  {
    // Code size       78 (0x4e)
    .maxstack  3
    .locals init ([0] class Trees.AVLNode right,
             [1] class Trees.AVLNode left,
             [2] bool V_2,
             [3] class Trees.AVLNode V_3,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.2
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.2
    IL_0006:  ldloc.2
    IL_0007:  brfalse.s  IL_000d

    IL_0009:  ldnull
    IL_000a:  stloc.3
    IL_000b:  br.s       IL_004c

    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldfld      int32 Trees.AVLNode::key
    IL_0014:  ceq
    IL_0016:  stloc.s    V_4
    IL_0018:  ldloc.s    V_4
    IL_001a:  brfalse.s  IL_0020

    IL_001c:  ldarg.2
    IL_001d:  stloc.3
    IL_001e:  br.s       IL_004c

    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0028:  call       instance class Trees.AVLNode Trees.AVL::BFS(int32,
                                                                     class Trees.AVLNode)
    IL_002d:  stloc.0
    IL_002e:  ldarg.0
    IL_002f:  ldarg.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0036:  call       instance class Trees.AVLNode Trees.AVL::BFS(int32,
                                                                     class Trees.AVLNode)
    IL_003b:  stloc.1
    IL_003c:  ldloc.0
    IL_003d:  brtrue.s   IL_0048

    IL_003f:  ldloc.1
    IL_0040:  brtrue.s   IL_0045

    IL_0042:  ldnull
    IL_0043:  br.s       IL_0046

    IL_0045:  ldloc.1
    IL_0046:  br.s       IL_0049

    IL_0048:  ldloc.0
    IL_0049:  stloc.3
    IL_004a:  br.s       IL_004c

    IL_004c:  ldloc.3
    IL_004d:  ret
  } // end of method AVL::BFS

  .method public hidebysig instance class Trees.AVLNode 
          IterativeFind(int32 key) cil managed
  {
    // Code size       73 (0x49)
    .maxstack  2
    .locals init ([0] class Trees.AVLNode current,
             [1] bool V_1,
             [2] bool V_2,
             [3] class Trees.AVLNode V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_002d

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      int32 Trees.AVLNode::key
    IL_0011:  ldarg.1
    IL_0012:  clt
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  brfalse.s  IL_0023

    IL_0018:  nop
    IL_0019:  ldloc.0
    IL_001a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_001f:  stloc.0
    IL_0020:  nop
    IL_0021:  br.s       IL_002c

    IL_0023:  nop
    IL_0024:  ldloc.0
    IL_0025:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_002a:  stloc.0
    IL_002b:  nop
    IL_002c:  nop
    IL_002d:  ldloc.0
    IL_002e:  brfalse.s  IL_003e

    IL_0030:  ldloc.0
    IL_0031:  ldfld      int32 Trees.AVLNode::key
    IL_0036:  ldarg.1
    IL_0037:  ceq
    IL_0039:  ldc.i4.0
    IL_003a:  ceq
    IL_003c:  br.s       IL_003f

    IL_003e:  ldc.i4.0
    IL_003f:  stloc.2
    IL_0040:  ldloc.2
    IL_0041:  brtrue.s   IL_000a

    IL_0043:  ldloc.0
    IL_0044:  stloc.3
    IL_0045:  br.s       IL_0047

    IL_0047:  ldloc.3
    IL_0048:  ret
  } // end of method AVL::IterativeFind

  .method public hidebysig instance class Trees.AVLNode 
          Minimum() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init ([0] class Trees.AVLNode current,
             [1] bool V_1,
             [2] class Trees.AVLNode V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_0013

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0011:  stloc.0
    IL_0012:  nop
    IL_0013:  ldloc.0
    IL_0014:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0019:  ldnull
    IL_001a:  cgt.un
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brtrue.s   IL_000a

    IL_0020:  ldloc.0
    IL_0021:  stloc.2
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.2
    IL_0025:  ret
  } // end of method AVL::Minimum

  .method public hidebysig instance class Trees.AVLNode 
          Maximum() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init ([0] class Trees.AVLNode current,
             [1] bool V_1,
             [2] class Trees.AVLNode V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_0013

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0011:  stloc.0
    IL_0012:  nop
    IL_0013:  ldloc.0
    IL_0014:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0019:  ldnull
    IL_001a:  cgt.un
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brtrue.s   IL_000a

    IL_0020:  ldloc.0
    IL_0021:  stloc.2
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.2
    IL_0025:  ret
  } // end of method AVL::Maximum

  .method public hidebysig instance void 
          Insert(class Trees.AVLNode newNode) cil managed
  {
    // Code size       219 (0xdb)
    .maxstack  2
    .locals init ([0] class Trees.AVLNode current,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  cgt.un
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  brfalse    IL_00be

    IL_0013:  nop
    IL_0014:  br         IL_00b3

    IL_0019:  nop
    IL_001a:  ldloc.0
    IL_001b:  ldfld      int32 Trees.AVLNode::key
    IL_0020:  ldarg.1
    IL_0021:  ldfld      int32 Trees.AVLNode::key
    IL_0026:  cgt
    IL_0028:  stloc.2
    IL_0029:  ldloc.2
    IL_002a:  brfalse.s  IL_006f

    IL_002c:  nop
    IL_002d:  ldloc.0
    IL_002e:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0033:  ldnull
    IL_0034:  cgt.un
    IL_0036:  stloc.3
    IL_0037:  ldloc.3
    IL_0038:  brfalse.s  IL_0045

    IL_003a:  nop
    IL_003b:  ldloc.0
    IL_003c:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0041:  stloc.0
    IL_0042:  nop
    IL_0043:  br.s       IL_006c

    IL_0045:  nop
    IL_0046:  ldloc.0
    IL_0047:  ldarg.1
    IL_0048:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_004d:  ldarg.1
    IL_004e:  ldloc.0
    IL_004f:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0054:  ldarg.1
    IL_0055:  callvirt   instance void Trees.AVLNode::CalculateHeight()
    IL_005a:  nop
    IL_005b:  ldarg.0
    IL_005c:  call       instance void Trees.AVL::PostOrderHeightCalculation()
    IL_0061:  nop
    IL_0062:  ldarg.0
    IL_0063:  ldarg.1
    IL_0064:  call       instance void Trees.AVL::Rebalance(class Trees.AVLNode)
    IL_0069:  nop
    IL_006a:  br.s       IL_00bb

    IL_006c:  nop
    IL_006d:  br.s       IL_00b2

    IL_006f:  nop
    IL_0070:  ldloc.0
    IL_0071:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0076:  ldnull
    IL_0077:  cgt.un
    IL_0079:  stloc.s    V_4
    IL_007b:  ldloc.s    V_4
    IL_007d:  brfalse.s  IL_008a

    IL_007f:  nop
    IL_0080:  ldloc.0
    IL_0081:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0086:  stloc.0
    IL_0087:  nop
    IL_0088:  br.s       IL_00b1

    IL_008a:  nop
    IL_008b:  ldloc.0
    IL_008c:  ldarg.1
    IL_008d:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0092:  ldarg.1
    IL_0093:  ldloc.0
    IL_0094:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0099:  ldarg.1
    IL_009a:  callvirt   instance void Trees.AVLNode::CalculateHeight()
    IL_009f:  nop
    IL_00a0:  ldarg.0
    IL_00a1:  call       instance void Trees.AVL::PostOrderHeightCalculation()
    IL_00a6:  nop
    IL_00a7:  ldarg.0
    IL_00a8:  ldarg.1
    IL_00a9:  call       instance void Trees.AVL::Rebalance(class Trees.AVLNode)
    IL_00ae:  nop
    IL_00af:  br.s       IL_00bb

    IL_00b1:  nop
    IL_00b2:  nop
    IL_00b3:  ldc.i4.1
    IL_00b4:  stloc.s    V_5
    IL_00b6:  br         IL_0019

    IL_00bb:  nop
    IL_00bc:  br.s       IL_00d3

    IL_00be:  nop
    IL_00bf:  ldarg.0
    IL_00c0:  ldarg.1
    IL_00c1:  stfld      class Trees.AVLNode Trees.AVL::root
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_00cc:  callvirt   instance void Trees.AVLNode::CalculateHeight()
    IL_00d1:  nop
    IL_00d2:  nop
    IL_00d3:  ldarg.0
    IL_00d4:  call       instance void Trees.AVL::PostOrderHeightCalculation()
    IL_00d9:  nop
    IL_00da:  ret
  } // end of method AVL::Insert

  .method public hidebysig instance void 
          Rebalance(class Trees.AVLNode start) cil managed
  {
    // Code size       1512 (0x5e8)
    .maxstack  2
    .locals init ([0] class Trees.AVLNode current,
             [1] bool V_1,
             [2] bool V_2,
             [3] class Trees.AVLNode right,
             [4] bool V_4,
             [5] class Trees.AVLNode subCurrent,
             [6] class Trees.AVLNode left,
             [7] class Trees.AVLNode V_7,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] bool V_11,
             [12] class Trees.AVLNode V_12,
             [13] bool V_13,
             [14] class Trees.AVLNode V_14,
             [15] class Trees.AVLNode V_15,
             [16] class Trees.AVLNode V_16,
             [17] bool V_17,
             [18] bool V_18,
             [19] bool V_19,
             [20] bool V_20,
             [21] bool V_21,
             [22] class Trees.AVLNode V_22,
             [23] bool V_23,
             [24] class Trees.AVLNode V_24,
             [25] class Trees.AVLNode V_25,
             [26] class Trees.AVLNode V_26,
             [27] bool V_27,
             [28] bool V_28,
             [29] bool V_29,
             [30] bool V_30,
             [31] class Trees.AVLNode V_31,
             [32] bool V_32,
             [33] class Trees.AVLNode V_33,
             [34] class Trees.AVLNode V_34,
             [35] class Trees.AVLNode V_35,
             [36] bool V_36,
             [37] bool V_37,
             [38] bool V_38)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.0
    IL_0003:  br         IL_02d9

    IL_0008:  nop
    IL_0009:  ldloc.0
    IL_000a:  callvirt   instance void Trees.AVLNode::CalculateHeight()
    IL_000f:  nop
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_0016:  ldc.i4.1
    IL_0017:  cgt
    IL_0019:  stloc.1
    IL_001a:  ldloc.1
    IL_001b:  brfalse    IL_016f

    IL_0020:  nop
    IL_0021:  ldloc.0
    IL_0022:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0027:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_002c:  ldc.i4.0
    IL_002d:  clt
    IL_002f:  ldc.i4.0
    IL_0030:  ceq
    IL_0032:  stloc.2
    IL_0033:  ldloc.2
    IL_0034:  brfalse.s  IL_0098

    IL_0036:  nop
    IL_0037:  ldloc.0
    IL_0038:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_003d:  stloc.3
    IL_003e:  ldloc.0
    IL_003f:  ldloc.0
    IL_0040:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0045:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_004a:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_004f:  ldloc.0
    IL_0050:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0055:  ldnull
    IL_0056:  cgt.un
    IL_0058:  stloc.s    V_4
    IL_005a:  ldloc.s    V_4
    IL_005c:  brfalse.s  IL_0078

    IL_005e:  nop
    IL_005f:  ldloc.0
    IL_0060:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0065:  ldloc.0
    IL_0066:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_006b:  ldloc.0
    IL_006c:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0071:  ldnull
    IL_0072:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0077:  nop
    IL_0078:  ldloc.3
    IL_0079:  ldloc.0
    IL_007a:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_007f:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0084:  ldloc.3
    IL_0085:  ldloc.0
    IL_0086:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_008b:  ldloc.0
    IL_008c:  ldloc.3
    IL_008d:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0092:  nop
    IL_0093:  br         IL_0169

    IL_0098:  nop
    IL_0099:  ldloc.0
    IL_009a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_009f:  stloc.s    subCurrent
    IL_00a1:  ldloc.s    subCurrent
    IL_00a3:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_00a8:  stloc.s    left
    IL_00aa:  ldloc.s    subCurrent
    IL_00ac:  ldloc.s    subCurrent
    IL_00ae:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_00b3:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_00b8:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_00bd:  ldloc.s    subCurrent
    IL_00bf:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_00c4:  ldnull
    IL_00c5:  cgt.un
    IL_00c7:  stloc.s    V_8
    IL_00c9:  ldloc.s    V_8
    IL_00cb:  brfalse.s  IL_00e9

    IL_00cd:  nop
    IL_00ce:  ldloc.s    subCurrent
    IL_00d0:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_00d5:  ldloc.0
    IL_00d6:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_00db:  ldloc.s    subCurrent
    IL_00dd:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_00e2:  ldnull
    IL_00e3:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_00e8:  nop
    IL_00e9:  ldloc.s    left
    IL_00eb:  ldloc.s    subCurrent
    IL_00ed:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_00f2:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_00f7:  ldloc.s    left
    IL_00f9:  ldloc.s    subCurrent
    IL_00fb:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0100:  ldloc.s    subCurrent
    IL_0102:  ldloc.s    left
    IL_0104:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0109:  ldloc.0
    IL_010a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_010f:  stloc.s    V_7
    IL_0111:  ldloc.0
    IL_0112:  ldloc.0
    IL_0113:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0118:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_011d:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0122:  ldloc.0
    IL_0123:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0128:  ldnull
    IL_0129:  cgt.un
    IL_012b:  stloc.s    V_9
    IL_012d:  ldloc.s    V_9
    IL_012f:  brfalse.s  IL_014b

    IL_0131:  nop
    IL_0132:  ldloc.0
    IL_0133:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0138:  ldloc.0
    IL_0139:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_013e:  ldloc.0
    IL_013f:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0144:  ldnull
    IL_0145:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_014a:  nop
    IL_014b:  ldloc.s    V_7
    IL_014d:  ldloc.0
    IL_014e:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0153:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0158:  ldloc.s    V_7
    IL_015a:  ldloc.0
    IL_015b:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0160:  ldloc.0
    IL_0161:  ldloc.s    V_7
    IL_0163:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0168:  nop
    IL_0169:  nop
    IL_016a:  br         IL_02d1

    IL_016f:  ldloc.0
    IL_0170:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_0175:  ldc.i4.m1
    IL_0176:  clt
    IL_0178:  stloc.s    V_10
    IL_017a:  ldloc.s    V_10
    IL_017c:  brfalse    IL_02d1

    IL_0181:  nop
    IL_0182:  ldloc.0
    IL_0183:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0188:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_018d:  ldc.i4.0
    IL_018e:  clt
    IL_0190:  ldc.i4.0
    IL_0191:  ceq
    IL_0193:  stloc.s    V_11
    IL_0195:  ldloc.s    V_11
    IL_0197:  brfalse.s  IL_01ff

    IL_0199:  nop
    IL_019a:  ldloc.0
    IL_019b:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_01a0:  stloc.s    V_12
    IL_01a2:  ldloc.0
    IL_01a3:  ldloc.0
    IL_01a4:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_01a9:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01ae:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_01b3:  ldloc.0
    IL_01b4:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_01b9:  ldnull
    IL_01ba:  cgt.un
    IL_01bc:  stloc.s    V_13
    IL_01be:  ldloc.s    V_13
    IL_01c0:  brfalse.s  IL_01dc

    IL_01c2:  nop
    IL_01c3:  ldloc.0
    IL_01c4:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_01c9:  ldloc.0
    IL_01ca:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01cf:  ldloc.0
    IL_01d0:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_01d5:  ldnull
    IL_01d6:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01db:  nop
    IL_01dc:  ldloc.s    V_12
    IL_01de:  ldloc.0
    IL_01df:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01e4:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01e9:  ldloc.s    V_12
    IL_01eb:  ldloc.0
    IL_01ec:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01f1:  ldloc.0
    IL_01f2:  ldloc.s    V_12
    IL_01f4:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01f9:  nop
    IL_01fa:  br         IL_02d0

    IL_01ff:  nop
    IL_0200:  ldloc.0
    IL_0201:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0206:  stloc.s    V_14
    IL_0208:  ldloc.s    V_14
    IL_020a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_020f:  stloc.s    V_15
    IL_0211:  ldloc.s    V_14
    IL_0213:  ldloc.s    V_14
    IL_0215:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_021a:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_021f:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0224:  ldloc.s    V_14
    IL_0226:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_022b:  ldnull
    IL_022c:  cgt.un
    IL_022e:  stloc.s    V_17
    IL_0230:  ldloc.s    V_17
    IL_0232:  brfalse.s  IL_0250

    IL_0234:  nop
    IL_0235:  ldloc.s    V_14
    IL_0237:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_023c:  ldloc.0
    IL_023d:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0242:  ldloc.s    V_14
    IL_0244:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0249:  ldnull
    IL_024a:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_024f:  nop
    IL_0250:  ldloc.s    V_15
    IL_0252:  ldloc.s    V_14
    IL_0254:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0259:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_025e:  ldloc.s    V_15
    IL_0260:  ldloc.s    V_14
    IL_0262:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0267:  ldloc.s    V_14
    IL_0269:  ldloc.s    V_15
    IL_026b:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0270:  ldloc.0
    IL_0271:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0276:  stloc.s    V_16
    IL_0278:  ldloc.0
    IL_0279:  ldloc.0
    IL_027a:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_027f:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0284:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0289:  ldloc.0
    IL_028a:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_028f:  ldnull
    IL_0290:  cgt.un
    IL_0292:  stloc.s    V_18
    IL_0294:  ldloc.s    V_18
    IL_0296:  brfalse.s  IL_02b2

    IL_0298:  nop
    IL_0299:  ldloc.0
    IL_029a:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_029f:  ldloc.0
    IL_02a0:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_02a5:  ldloc.0
    IL_02a6:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_02ab:  ldnull
    IL_02ac:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_02b1:  nop
    IL_02b2:  ldloc.s    V_16
    IL_02b4:  ldloc.0
    IL_02b5:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_02ba:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_02bf:  ldloc.s    V_16
    IL_02c1:  ldloc.0
    IL_02c2:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_02c7:  ldloc.0
    IL_02c8:  ldloc.s    V_16
    IL_02ca:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_02cf:  nop
    IL_02d0:  nop
    IL_02d1:  ldloc.0
    IL_02d2:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_02d7:  stloc.0
    IL_02d8:  nop
    IL_02d9:  ldloc.0
    IL_02da:  ldarg.0
    IL_02db:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_02e0:  ceq
    IL_02e2:  ldc.i4.0
    IL_02e3:  ceq
    IL_02e5:  stloc.s    V_19
    IL_02e7:  ldloc.s    V_19
    IL_02e9:  brtrue     IL_0008

    IL_02ee:  ldloc.0
    IL_02ef:  callvirt   instance void Trees.AVLNode::CalculateHeight()
    IL_02f4:  nop
    IL_02f5:  ldloc.0
    IL_02f6:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_02fb:  ldc.i4.1
    IL_02fc:  cgt
    IL_02fe:  stloc.s    V_20
    IL_0300:  ldloc.s    V_20
    IL_0302:  brfalse    IL_045c

    IL_0307:  nop
    IL_0308:  ldloc.0
    IL_0309:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_030e:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_0313:  ldc.i4.0
    IL_0314:  clt
    IL_0316:  ldc.i4.0
    IL_0317:  ceq
    IL_0319:  stloc.s    V_21
    IL_031b:  ldloc.s    V_21
    IL_031d:  brfalse.s  IL_0385

    IL_031f:  nop
    IL_0320:  ldloc.0
    IL_0321:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0326:  stloc.s    V_22
    IL_0328:  ldloc.0
    IL_0329:  ldloc.0
    IL_032a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_032f:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0334:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0339:  ldloc.0
    IL_033a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_033f:  ldnull
    IL_0340:  cgt.un
    IL_0342:  stloc.s    V_23
    IL_0344:  ldloc.s    V_23
    IL_0346:  brfalse.s  IL_0362

    IL_0348:  nop
    IL_0349:  ldloc.0
    IL_034a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_034f:  ldloc.0
    IL_0350:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0355:  ldloc.0
    IL_0356:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_035b:  ldnull
    IL_035c:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0361:  nop
    IL_0362:  ldloc.s    V_22
    IL_0364:  ldloc.0
    IL_0365:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_036a:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_036f:  ldloc.s    V_22
    IL_0371:  ldloc.0
    IL_0372:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0377:  ldloc.0
    IL_0378:  ldloc.s    V_22
    IL_037a:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_037f:  nop
    IL_0380:  br         IL_0456

    IL_0385:  nop
    IL_0386:  ldloc.0
    IL_0387:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_038c:  stloc.s    V_24
    IL_038e:  ldloc.s    V_24
    IL_0390:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0395:  stloc.s    V_25
    IL_0397:  ldloc.s    V_24
    IL_0399:  ldloc.s    V_24
    IL_039b:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_03a0:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_03a5:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_03aa:  ldloc.s    V_24
    IL_03ac:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_03b1:  ldnull
    IL_03b2:  cgt.un
    IL_03b4:  stloc.s    V_27
    IL_03b6:  ldloc.s    V_27
    IL_03b8:  brfalse.s  IL_03d6

    IL_03ba:  nop
    IL_03bb:  ldloc.s    V_24
    IL_03bd:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_03c2:  ldloc.0
    IL_03c3:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_03c8:  ldloc.s    V_24
    IL_03ca:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_03cf:  ldnull
    IL_03d0:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_03d5:  nop
    IL_03d6:  ldloc.s    V_25
    IL_03d8:  ldloc.s    V_24
    IL_03da:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_03df:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_03e4:  ldloc.s    V_25
    IL_03e6:  ldloc.s    V_24
    IL_03e8:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_03ed:  ldloc.s    V_24
    IL_03ef:  ldloc.s    V_25
    IL_03f1:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_03f6:  ldloc.0
    IL_03f7:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_03fc:  stloc.s    V_26
    IL_03fe:  ldloc.0
    IL_03ff:  ldloc.0
    IL_0400:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0405:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_040a:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_040f:  ldloc.0
    IL_0410:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0415:  ldnull
    IL_0416:  cgt.un
    IL_0418:  stloc.s    V_28
    IL_041a:  ldloc.s    V_28
    IL_041c:  brfalse.s  IL_0438

    IL_041e:  nop
    IL_041f:  ldloc.0
    IL_0420:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0425:  ldloc.0
    IL_0426:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_042b:  ldloc.0
    IL_042c:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0431:  ldnull
    IL_0432:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0437:  nop
    IL_0438:  ldloc.s    V_26
    IL_043a:  ldloc.0
    IL_043b:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0440:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0445:  ldloc.s    V_26
    IL_0447:  ldloc.0
    IL_0448:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_044d:  ldloc.0
    IL_044e:  ldloc.s    V_26
    IL_0450:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0455:  nop
    IL_0456:  nop
    IL_0457:  br         IL_05be

    IL_045c:  ldloc.0
    IL_045d:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_0462:  ldc.i4.m1
    IL_0463:  clt
    IL_0465:  stloc.s    V_29
    IL_0467:  ldloc.s    V_29
    IL_0469:  brfalse    IL_05be

    IL_046e:  nop
    IL_046f:  ldloc.0
    IL_0470:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0475:  callvirt   instance int32 Trees.AVLNode::Balance()
    IL_047a:  ldc.i4.0
    IL_047b:  cgt
    IL_047d:  ldc.i4.0
    IL_047e:  ceq
    IL_0480:  stloc.s    V_30
    IL_0482:  ldloc.s    V_30
    IL_0484:  brfalse.s  IL_04ec

    IL_0486:  nop
    IL_0487:  ldloc.0
    IL_0488:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_048d:  stloc.s    V_31
    IL_048f:  ldloc.0
    IL_0490:  ldloc.0
    IL_0491:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0496:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_049b:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_04a0:  ldloc.0
    IL_04a1:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_04a6:  ldnull
    IL_04a7:  cgt.un
    IL_04a9:  stloc.s    V_32
    IL_04ab:  ldloc.s    V_32
    IL_04ad:  brfalse.s  IL_04c9

    IL_04af:  nop
    IL_04b0:  ldloc.0
    IL_04b1:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_04b6:  ldloc.0
    IL_04b7:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_04bc:  ldloc.0
    IL_04bd:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_04c2:  ldnull
    IL_04c3:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_04c8:  nop
    IL_04c9:  ldloc.s    V_31
    IL_04cb:  ldloc.0
    IL_04cc:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_04d1:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_04d6:  ldloc.s    V_31
    IL_04d8:  ldloc.0
    IL_04d9:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_04de:  ldloc.0
    IL_04df:  ldloc.s    V_31
    IL_04e1:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_04e6:  nop
    IL_04e7:  br         IL_05bd

    IL_04ec:  nop
    IL_04ed:  ldloc.0
    IL_04ee:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_04f3:  stloc.s    V_33
    IL_04f5:  ldloc.s    V_33
    IL_04f7:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_04fc:  stloc.s    V_34
    IL_04fe:  ldloc.s    V_33
    IL_0500:  ldloc.s    V_33
    IL_0502:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0507:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_050c:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0511:  ldloc.s    V_33
    IL_0513:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0518:  ldnull
    IL_0519:  cgt.un
    IL_051b:  stloc.s    V_36
    IL_051d:  ldloc.s    V_36
    IL_051f:  brfalse.s  IL_053d

    IL_0521:  nop
    IL_0522:  ldloc.s    V_33
    IL_0524:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0529:  ldloc.0
    IL_052a:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_052f:  ldloc.s    V_33
    IL_0531:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0536:  ldnull
    IL_0537:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_053c:  nop
    IL_053d:  ldloc.s    V_34
    IL_053f:  ldloc.s    V_33
    IL_0541:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0546:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_054b:  ldloc.s    V_34
    IL_054d:  ldloc.s    V_33
    IL_054f:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0554:  ldloc.s    V_33
    IL_0556:  ldloc.s    V_34
    IL_0558:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_055d:  ldloc.0
    IL_055e:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0563:  stloc.s    V_35
    IL_0565:  ldloc.0
    IL_0566:  ldloc.0
    IL_0567:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_056c:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0571:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0576:  ldloc.0
    IL_0577:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_057c:  ldnull
    IL_057d:  cgt.un
    IL_057f:  stloc.s    V_37
    IL_0581:  ldloc.s    V_37
    IL_0583:  brfalse.s  IL_059f

    IL_0585:  nop
    IL_0586:  ldloc.0
    IL_0587:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_058c:  ldloc.0
    IL_058d:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0592:  ldloc.0
    IL_0593:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0598:  ldnull
    IL_0599:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_059e:  nop
    IL_059f:  ldloc.s    V_35
    IL_05a1:  ldloc.0
    IL_05a2:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_05a7:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_05ac:  ldloc.s    V_35
    IL_05ae:  ldloc.0
    IL_05af:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_05b4:  ldloc.0
    IL_05b5:  ldloc.s    V_35
    IL_05b7:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_05bc:  nop
    IL_05bd:  nop
    IL_05be:  br.s       IL_05d3

    IL_05c0:  nop
    IL_05c1:  ldarg.0
    IL_05c2:  ldarg.0
    IL_05c3:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_05c8:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_05cd:  stfld      class Trees.AVLNode Trees.AVL::root
    IL_05d2:  nop
    IL_05d3:  ldarg.0
    IL_05d4:  ldfld      class Trees.AVLNode Trees.AVL::root
    IL_05d9:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_05de:  ldnull
    IL_05df:  cgt.un
    IL_05e1:  stloc.s    V_38
    IL_05e3:  ldloc.s    V_38
    IL_05e5:  brtrue.s   IL_05c0

    IL_05e7:  ret
  } // end of method AVL::Rebalance

  .method public hidebysig instance void 
          Delete(class Trees.AVLNode node) cil managed
  {
    // Code size       483 (0x1e3)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5,
             [6] class Trees.AVLNode greatest,
             [7] class Trees.AVLNode parent,
             [8] bool V_8)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance bool Trees.AVLNode::isLeaf()
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_0056

    IL_000b:  nop
    IL_000c:  ldarg.1
    IL_000d:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0012:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0017:  ldarg.1
    IL_0018:  ceq
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  brfalse.s  IL_002e

    IL_001e:  nop
    IL_001f:  ldarg.1
    IL_0020:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0025:  ldnull
    IL_0026:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_002b:  nop
    IL_002c:  br.s       IL_003c

    IL_002e:  nop
    IL_002f:  ldarg.1
    IL_0030:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0035:  ldnull
    IL_0036:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_003b:  nop
    IL_003c:  ldarg.0
    IL_003d:  call       instance void Trees.AVL::PostOrderHeightCalculation()
    IL_0042:  nop
    IL_0043:  ldarg.0
    IL_0044:  ldarg.1
    IL_0045:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_004a:  call       instance void Trees.AVL::Rebalance(class Trees.AVLNode)
    IL_004f:  nop
    IL_0050:  nop
    IL_0051:  br         IL_01e2

    IL_0056:  ldarg.1
    IL_0057:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_005c:  brfalse.s  IL_0069

    IL_005e:  ldarg.1
    IL_005f:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0064:  ldnull
    IL_0065:  ceq
    IL_0067:  br.s       IL_006a

    IL_0069:  ldc.i4.0
    IL_006a:  stloc.2
    IL_006b:  ldloc.2
    IL_006c:  brfalse.s  IL_00e5

    IL_006e:  nop
    IL_006f:  ldarg.1
    IL_0070:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0075:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_007a:  ldarg.1
    IL_007b:  ceq
    IL_007d:  stloc.3
    IL_007e:  ldloc.3
    IL_007f:  brfalse.s  IL_00a7

    IL_0081:  nop
    IL_0082:  ldarg.1
    IL_0083:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0088:  ldarg.1
    IL_0089:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_008e:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0093:  ldarg.1
    IL_0094:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0099:  ldarg.1
    IL_009a:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_009f:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_00a4:  nop
    IL_00a5:  br.s       IL_00cb

    IL_00a7:  nop
    IL_00a8:  ldarg.1
    IL_00a9:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_00ae:  ldarg.1
    IL_00af:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_00b4:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_00b9:  ldarg.1
    IL_00ba:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_00bf:  ldarg.1
    IL_00c0:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_00c5:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_00ca:  nop
    IL_00cb:  ldarg.0
    IL_00cc:  call       instance void Trees.AVL::PostOrderHeightCalculation()
    IL_00d1:  nop
    IL_00d2:  ldarg.0
    IL_00d3:  ldarg.1
    IL_00d4:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_00d9:  call       instance void Trees.AVL::Rebalance(class Trees.AVLNode)
    IL_00de:  nop
    IL_00df:  nop
    IL_00e0:  br         IL_01e2

    IL_00e5:  ldarg.1
    IL_00e6:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_00eb:  brfalse.s  IL_00f8

    IL_00ed:  ldarg.1
    IL_00ee:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_00f3:  ldnull
    IL_00f4:  ceq
    IL_00f6:  br.s       IL_00f9

    IL_00f8:  ldc.i4.0
    IL_00f9:  stloc.s    V_4
    IL_00fb:  ldloc.s    V_4
    IL_00fd:  brfalse.s  IL_0175

    IL_00ff:  nop
    IL_0100:  ldarg.1
    IL_0101:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0106:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_010b:  ldarg.1
    IL_010c:  ceq
    IL_010e:  stloc.s    V_5
    IL_0110:  ldloc.s    V_5
    IL_0112:  brfalse.s  IL_013a

    IL_0114:  nop
    IL_0115:  ldarg.1
    IL_0116:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_011b:  ldarg.1
    IL_011c:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0121:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0126:  ldarg.1
    IL_0127:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_012c:  ldarg.1
    IL_012d:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0132:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0137:  nop
    IL_0138:  br.s       IL_015e

    IL_013a:  nop
    IL_013b:  ldarg.1
    IL_013c:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0141:  ldarg.1
    IL_0142:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0147:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_014c:  ldarg.1
    IL_014d:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0152:  ldarg.1
    IL_0153:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0158:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_015d:  nop
    IL_015e:  ldarg.0
    IL_015f:  call       instance void Trees.AVL::PostOrderHeightCalculation()
    IL_0164:  nop
    IL_0165:  ldarg.0
    IL_0166:  ldarg.1
    IL_0167:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_016c:  call       instance void Trees.AVL::Rebalance(class Trees.AVLNode)
    IL_0171:  nop
    IL_0172:  nop
    IL_0173:  br.s       IL_01e2

    IL_0175:  nop
    IL_0176:  ldarg.1
    IL_0177:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_017c:  stloc.s    greatest
    IL_017e:  br.s       IL_018b

    IL_0180:  nop
    IL_0181:  ldloc.s    greatest
    IL_0183:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0188:  stloc.s    greatest
    IL_018a:  nop
    IL_018b:  ldloc.s    greatest
    IL_018d:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0192:  ldnull
    IL_0193:  cgt.un
    IL_0195:  stloc.s    V_8
    IL_0197:  ldloc.s    V_8
    IL_0199:  brtrue.s   IL_0180

    IL_019b:  ldarg.1
    IL_019c:  ldloc.s    greatest
    IL_019e:  ldfld      int32 Trees.AVLNode::key
    IL_01a3:  stfld      int32 Trees.AVLNode::key
    IL_01a8:  ldloc.s    greatest
    IL_01aa:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01af:  ldloc.s    greatest
    IL_01b1:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_01b6:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_01bb:  ldloc.s    greatest
    IL_01bd:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01c2:  stloc.s    parent
    IL_01c4:  ldloc.s    greatest
    IL_01c6:  ldarg.1
    IL_01c7:  ldfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01cc:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_01d1:  ldarg.0
    IL_01d2:  call       instance void Trees.AVL::PostOrderHeightCalculation()
    IL_01d7:  nop
    IL_01d8:  ldarg.0
    IL_01d9:  ldloc.s    parent
    IL_01db:  call       instance void Trees.AVL::Rebalance(class Trees.AVLNode)
    IL_01e0:  nop
    IL_01e1:  nop
    IL_01e2:  ret
  } // end of method AVL::Delete

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class Trees.AVLNode Trees.AVL::root
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [mscorlib]System.Object::.ctor()
    IL_000d:  nop
    IL_000e:  ret
  } // end of method AVL::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     int32 Trees.AVL::highestId
    IL_0006:  ret
  } // end of method AVL::.cctor

} // end of class Trees.AVL

.class public auto ansi beforefieldinit Trees.AVLNode
       extends [mscorlib]System.Object
{
  .field public int32 id
  .field public int32 key
  .field public int32 height
  .field public class Trees.AVLNode parent
  .field public class Trees.AVLNode left
  .field public class Trees.AVLNode right
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 key) cil managed
  {
    // Code size       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class Trees.AVLNode Trees.AVLNode::parent
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  stfld      class Trees.AVLNode Trees.AVLNode::left
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0015:  ldarg.0
    IL_0016:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001b:  nop
    IL_001c:  nop
    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  stfld      int32 Trees.AVLNode::key
    IL_0024:  ldarg.0
    IL_0025:  ldsfld     int32 Trees.AVL::highestId
    IL_002a:  ldc.i4.1
    IL_002b:  add
    IL_002c:  dup
    IL_002d:  stsfld     int32 Trees.AVL::highestId
    IL_0032:  stfld      int32 Trees.AVLNode::id
    IL_0037:  ret
  } // end of method AVLNode::.ctor

  .method public hidebysig instance bool 
          isLeaf() cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0007:  brtrue.s   IL_0014

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_000f:  ldnull
    IL_0010:  ceq
    IL_0012:  br.s       IL_0015

    IL_0014:  ldc.i4.0
    IL_0015:  stloc.0
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method AVLNode::isLeaf

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "AVLNode: "
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Trees.AVLNode::key
    IL_000c:  box        [mscorlib]System.Int32
    IL_0011:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method AVLNode::ToString

  .method public hidebysig instance void 
          CalculateHeight() cil managed
  {
    // Code size       158 (0x9e)
    .maxstack  3
    .locals init ([0] bool V_0,
             [1] bool V_1,
             [2] bool V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance bool Trees.AVLNode::isLeaf()
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_0017

    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.1
    IL_000d:  stfld      int32 Trees.AVLNode::height
    IL_0012:  br         IL_009d

    IL_0017:  nop
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_001e:  ldnull
    IL_001f:  ceq
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  brfalse.s  IL_003c

    IL_0025:  nop
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_002d:  ldfld      int32 Trees.AVLNode::height
    IL_0032:  ldc.i4.1
    IL_0033:  add
    IL_0034:  stfld      int32 Trees.AVLNode::height
    IL_0039:  nop
    IL_003a:  br.s       IL_009c

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0042:  ldnull
    IL_0043:  ceq
    IL_0045:  stloc.2
    IL_0046:  ldloc.2
    IL_0047:  brfalse.s  IL_0060

    IL_0049:  nop
    IL_004a:  ldarg.0
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0051:  ldfld      int32 Trees.AVLNode::height
    IL_0056:  ldc.i4.1
    IL_0057:  add
    IL_0058:  stfld      int32 Trees.AVLNode::height
    IL_005d:  nop
    IL_005e:  br.s       IL_009c

    IL_0060:  nop
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0068:  ldfld      int32 Trees.AVLNode::height
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0073:  ldfld      int32 Trees.AVLNode::height
    IL_0078:  bgt.s      IL_0089

    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0080:  ldfld      int32 Trees.AVLNode::height
    IL_0085:  ldc.i4.1
    IL_0086:  add
    IL_0087:  br.s       IL_0096

    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_008f:  ldfld      int32 Trees.AVLNode::height
    IL_0094:  ldc.i4.1
    IL_0095:  add
    IL_0096:  stfld      int32 Trees.AVLNode::height
    IL_009b:  nop
    IL_009c:  nop
    IL_009d:  ret
  } // end of method AVLNode::CalculateHeight

  .method public hidebysig instance int32 
          Balance() cil managed
  {
    // Code size       51 (0x33)
    .maxstack  2
    .locals init ([0] int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_0007:  brfalse.s  IL_0016

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Trees.AVLNode Trees.AVLNode::right
    IL_000f:  ldfld      int32 Trees.AVLNode::height
    IL_0014:  br.s       IL_0017

    IL_0016:  ldc.i4.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_001d:  brfalse.s  IL_002c

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Trees.AVLNode Trees.AVLNode::left
    IL_0025:  ldfld      int32 Trees.AVLNode::height
    IL_002a:  br.s       IL_002d

    IL_002c:  ldc.i4.0
    IL_002d:  sub
    IL_002e:  stloc.0
    IL_002f:  br.s       IL_0031

    IL_0031:  ldloc.0
    IL_0032:  ret
  } // end of method AVLNode::Balance

} // end of class Trees.AVLNode

.class public auto ansi beforefieldinit Trees.BinarySearchTree
       extends [mscorlib]System.Object
{
  .field private class Trees.TNode root
  .field public static int32 highestId
  .method public hidebysig instance string 
          InOrderTraverse() cil managed
  {
    // Code size       467 (0x1d3)
    .maxstack  3
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.TNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.TNode previous,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] bool V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] string V_14)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.TNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_001f:  stloc.2
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.3
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.s    finishedLeft
    IL_0025:  br         IL_01be

    IL_002a:  nop
    IL_002b:  ldloc.s    finishedLeft
    IL_002d:  ldc.i4.0
    IL_002e:  ceq
    IL_0030:  stloc.s    V_5
    IL_0032:  ldloc.s    V_5
    IL_0034:  brfalse.s  IL_006c

    IL_0036:  nop
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_003d:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0042:  ldnull
    IL_0043:  ceq
    IL_0045:  stloc.s    V_6
    IL_0047:  ldloc.s    V_6
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  nop
    IL_004c:  ldc.i4.1
    IL_004d:  stloc.s    finishedLeft
    IL_004f:  nop
    IL_0050:  br.s       IL_0066

    IL_0052:  nop
    IL_0053:  ldloc.1
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_005a:  ldfld      class Trees.TNode Trees.TNode::left
    IL_005f:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_0064:  nop
    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  br         IL_01bd

    IL_006c:  nop
    IL_006d:  ldnull
    IL_006e:  stloc.s    previous
    IL_0070:  br         IL_0129

    IL_0075:  nop
    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_007c:  stloc.s    previous
    IL_007e:  ldloc.2
    IL_007f:  ldloc.1
    IL_0080:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0085:  ldfld      int32 Trees.TNode::id
    IL_008a:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_008f:  ldc.i4.0
    IL_0090:  ceq
    IL_0092:  stloc.s    V_8
    IL_0094:  ldloc.s    V_8
    IL_0096:  brfalse.s  IL_00ca

    IL_0098:  nop
    IL_0099:  ldloc.2
    IL_009a:  ldloc.1
    IL_009b:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00a0:  ldfld      int32 Trees.TNode::id
    IL_00a5:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00aa:  nop
    IL_00ab:  ldloc.0
    IL_00ac:  ldloc.1
    IL_00ad:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Pop()
    IL_00b2:  ldfld      int32 Trees.TNode::key
    IL_00b7:  box        [mscorlib]System.Int32
    IL_00bc:  ldstr      ", "
    IL_00c1:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00c6:  stloc.0
    IL_00c7:  nop
    IL_00c8:  br.s       IL_00d3

    IL_00ca:  nop
    IL_00cb:  ldloc.1
    IL_00cc:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Pop()
    IL_00d1:  pop
    IL_00d2:  nop
    IL_00d3:  ldloc.1
    IL_00d4:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00d9:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_00de:  ldarg.0
    IL_00df:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_00e4:  bne.un.s   IL_0100

    IL_00e6:  ldloc.1
    IL_00e7:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00ec:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_00f1:  ldfld      class Trees.TNode Trees.TNode::right
    IL_00f6:  ldloc.1
    IL_00f7:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00fc:  ceq
    IL_00fe:  br.s       IL_0101

    IL_0100:  ldc.i4.0
    IL_0101:  stloc.s    V_9
    IL_0103:  ldloc.s    V_9
    IL_0105:  brfalse.s  IL_0128

    IL_0107:  nop
    IL_0108:  ldc.i4.1
    IL_0109:  stloc.3
    IL_010a:  ldloc.0
    IL_010b:  ldloc.0
    IL_010c:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0111:  ldc.i4.2
    IL_0112:  sub
    IL_0113:  ldc.i4.2
    IL_0114:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0119:  stloc.0
    IL_011a:  ldloc.0
    IL_011b:  ldstr      "}"
    IL_0120:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0125:  stloc.0
    IL_0126:  br.s       IL_0151

    IL_0128:  nop
    IL_0129:  ldloc.1
    IL_012a:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_012f:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0134:  brfalse.s  IL_0147

    IL_0136:  ldloc.1
    IL_0137:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_013c:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0141:  ldloc.s    previous
    IL_0143:  ceq
    IL_0145:  br.s       IL_0148

    IL_0147:  ldc.i4.1
    IL_0148:  stloc.s    V_10
    IL_014a:  ldloc.s    V_10
    IL_014c:  brtrue     IL_0075

    IL_0151:  ldloc.3
    IL_0152:  ldc.i4.0
    IL_0153:  ceq
    IL_0155:  stloc.s    V_11
    IL_0157:  ldloc.s    V_11
    IL_0159:  brfalse.s  IL_01a7

    IL_015b:  nop
    IL_015c:  ldloc.2
    IL_015d:  ldloc.1
    IL_015e:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0163:  ldfld      int32 Trees.TNode::id
    IL_0168:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_016d:  ldc.i4.0
    IL_016e:  ceq
    IL_0170:  stloc.s    V_12
    IL_0172:  ldloc.s    V_12
    IL_0174:  brfalse.s  IL_01a6

    IL_0176:  nop
    IL_0177:  ldloc.2
    IL_0178:  ldloc.1
    IL_0179:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_017e:  ldfld      int32 Trees.TNode::id
    IL_0183:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0188:  nop
    IL_0189:  ldloc.0
    IL_018a:  ldloc.1
    IL_018b:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0190:  ldfld      int32 Trees.TNode::key
    IL_0195:  box        [mscorlib]System.Int32
    IL_019a:  ldstr      ", "
    IL_019f:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_01a4:  stloc.0
    IL_01a5:  nop
    IL_01a6:  nop
    IL_01a7:  ldc.i4.0
    IL_01a8:  stloc.s    finishedLeft
    IL_01aa:  ldloc.1
    IL_01ab:  ldloc.1
    IL_01ac:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_01b1:  ldfld      class Trees.TNode Trees.TNode::right
    IL_01b6:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_01bb:  nop
    IL_01bc:  nop
    IL_01bd:  nop
    IL_01be:  ldloc.3
    IL_01bf:  ldc.i4.0
    IL_01c0:  ceq
    IL_01c2:  stloc.s    V_13
    IL_01c4:  ldloc.s    V_13
    IL_01c6:  brtrue     IL_002a

    IL_01cb:  ldloc.0
    IL_01cc:  stloc.s    V_14
    IL_01ce:  br.s       IL_01d0

    IL_01d0:  ldloc.s    V_14
    IL_01d2:  ret
  } // end of method BinarySearchTree::InOrderTraverse

  .method public hidebysig instance string 
          PreOrderTraverse() cil managed
  {
    // Code size       664 (0x298)
    .maxstack  3
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.TNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] bool V_7,
             [8] class Trees.TNode previous,
             [9] bool V_9,
             [10] bool V_10,
             [11] bool V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] bool V_14,
             [15] bool V_15,
             [16] string V_16)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.TNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  ldloc.0
    IL_001b:  ldloc.1
    IL_001c:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0021:  ldfld      int32 Trees.TNode::key
    IL_0026:  box        [mscorlib]System.Int32
    IL_002b:  ldstr      ", "
    IL_0030:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0035:  stloc.0
    IL_0036:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_003b:  stloc.2
    IL_003c:  ldloc.2
    IL_003d:  ldloc.1
    IL_003e:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0043:  ldfld      int32 Trees.TNode::id
    IL_0048:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_004d:  nop
    IL_004e:  ldc.i4.0
    IL_004f:  stloc.3
    IL_0050:  ldc.i4.0
    IL_0051:  stloc.s    finishedLeft
    IL_0053:  br         IL_0283

    IL_0058:  nop
    IL_0059:  ldloc.s    finishedLeft
    IL_005b:  ldc.i4.0
    IL_005c:  ceq
    IL_005e:  stloc.s    V_5
    IL_0060:  ldloc.s    V_5
    IL_0062:  brfalse    IL_00e7

    IL_0067:  nop
    IL_0068:  ldloc.1
    IL_0069:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_006e:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0073:  ldnull
    IL_0074:  ceq
    IL_0076:  stloc.s    V_6
    IL_0078:  ldloc.s    V_6
    IL_007a:  brfalse.s  IL_0083

    IL_007c:  nop
    IL_007d:  ldc.i4.1
    IL_007e:  stloc.s    finishedLeft
    IL_0080:  nop
    IL_0081:  br.s       IL_00e1

    IL_0083:  nop
    IL_0084:  ldloc.1
    IL_0085:  ldloc.1
    IL_0086:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_008b:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0090:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_0095:  nop
    IL_0096:  ldloc.2
    IL_0097:  ldloc.1
    IL_0098:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_009d:  ldfld      int32 Trees.TNode::id
    IL_00a2:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_00a7:  ldc.i4.0
    IL_00a8:  ceq
    IL_00aa:  stloc.s    V_7
    IL_00ac:  ldloc.s    V_7
    IL_00ae:  brfalse.s  IL_00e0

    IL_00b0:  nop
    IL_00b1:  ldloc.2
    IL_00b2:  ldloc.1
    IL_00b3:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00b8:  ldfld      int32 Trees.TNode::id
    IL_00bd:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00c2:  nop
    IL_00c3:  ldloc.0
    IL_00c4:  ldloc.1
    IL_00c5:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00ca:  ldfld      int32 Trees.TNode::key
    IL_00cf:  box        [mscorlib]System.Int32
    IL_00d4:  ldstr      ", "
    IL_00d9:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00de:  stloc.0
    IL_00df:  nop
    IL_00e0:  nop
    IL_00e1:  nop
    IL_00e2:  br         IL_0282

    IL_00e7:  nop
    IL_00e8:  ldnull
    IL_00e9:  stloc.s    previous
    IL_00eb:  br         IL_01a4

    IL_00f0:  nop
    IL_00f1:  ldloc.1
    IL_00f2:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00f7:  stloc.s    previous
    IL_00f9:  ldloc.2
    IL_00fa:  ldloc.1
    IL_00fb:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0100:  ldfld      int32 Trees.TNode::id
    IL_0105:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_010a:  ldc.i4.0
    IL_010b:  ceq
    IL_010d:  stloc.s    V_9
    IL_010f:  ldloc.s    V_9
    IL_0111:  brfalse.s  IL_0145

    IL_0113:  nop
    IL_0114:  ldloc.2
    IL_0115:  ldloc.1
    IL_0116:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_011b:  ldfld      int32 Trees.TNode::id
    IL_0120:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0125:  nop
    IL_0126:  ldloc.0
    IL_0127:  ldloc.1
    IL_0128:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Pop()
    IL_012d:  ldfld      int32 Trees.TNode::key
    IL_0132:  box        [mscorlib]System.Int32
    IL_0137:  ldstr      ", "
    IL_013c:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0141:  stloc.0
    IL_0142:  nop
    IL_0143:  br.s       IL_014e

    IL_0145:  nop
    IL_0146:  ldloc.1
    IL_0147:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Pop()
    IL_014c:  pop
    IL_014d:  nop
    IL_014e:  ldloc.1
    IL_014f:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0154:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_015f:  bne.un.s   IL_017b

    IL_0161:  ldloc.1
    IL_0162:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0167:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_016c:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0171:  ldloc.1
    IL_0172:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0177:  ceq
    IL_0179:  br.s       IL_017c

    IL_017b:  ldc.i4.0
    IL_017c:  stloc.s    V_10
    IL_017e:  ldloc.s    V_10
    IL_0180:  brfalse.s  IL_01a3

    IL_0182:  nop
    IL_0183:  ldc.i4.1
    IL_0184:  stloc.3
    IL_0185:  ldloc.0
    IL_0186:  ldloc.0
    IL_0187:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_018c:  ldc.i4.2
    IL_018d:  sub
    IL_018e:  ldc.i4.2
    IL_018f:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0194:  stloc.0
    IL_0195:  ldloc.0
    IL_0196:  ldstr      "}"
    IL_019b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_01a0:  stloc.0
    IL_01a1:  br.s       IL_01cc

    IL_01a3:  nop
    IL_01a4:  ldloc.1
    IL_01a5:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_01aa:  ldfld      class Trees.TNode Trees.TNode::right
    IL_01af:  brfalse.s  IL_01c2

    IL_01b1:  ldloc.1
    IL_01b2:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_01b7:  ldfld      class Trees.TNode Trees.TNode::right
    IL_01bc:  ldloc.s    previous
    IL_01be:  ceq
    IL_01c0:  br.s       IL_01c3

    IL_01c2:  ldc.i4.1
    IL_01c3:  stloc.s    V_11
    IL_01c5:  ldloc.s    V_11
    IL_01c7:  brtrue     IL_00f0

    IL_01cc:  ldloc.3
    IL_01cd:  ldc.i4.0
    IL_01ce:  ceq
    IL_01d0:  stloc.s    V_12
    IL_01d2:  ldloc.s    V_12
    IL_01d4:  brfalse.s  IL_0222

    IL_01d6:  nop
    IL_01d7:  ldloc.2
    IL_01d8:  ldloc.1
    IL_01d9:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_01de:  ldfld      int32 Trees.TNode::id
    IL_01e3:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_01e8:  ldc.i4.0
    IL_01e9:  ceq
    IL_01eb:  stloc.s    V_13
    IL_01ed:  ldloc.s    V_13
    IL_01ef:  brfalse.s  IL_0221

    IL_01f1:  nop
    IL_01f2:  ldloc.2
    IL_01f3:  ldloc.1
    IL_01f4:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_01f9:  ldfld      int32 Trees.TNode::id
    IL_01fe:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0203:  nop
    IL_0204:  ldloc.0
    IL_0205:  ldloc.1
    IL_0206:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_020b:  ldfld      int32 Trees.TNode::key
    IL_0210:  box        [mscorlib]System.Int32
    IL_0215:  ldstr      ", "
    IL_021a:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_021f:  stloc.0
    IL_0220:  nop
    IL_0221:  nop
    IL_0222:  ldc.i4.0
    IL_0223:  stloc.s    finishedLeft
    IL_0225:  ldloc.1
    IL_0226:  ldloc.1
    IL_0227:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_022c:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0231:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_0236:  nop
    IL_0237:  ldloc.2
    IL_0238:  ldloc.1
    IL_0239:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_023e:  ldfld      int32 Trees.TNode::id
    IL_0243:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_0248:  ldc.i4.0
    IL_0249:  ceq
    IL_024b:  stloc.s    V_14
    IL_024d:  ldloc.s    V_14
    IL_024f:  brfalse.s  IL_0281

    IL_0251:  nop
    IL_0252:  ldloc.2
    IL_0253:  ldloc.1
    IL_0254:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0259:  ldfld      int32 Trees.TNode::id
    IL_025e:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0263:  nop
    IL_0264:  ldloc.0
    IL_0265:  ldloc.1
    IL_0266:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_026b:  ldfld      int32 Trees.TNode::key
    IL_0270:  box        [mscorlib]System.Int32
    IL_0275:  ldstr      ", "
    IL_027a:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_027f:  stloc.0
    IL_0280:  nop
    IL_0281:  nop
    IL_0282:  nop
    IL_0283:  ldloc.3
    IL_0284:  ldc.i4.0
    IL_0285:  ceq
    IL_0287:  stloc.s    V_15
    IL_0289:  ldloc.s    V_15
    IL_028b:  brtrue     IL_0058

    IL_0290:  ldloc.0
    IL_0291:  stloc.s    V_16
    IL_0293:  br.s       IL_0295

    IL_0295:  ldloc.s    V_16
    IL_0297:  ret
  } // end of method BinarySearchTree::PreOrderTraverse

  .method public hidebysig instance string 
          PostOrderTraverse() cil managed
  {
    // Code size       462 (0x1ce)
    .maxstack  3
    .locals init ([0] string description,
             [1] class Trees.Stack`1<class Trees.TNode> nodes,
             [2] class [mscorlib]System.Collections.Generic.List`1<int32> usedIds,
             [3] bool finished,
             [4] bool finishedLeft,
             [5] bool V_5,
             [6] bool V_6,
             [7] class Trees.TNode previous,
             [8] bool V_8,
             [9] int32 xxxxxx,
             [10] bool V_10,
             [11] bool V_11,
             [12] bool V_12,
             [13] bool V_13,
             [14] string V_14)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void class Trees.Stack`1<class Trees.TNode>::.ctor()
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0014:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_0019:  nop
    IL_001a:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<int32>::.ctor()
    IL_001f:  stloc.2
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.3
    IL_0022:  ldc.i4.0
    IL_0023:  stloc.s    finishedLeft
    IL_0025:  br         IL_01b9

    IL_002a:  nop
    IL_002b:  ldloc.s    finishedLeft
    IL_002d:  ldc.i4.0
    IL_002e:  ceq
    IL_0030:  stloc.s    V_5
    IL_0032:  ldloc.s    V_5
    IL_0034:  brfalse.s  IL_006c

    IL_0036:  nop
    IL_0037:  ldloc.1
    IL_0038:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_003d:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0042:  ldnull
    IL_0043:  ceq
    IL_0045:  stloc.s    V_6
    IL_0047:  ldloc.s    V_6
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  nop
    IL_004c:  ldc.i4.1
    IL_004d:  stloc.s    finishedLeft
    IL_004f:  nop
    IL_0050:  br.s       IL_0066

    IL_0052:  nop
    IL_0053:  ldloc.1
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_005a:  ldfld      class Trees.TNode Trees.TNode::left
    IL_005f:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_0064:  nop
    IL_0065:  nop
    IL_0066:  nop
    IL_0067:  br         IL_01b8

    IL_006c:  nop
    IL_006d:  ldnull
    IL_006e:  stloc.s    previous
    IL_0070:  ldloc.1
    IL_0071:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0076:  ldfld      int32 Trees.TNode::key
    IL_007b:  ldc.i4.6
    IL_007c:  ceq
    IL_007e:  stloc.s    V_8
    IL_0080:  ldloc.s    V_8
    IL_0082:  brfalse.s  IL_0089

    IL_0084:  nop
    IL_0085:  ldc.i4.0
    IL_0086:  stloc.s    xxxxxx
    IL_0088:  nop
    IL_0089:  br         IL_017a

    IL_008e:  nop
    IL_008f:  ldloc.1
    IL_0090:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0095:  stloc.s    previous
    IL_0097:  ldloc.2
    IL_0098:  ldloc.1
    IL_0099:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_009e:  ldfld      int32 Trees.TNode::id
    IL_00a3:  callvirt   instance bool class [mscorlib]System.Collections.Generic.List`1<int32>::Contains(!0)
    IL_00a8:  ldc.i4.0
    IL_00a9:  ceq
    IL_00ab:  stloc.s    V_10
    IL_00ad:  ldloc.s    V_10
    IL_00af:  brfalse.s  IL_00e3

    IL_00b1:  nop
    IL_00b2:  ldloc.2
    IL_00b3:  ldloc.1
    IL_00b4:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00b9:  ldfld      int32 Trees.TNode::id
    IL_00be:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00c3:  nop
    IL_00c4:  ldloc.0
    IL_00c5:  ldloc.1
    IL_00c6:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Pop()
    IL_00cb:  ldfld      int32 Trees.TNode::key
    IL_00d0:  box        [mscorlib]System.Int32
    IL_00d5:  ldstr      ", "
    IL_00da:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_00df:  stloc.0
    IL_00e0:  nop
    IL_00e1:  br.s       IL_00ec

    IL_00e3:  nop
    IL_00e4:  ldloc.1
    IL_00e5:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Pop()
    IL_00ea:  pop
    IL_00eb:  nop
    IL_00ec:  ldloc.1
    IL_00ed:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_00f2:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_00fd:  bne.un.s   IL_0119

    IL_00ff:  ldloc.1
    IL_0100:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0105:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_010a:  ldfld      class Trees.TNode Trees.TNode::right
    IL_010f:  ldloc.1
    IL_0110:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0115:  ceq
    IL_0117:  br.s       IL_011a

    IL_0119:  ldc.i4.0
    IL_011a:  stloc.s    V_11
    IL_011c:  ldloc.s    V_11
    IL_011e:  brfalse.s  IL_0179

    IL_0120:  nop
    IL_0121:  ldc.i4.1
    IL_0122:  stloc.3
    IL_0123:  ldloc.0
    IL_0124:  ldloc.1
    IL_0125:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_012a:  ldfld      int32 Trees.TNode::key
    IL_012f:  box        [mscorlib]System.Int32
    IL_0134:  ldstr      ", "
    IL_0139:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_013e:  stloc.0
    IL_013f:  ldloc.0
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0146:  ldfld      int32 Trees.TNode::key
    IL_014b:  box        [mscorlib]System.Int32
    IL_0150:  ldstr      ", "
    IL_0155:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_015a:  stloc.0
    IL_015b:  ldloc.0
    IL_015c:  ldloc.0
    IL_015d:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0162:  ldc.i4.2
    IL_0163:  sub
    IL_0164:  ldc.i4.2
    IL_0165:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_016a:  stloc.0
    IL_016b:  ldloc.0
    IL_016c:  ldstr      "}"
    IL_0171:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0176:  stloc.0
    IL_0177:  br.s       IL_01a2

    IL_0179:  nop
    IL_017a:  ldloc.1
    IL_017b:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_0180:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0185:  brfalse.s  IL_0198

    IL_0187:  ldloc.1
    IL_0188:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_018d:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0192:  ldloc.s    previous
    IL_0194:  ceq
    IL_0196:  br.s       IL_0199

    IL_0198:  ldc.i4.1
    IL_0199:  stloc.s    V_12
    IL_019b:  ldloc.s    V_12
    IL_019d:  brtrue     IL_008e

    IL_01a2:  ldc.i4.0
    IL_01a3:  stloc.s    finishedLeft
    IL_01a5:  ldloc.1
    IL_01a6:  ldloc.1
    IL_01a7:  callvirt   instance !0 class Trees.Stack`1<class Trees.TNode>::Peek()
    IL_01ac:  ldfld      class Trees.TNode Trees.TNode::right
    IL_01b1:  callvirt   instance void class Trees.Stack`1<class Trees.TNode>::Push(!0)
    IL_01b6:  nop
    IL_01b7:  nop
    IL_01b8:  nop
    IL_01b9:  ldloc.3
    IL_01ba:  ldc.i4.0
    IL_01bb:  ceq
    IL_01bd:  stloc.s    V_13
    IL_01bf:  ldloc.s    V_13
    IL_01c1:  brtrue     IL_002a

    IL_01c6:  ldloc.0
    IL_01c7:  stloc.s    V_14
    IL_01c9:  br.s       IL_01cb

    IL_01cb:  ldloc.s    V_14
    IL_01cd:  ret
  } // end of method BinarySearchTree::PostOrderTraverse

  .method public hidebysig instance string 
          LevelOrderTraverse() cil managed
  {
    // Code size       326 (0x146)
    .maxstack  3
    .locals init ([0] string description,
             [1] bool finished,
             [2] class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode> previousNodes,
             [3] class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode> currentNodes,
             [4] bool anyExist,
             [5] valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.TNode> V_5,
             [6] class Trees.TNode node,
             [7] bool V_7,
             [8] bool V_8,
             [9] bool V_9,
             [10] bool V_10,
             [11] string V_11)
    IL_0000:  nop
    IL_0001:  ldstr      "{"
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode>::.ctor()
    IL_000e:  stloc.2
    IL_000f:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode>::.ctor()
    IL_0014:  stloc.3
    IL_0015:  ldloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_001c:  ldfld      int32 Trees.TNode::key
    IL_0021:  box        [mscorlib]System.Int32
    IL_0026:  ldstr      ", "
    IL_002b:  call       string [mscorlib]System.String::Concat(object,
                                                                object,
                                                                object)
    IL_0030:  stloc.0
    IL_0031:  ldloc.2
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0038:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode>::Add(!0)
    IL_003d:  nop
    IL_003e:  br         IL_0115

    IL_0043:  nop
    IL_0044:  ldc.i4.0
    IL_0045:  stloc.s    anyExist
    IL_0047:  nop
    IL_0048:  ldloc.2
    IL_0049:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode>::GetEnumerator()
    IL_004e:  stloc.s    V_5
    .try
    {
      IL_0050:  br         IL_00e0

      IL_0055:  ldloca.s   V_5
      IL_0057:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.TNode>::get_Current()
      IL_005c:  stloc.s    node
      IL_005e:  nop
      IL_005f:  ldloc.s    node
      IL_0061:  ldfld      class Trees.TNode Trees.TNode::left
      IL_0066:  ldnull
      IL_0067:  cgt.un
      IL_0069:  stloc.s    V_7
      IL_006b:  ldloc.s    V_7
      IL_006d:  brfalse.s  IL_009f

      IL_006f:  nop
      IL_0070:  ldc.i4.1
      IL_0071:  stloc.s    anyExist
      IL_0073:  ldloc.0
      IL_0074:  ldloc.s    node
      IL_0076:  ldfld      class Trees.TNode Trees.TNode::left
      IL_007b:  ldfld      int32 Trees.TNode::key
      IL_0080:  box        [mscorlib]System.Int32
      IL_0085:  ldstr      ", "
      IL_008a:  call       string [mscorlib]System.String::Concat(object,
                                                                  object,
                                                                  object)
      IL_008f:  stloc.0
      IL_0090:  ldloc.3
      IL_0091:  ldloc.s    node
      IL_0093:  ldfld      class Trees.TNode Trees.TNode::left
      IL_0098:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode>::Add(!0)
      IL_009d:  nop
      IL_009e:  nop
      IL_009f:  ldloc.s    node
      IL_00a1:  ldfld      class Trees.TNode Trees.TNode::right
      IL_00a6:  ldnull
      IL_00a7:  cgt.un
      IL_00a9:  stloc.s    V_8
      IL_00ab:  ldloc.s    V_8
      IL_00ad:  brfalse.s  IL_00df

      IL_00af:  nop
      IL_00b0:  ldc.i4.1
      IL_00b1:  stloc.s    anyExist
      IL_00b3:  ldloc.0
      IL_00b4:  ldloc.s    node
      IL_00b6:  ldfld      class Trees.TNode Trees.TNode::right
      IL_00bb:  ldfld      int32 Trees.TNode::key
      IL_00c0:  box        [mscorlib]System.Int32
      IL_00c5:  ldstr      ", "
      IL_00ca:  call       string [mscorlib]System.String::Concat(object,
                                                                  object,
                                                                  object)
      IL_00cf:  stloc.0
      IL_00d0:  ldloc.3
      IL_00d1:  ldloc.s    node
      IL_00d3:  ldfld      class Trees.TNode Trees.TNode::right
      IL_00d8:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode>::Add(!0)
      IL_00dd:  nop
      IL_00de:  nop
      IL_00df:  nop
      IL_00e0:  ldloca.s   V_5
      IL_00e2:  call       instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.TNode>::MoveNext()
      IL_00e7:  brtrue     IL_0055

      IL_00ec:  leave.s    IL_00fd

    }  // end .try
    finally
    {
      IL_00ee:  ldloca.s   V_5
      IL_00f0:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<class Trees.TNode>
      IL_00f6:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00fb:  nop
      IL_00fc:  endfinally
    }  // end handler
    IL_00fd:  ldloc.3
    IL_00fe:  stloc.2
    IL_00ff:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<class Trees.TNode>::.ctor()
    IL_0104:  stloc.3
    IL_0105:  ldloc.s    anyExist
    IL_0107:  ldc.i4.0
    IL_0108:  ceq
    IL_010a:  stloc.s    V_9
    IL_010c:  ldloc.s    V_9
    IL_010e:  brfalse.s  IL_0114

    IL_0110:  nop
    IL_0111:  ldc.i4.1
    IL_0112:  stloc.1
    IL_0113:  nop
    IL_0114:  nop
    IL_0115:  ldloc.1
    IL_0116:  ldc.i4.0
    IL_0117:  ceq
    IL_0119:  stloc.s    V_10
    IL_011b:  ldloc.s    V_10
    IL_011d:  brtrue     IL_0043

    IL_0122:  ldloc.0
    IL_0123:  ldloc.0
    IL_0124:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0129:  ldc.i4.2
    IL_012a:  sub
    IL_012b:  ldc.i4.2
    IL_012c:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0131:  stloc.0
    IL_0132:  ldloc.0
    IL_0133:  ldstr      "}"
    IL_0138:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_013d:  stloc.0
    IL_013e:  ldloc.0
    IL_013f:  stloc.s    V_11
    IL_0141:  br.s       IL_0143

    IL_0143:  ldloc.s    V_11
    IL_0145:  ret
  } // end of method BinarySearchTree::LevelOrderTraverse

  .method public hidebysig instance class Trees.TNode 
          Search(int32 key) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  3
    .locals init ([0] class Trees.TNode V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0009:  call       instance class Trees.TNode Trees.BinarySearchTree::BFS(int32,
                                                                                class Trees.TNode)
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method BinarySearchTree::Search

  .method private hidebysig instance class Trees.TNode 
          BFS(int32 key,
              class Trees.TNode current) cil managed
  {
    // Code size       78 (0x4e)
    .maxstack  3
    .locals init ([0] class Trees.TNode right,
             [1] class Trees.TNode left,
             [2] bool V_2,
             [3] class Trees.TNode V_3,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.2
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.2
    IL_0006:  ldloc.2
    IL_0007:  brfalse.s  IL_000d

    IL_0009:  ldnull
    IL_000a:  stloc.3
    IL_000b:  br.s       IL_004c

    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldfld      int32 Trees.TNode::key
    IL_0014:  ceq
    IL_0016:  stloc.s    V_4
    IL_0018:  ldloc.s    V_4
    IL_001a:  brfalse.s  IL_0020

    IL_001c:  ldarg.2
    IL_001d:  stloc.3
    IL_001e:  br.s       IL_004c

    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0028:  call       instance class Trees.TNode Trees.BinarySearchTree::BFS(int32,
                                                                                class Trees.TNode)
    IL_002d:  stloc.0
    IL_002e:  ldarg.0
    IL_002f:  ldarg.1
    IL_0030:  ldarg.2
    IL_0031:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0036:  call       instance class Trees.TNode Trees.BinarySearchTree::BFS(int32,
                                                                                class Trees.TNode)
    IL_003b:  stloc.1
    IL_003c:  ldloc.0
    IL_003d:  brtrue.s   IL_0048

    IL_003f:  ldloc.1
    IL_0040:  brtrue.s   IL_0045

    IL_0042:  ldnull
    IL_0043:  br.s       IL_0046

    IL_0045:  ldloc.1
    IL_0046:  br.s       IL_0049

    IL_0048:  ldloc.0
    IL_0049:  stloc.3
    IL_004a:  br.s       IL_004c

    IL_004c:  ldloc.3
    IL_004d:  ret
  } // end of method BinarySearchTree::BFS

  .method public hidebysig instance class Trees.TNode 
          IterativeFind(int32 key) cil managed
  {
    // Code size       73 (0x49)
    .maxstack  2
    .locals init ([0] class Trees.TNode current,
             [1] bool V_1,
             [2] bool V_2,
             [3] class Trees.TNode V_3)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_002d

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      int32 Trees.TNode::key
    IL_0011:  ldarg.1
    IL_0012:  clt
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  brfalse.s  IL_0023

    IL_0018:  nop
    IL_0019:  ldloc.0
    IL_001a:  ldfld      class Trees.TNode Trees.TNode::right
    IL_001f:  stloc.0
    IL_0020:  nop
    IL_0021:  br.s       IL_002c

    IL_0023:  nop
    IL_0024:  ldloc.0
    IL_0025:  ldfld      class Trees.TNode Trees.TNode::left
    IL_002a:  stloc.0
    IL_002b:  nop
    IL_002c:  nop
    IL_002d:  ldloc.0
    IL_002e:  brfalse.s  IL_003e

    IL_0030:  ldloc.0
    IL_0031:  ldfld      int32 Trees.TNode::key
    IL_0036:  ldarg.1
    IL_0037:  ceq
    IL_0039:  ldc.i4.0
    IL_003a:  ceq
    IL_003c:  br.s       IL_003f

    IL_003e:  ldc.i4.0
    IL_003f:  stloc.2
    IL_0040:  ldloc.2
    IL_0041:  brtrue.s   IL_000a

    IL_0043:  ldloc.0
    IL_0044:  stloc.3
    IL_0045:  br.s       IL_0047

    IL_0047:  ldloc.3
    IL_0048:  ret
  } // end of method BinarySearchTree::IterativeFind

  .method public hidebysig instance class Trees.TNode 
          Minimum() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init ([0] class Trees.TNode current,
             [1] bool V_1,
             [2] class Trees.TNode V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_0013

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0011:  stloc.0
    IL_0012:  nop
    IL_0013:  ldloc.0
    IL_0014:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0019:  ldnull
    IL_001a:  cgt.un
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brtrue.s   IL_000a

    IL_0020:  ldloc.0
    IL_0021:  stloc.2
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.2
    IL_0025:  ret
  } // end of method BinarySearchTree::Minimum

  .method public hidebysig instance class Trees.TNode 
          Maximum() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init ([0] class Trees.TNode current,
             [1] bool V_1,
             [2] class Trees.TNode V_2)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_0013

    IL_000a:  nop
    IL_000b:  ldloc.0
    IL_000c:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0011:  stloc.0
    IL_0012:  nop
    IL_0013:  ldloc.0
    IL_0014:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0019:  ldnull
    IL_001a:  cgt.un
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brtrue.s   IL_000a

    IL_0020:  ldloc.0
    IL_0021:  stloc.2
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.2
    IL_0025:  ret
  } // end of method BinarySearchTree::Maximum

  .method public hidebysig instance void 
          Insert(class Trees.TNode newNode) cil managed
  {
    // Code size       147 (0x93)
    .maxstack  2
    .locals init ([0] class Trees.TNode current,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  cgt.un
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  brfalse.s  IL_0089

    IL_0010:  nop
    IL_0011:  br.s       IL_0081

    IL_0013:  nop
    IL_0014:  ldloc.0
    IL_0015:  ldfld      int32 Trees.TNode::key
    IL_001a:  ldarg.1
    IL_001b:  ldfld      int32 Trees.TNode::key
    IL_0020:  cgt
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  brfalse.s  IL_0053

    IL_0026:  nop
    IL_0027:  ldloc.0
    IL_0028:  ldfld      class Trees.TNode Trees.TNode::left
    IL_002d:  ldnull
    IL_002e:  cgt.un
    IL_0030:  stloc.3
    IL_0031:  ldloc.3
    IL_0032:  brfalse.s  IL_003f

    IL_0034:  nop
    IL_0035:  ldloc.0
    IL_0036:  ldfld      class Trees.TNode Trees.TNode::left
    IL_003b:  stloc.0
    IL_003c:  nop
    IL_003d:  br.s       IL_0050

    IL_003f:  nop
    IL_0040:  ldloc.0
    IL_0041:  ldarg.1
    IL_0042:  stfld      class Trees.TNode Trees.TNode::left
    IL_0047:  ldarg.1
    IL_0048:  ldloc.0
    IL_0049:  stfld      class Trees.TNode Trees.TNode::parent
    IL_004e:  br.s       IL_0086

    IL_0050:  nop
    IL_0051:  br.s       IL_0080

    IL_0053:  nop
    IL_0054:  ldloc.0
    IL_0055:  ldfld      class Trees.TNode Trees.TNode::right
    IL_005a:  ldnull
    IL_005b:  cgt.un
    IL_005d:  stloc.s    V_4
    IL_005f:  ldloc.s    V_4
    IL_0061:  brfalse.s  IL_006e

    IL_0063:  nop
    IL_0064:  ldloc.0
    IL_0065:  ldfld      class Trees.TNode Trees.TNode::right
    IL_006a:  stloc.0
    IL_006b:  nop
    IL_006c:  br.s       IL_007f

    IL_006e:  nop
    IL_006f:  ldloc.0
    IL_0070:  ldarg.1
    IL_0071:  stfld      class Trees.TNode Trees.TNode::right
    IL_0076:  ldarg.1
    IL_0077:  ldloc.0
    IL_0078:  stfld      class Trees.TNode Trees.TNode::parent
    IL_007d:  br.s       IL_0086

    IL_007f:  nop
    IL_0080:  nop
    IL_0081:  ldc.i4.1
    IL_0082:  stloc.s    V_5
    IL_0084:  br.s       IL_0013

    IL_0086:  nop
    IL_0087:  br.s       IL_0092

    IL_0089:  nop
    IL_008a:  ldarg.0
    IL_008b:  ldarg.1
    IL_008c:  stfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0091:  nop
    IL_0092:  ret
  } // end of method BinarySearchTree::Insert

  .method public hidebysig instance void 
          Delete(class Trees.TNode node) cil managed
  {
    // Code size       404 (0x194)
    .maxstack  2
    .locals init ([0] bool V_0,
             [1] bool V_1,
             [2] bool V_2,
             [3] bool V_3,
             [4] bool V_4,
             [5] bool V_5,
             [6] class Trees.TNode greatest,
             [7] bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance bool Trees.TNode::isLeaf()
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_0042

    IL_000b:  nop
    IL_000c:  ldarg.1
    IL_000d:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0012:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0017:  ldarg.1
    IL_0018:  ceq
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  brfalse.s  IL_002e

    IL_001e:  nop
    IL_001f:  ldarg.1
    IL_0020:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0025:  ldnull
    IL_0026:  stfld      class Trees.TNode Trees.TNode::left
    IL_002b:  nop
    IL_002c:  br.s       IL_003c

    IL_002e:  nop
    IL_002f:  ldarg.1
    IL_0030:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0035:  ldnull
    IL_0036:  stfld      class Trees.TNode Trees.TNode::right
    IL_003b:  nop
    IL_003c:  nop
    IL_003d:  br         IL_0193

    IL_0042:  ldarg.1
    IL_0043:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0048:  brfalse.s  IL_0055

    IL_004a:  ldarg.1
    IL_004b:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0050:  ldnull
    IL_0051:  ceq
    IL_0053:  br.s       IL_0056

    IL_0055:  ldc.i4.0
    IL_0056:  stloc.2
    IL_0057:  ldloc.2
    IL_0058:  brfalse.s  IL_00bd

    IL_005a:  nop
    IL_005b:  ldarg.1
    IL_005c:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0061:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0066:  ldarg.1
    IL_0067:  ceq
    IL_0069:  stloc.3
    IL_006a:  ldloc.3
    IL_006b:  brfalse.s  IL_0093

    IL_006d:  nop
    IL_006e:  ldarg.1
    IL_006f:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0074:  ldarg.1
    IL_0075:  ldfld      class Trees.TNode Trees.TNode::right
    IL_007a:  stfld      class Trees.TNode Trees.TNode::left
    IL_007f:  ldarg.1
    IL_0080:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0085:  ldarg.1
    IL_0086:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_008b:  stfld      class Trees.TNode Trees.TNode::parent
    IL_0090:  nop
    IL_0091:  br.s       IL_00b7

    IL_0093:  nop
    IL_0094:  ldarg.1
    IL_0095:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_009a:  ldarg.1
    IL_009b:  ldfld      class Trees.TNode Trees.TNode::right
    IL_00a0:  stfld      class Trees.TNode Trees.TNode::right
    IL_00a5:  ldarg.1
    IL_00a6:  ldfld      class Trees.TNode Trees.TNode::right
    IL_00ab:  ldarg.1
    IL_00ac:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_00b1:  stfld      class Trees.TNode Trees.TNode::parent
    IL_00b6:  nop
    IL_00b7:  nop
    IL_00b8:  br         IL_0193

    IL_00bd:  ldarg.1
    IL_00be:  ldfld      class Trees.TNode Trees.TNode::left
    IL_00c3:  brfalse.s  IL_00d0

    IL_00c5:  ldarg.1
    IL_00c6:  ldfld      class Trees.TNode Trees.TNode::right
    IL_00cb:  ldnull
    IL_00cc:  ceq
    IL_00ce:  br.s       IL_00d1

    IL_00d0:  ldc.i4.0
    IL_00d1:  stloc.s    V_4
    IL_00d3:  ldloc.s    V_4
    IL_00d5:  brfalse.s  IL_0139

    IL_00d7:  nop
    IL_00d8:  ldarg.1
    IL_00d9:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_00de:  ldfld      class Trees.TNode Trees.TNode::left
    IL_00e3:  ldarg.1
    IL_00e4:  ceq
    IL_00e6:  stloc.s    V_5
    IL_00e8:  ldloc.s    V_5
    IL_00ea:  brfalse.s  IL_0112

    IL_00ec:  nop
    IL_00ed:  ldarg.1
    IL_00ee:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_00f3:  ldarg.1
    IL_00f4:  ldfld      class Trees.TNode Trees.TNode::left
    IL_00f9:  stfld      class Trees.TNode Trees.TNode::left
    IL_00fe:  ldarg.1
    IL_00ff:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0104:  ldarg.1
    IL_0105:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_010a:  stfld      class Trees.TNode Trees.TNode::parent
    IL_010f:  nop
    IL_0110:  br.s       IL_0136

    IL_0112:  nop
    IL_0113:  ldarg.1
    IL_0114:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0119:  ldarg.1
    IL_011a:  ldfld      class Trees.TNode Trees.TNode::left
    IL_011f:  stfld      class Trees.TNode Trees.TNode::right
    IL_0124:  ldarg.1
    IL_0125:  ldfld      class Trees.TNode Trees.TNode::right
    IL_012a:  ldarg.1
    IL_012b:  ldfld      class Trees.TNode Trees.TNode::parent
    IL_0130:  stfld      class Trees.TNode Trees.TNode::parent
    IL_0135:  nop
    IL_0136:  nop
    IL_0137:  br.s       IL_0193

    IL_0139:  nop
    IL_013a:  ldarg.1
    IL_013b:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0140:  stloc.s    greatest
    IL_0142:  br.s       IL_014f

    IL_0144:  nop
    IL_0145:  ldloc.s    greatest
    IL_0147:  ldfld      class Trees.TNode Trees.TNode::right
    IL_014c:  stloc.s    greatest
    IL_014e:  nop
    IL_014f:  ldloc.s    greatest
    IL_0151:  ldfld      class Trees.TNode Trees.TNode::right
    IL_0156:  ldnull
    IL_0157:  cgt.un
    IL_0159:  stloc.s    V_7
    IL_015b:  ldloc.s    V_7
    IL_015d:  brtrue.s   IL_0144

    IL_015f:  ldarg.1
    IL_0160:  ldloc.s    greatest
    IL_0162:  ldfld      int32 Trees.TNode::key
    IL_0167:  stfld      int32 Trees.TNode::key
    IL_016c:  ldloc.s    greatest
    IL_016e:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0173:  ldarg.1
    IL_0174:  stfld      class Trees.TNode Trees.TNode::parent
    IL_0179:  ldarg.1
    IL_017a:  ldloc.s    greatest
    IL_017c:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0181:  stfld      class Trees.TNode Trees.TNode::left
    IL_0186:  ldarg.1
    IL_0187:  ldfld      class Trees.TNode Trees.TNode::right
    IL_018c:  ldarg.1
    IL_018d:  stfld      class Trees.TNode Trees.TNode::parent
    IL_0192:  nop
    IL_0193:  ret
  } // end of method BinarySearchTree::Delete

  .method public hidebysig instance bool 
          IsEmpty() cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0007:  ldnull
    IL_0008:  cgt.un
    IL_000a:  stloc.0
    IL_000b:  br.s       IL_000d

    IL_000d:  ldloc.0
    IL_000e:  ret
  } // end of method BinarySearchTree::IsEmpty

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class Trees.TNode Trees.BinarySearchTree::root
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [mscorlib]System.Object::.ctor()
    IL_000d:  nop
    IL_000e:  ret
  } // end of method BinarySearchTree::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     int32 Trees.BinarySearchTree::highestId
    IL_0006:  ret
  } // end of method BinarySearchTree::.cctor

} // end of class Trees.BinarySearchTree

.class public auto ansi beforefieldinit Trees.TNode
       extends [mscorlib]System.Object
{
  .field public int32 id
  .field public int32 key
  .field public class Trees.TNode parent
  .field public class Trees.TNode left
  .field public class Trees.TNode right
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 key) cil managed
  {
    // Code size       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  stfld      class Trees.TNode Trees.TNode::parent
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  stfld      class Trees.TNode Trees.TNode::left
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      class Trees.TNode Trees.TNode::right
    IL_0015:  ldarg.0
    IL_0016:  call       instance void [mscorlib]System.Object::.ctor()
    IL_001b:  nop
    IL_001c:  nop
    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  stfld      int32 Trees.TNode::key
    IL_0024:  ldarg.0
    IL_0025:  ldsfld     int32 Trees.BinarySearchTree::highestId
    IL_002a:  ldc.i4.1
    IL_002b:  add
    IL_002c:  dup
    IL_002d:  stsfld     int32 Trees.BinarySearchTree::highestId
    IL_0032:  stfld      int32 Trees.TNode::id
    IL_0037:  ret
  } // end of method TNode::.ctor

  .method public hidebysig instance bool 
          isLeaf() cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.TNode Trees.TNode::left
    IL_0007:  brtrue.s   IL_0014

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Trees.TNode Trees.TNode::right
    IL_000f:  ldnull
    IL_0010:  ceq
    IL_0012:  br.s       IL_0015

    IL_0014:  ldc.i4.0
    IL_0015:  stloc.0
    IL_0016:  br.s       IL_0018

    IL_0018:  ldloc.0
    IL_0019:  ret
  } // end of method TNode::isLeaf

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  2
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "TNode: "
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Trees.TNode::key
    IL_000c:  box        [mscorlib]System.Int32
    IL_0011:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method TNode::ToString

} // end of class Trees.TNode

.class private auto ansi beforefieldinit Trees.Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       118 (0x76)
    .maxstack  2
    .locals init ([0] class Trees.RedBlackTree tree)


    ldstr "Muahahahahahaha"
    call void [mscorlib]System.Console::WriteLine(string)
    call string [mscorlib]System.Console::ReadLine()
    pop



    IL_0000:  nop
    IL_0001:  newobj     instance void Trees.RedBlackTree::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.8
    IL_0009:  newobj     instance void Trees.RBNode::.ctor(int32)
    IL_000e:  callvirt   instance void Trees.RedBlackTree::Insert(class Trees.RBNode)
    IL_0013:  nop
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.5
    IL_0016:  newobj     instance void Trees.RBNode::.ctor(int32)
    IL_001b:  callvirt   instance void Trees.RedBlackTree::Insert(class Trees.RBNode)
    IL_0020:  nop
    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.7
    IL_0023:  newobj     instance void Trees.RBNode::.ctor(int32)
    IL_0028:  callvirt   instance void Trees.RedBlackTree::Insert(class Trees.RBNode)
    IL_002d:  nop
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.s   11
    IL_0031:  newobj     instance void Trees.RBNode::.ctor(int32)
    IL_0036:  callvirt   instance void Trees.RedBlackTree::Insert(class Trees.RBNode)
    IL_003b:  nop
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.s   9
    IL_003f:  newobj     instance void Trees.RBNode::.ctor(int32)
    IL_0044:  callvirt   instance void Trees.RedBlackTree::Insert(class Trees.RBNode)
    IL_0049:  nop
    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.s   10
    IL_004d:  newobj     instance void Trees.RBNode::.ctor(int32)
    IL_0052:  callvirt   instance void Trees.RedBlackTree::Insert(class Trees.RBNode)
    IL_0057:  nop
    IL_0058:  ldloc.0
    IL_0059:  callvirt   instance string Trees.RedBlackTree::LevelOrderTraverse()
    IL_005e:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0063:  nop
    IL_0064:  ldstr      ""
    IL_0069:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_006e:  nop
    IL_006f:  call       valuetype [mscorlib]System.ConsoleKeyInfo [mscorlib]System.Console::ReadKey()
    IL_0074:  pop
    IL_0075:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class Trees.Program

.class private auto ansi beforefieldinit Trees.SinglyLinkedNode`1<T>
       extends [mscorlib]System.Object
{
  .field public !T Item
  .field public class Trees.SinglyLinkedNode`1<!T> Next
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(!T Item,
                               class Trees.SinglyLinkedNode`1<!T> next) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      !0 class Trees.SinglyLinkedNode`1<!T>::Item
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      class Trees.SinglyLinkedNode`1<!0> class Trees.SinglyLinkedNode`1<!T>::Next
    IL_0016:  ret
  } // end of method SinglyLinkedNode`1::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(!T Item) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      !0 class Trees.SinglyLinkedNode`1<!T>::Item
    IL_000f:  ret
  } // end of method SinglyLinkedNode`1::.ctor

  .method public hidebysig instance void 
          AddAfter(class Trees.SinglyLinkedNode`1<!T> node) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      class Trees.SinglyLinkedNode`1<!0> class Trees.SinglyLinkedNode`1<!T>::Next
    IL_0008:  ret
  } // end of method SinglyLinkedNode`1::AddAfter

} // end of class Trees.SinglyLinkedNode`1

.class public auto ansi beforefieldinit Trees.Stack`1<T>
       extends [mscorlib]System.Object
{
  .field private class Trees.SinglyLinkedNode`1<!T> head
  .method public hidebysig instance void 
          Push(!T 'value') cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_0009:  newobj     instance void class Trees.SinglyLinkedNode`1<!T>::.ctor(!0,
                                                                                 class Trees.SinglyLinkedNode`1<!0>)
    IL_000e:  stfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_0013:  ret
  } // end of method Stack`1::Push

  .method public hidebysig instance !T  Pop() cil managed
  {
    // Code size       53 (0x35)
    .maxstack  2
    .locals init ([0] !T item,
             [1] class [mscorlib]System.NullReferenceException e,
             [2] !T V_2)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldarg.0
      IL_0003:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
      IL_0008:  ldfld      !0 class Trees.SinglyLinkedNode`1<!T>::Item
      IL_000d:  stloc.0
      IL_000e:  nop
      IL_000f:  leave.s    IL_001e

    }  // end .try
    catch [mscorlib]System.NullReferenceException 
    {
      IL_0011:  stloc.1
      IL_0012:  nop
      IL_0013:  ldstr      "No head to return"
      IL_0018:  newobj     instance void [mscorlib]System.Exception::.ctor(string)
      IL_001d:  throw

    }  // end handler
    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_0025:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.SinglyLinkedNode`1<!T>::Next
    IL_002a:  stfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_002f:  ldloc.0
    IL_0030:  stloc.2
    IL_0031:  br.s       IL_0033

    IL_0033:  ldloc.2
    IL_0034:  ret
  } // end of method Stack`1::Pop

  .method public hidebysig instance !T  Peek() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  1
    .locals init ([0] !T V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_0007:  ldfld      !0 class Trees.SinglyLinkedNode`1<!T>::Item
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method Stack`1::Peek

  .method public hidebysig instance bool 
          IsEmpty() cil managed
  {
    // Code size       15 (0xf)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_0007:  ldnull
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  br.s       IL_000d

    IL_000d:  ldloc.0
    IL_000e:  ret
  } // end of method Stack`1::IsEmpty

  .method public hidebysig instance string 
          ToString() cil managed
  {
    // Code size       193 (0xc1)
    .maxstack  4
    .locals init ([0] string 'value',
             [1] class Trees.SinglyLinkedNode`1<!T> current,
             [2] bool V_2,
             [3] bool V_3,
             [4] string V_4,
             [5] bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance bool class Trees.Stack`1<!T>::IsEmpty()
    IL_0007:  stloc.2
    IL_0008:  ldloc.2
    IL_0009:  brfalse.s  IL_002b

    IL_000b:  nop
    IL_000c:  ldstr      "{ } Count = 0 IsEmpty = "
    IL_0011:  ldarg.0
    IL_0012:  call       instance bool class Trees.Stack`1<!T>::IsEmpty()
    IL_0017:  stloc.3
    IL_0018:  ldloca.s   V_3
    IL_001a:  call       instance string [mscorlib]System.Boolean::ToString()
    IL_001f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0024:  stloc.s    V_4
    IL_0026:  br         IL_00be

    IL_002b:  ldstr      "{"
    IL_0030:  stloc.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_0037:  stloc.1
    IL_0038:  br.s       IL_0060

    IL_003a:  nop
    IL_003b:  ldloc.0
    IL_003c:  ldloc.1
    IL_003d:  ldflda     !0 class Trees.SinglyLinkedNode`1<!T>::Item
    IL_0042:  constrained. !T
    IL_0048:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_004d:  ldstr      ", "
    IL_0052:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0057:  stloc.0
    IL_0058:  ldloc.1
    IL_0059:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.SinglyLinkedNode`1<!T>::Next
    IL_005e:  stloc.1
    IL_005f:  nop
    IL_0060:  ldloc.1
    IL_0061:  ldnull
    IL_0062:  cgt.un
    IL_0064:  stloc.s    V_5
    IL_0066:  ldloc.s    V_5
    IL_0068:  brtrue.s   IL_003a

    IL_006a:  ldloc.0
    IL_006b:  ldloc.0
    IL_006c:  call       int32 [System.Core]System.Linq.Enumerable::Count<char>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0071:  ldc.i4.2
    IL_0072:  sub
    IL_0073:  ldc.i4.2
    IL_0074:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0079:  stloc.0
    IL_007a:  ldc.i4.5
    IL_007b:  newarr     [mscorlib]System.Object
    IL_0080:  dup
    IL_0081:  ldc.i4.0
    IL_0082:  ldloc.0
    IL_0083:  stelem.ref
    IL_0084:  dup
    IL_0085:  ldc.i4.1
    IL_0086:  ldstr      "} Count = "
    IL_008b:  stelem.ref
    IL_008c:  dup
    IL_008d:  ldc.i4.2
    IL_008e:  ldarg.0
    IL_008f:  call       instance int32 class Trees.Stack`1<!T>::Count()
    IL_0094:  box        [mscorlib]System.Int32
    IL_0099:  stelem.ref
    IL_009a:  dup
    IL_009b:  ldc.i4.3
    IL_009c:  ldstr      " IsEmpty = "
    IL_00a1:  stelem.ref
    IL_00a2:  dup
    IL_00a3:  ldc.i4.4
    IL_00a4:  ldarg.0
    IL_00a5:  call       instance bool class Trees.Stack`1<!T>::IsEmpty()
    IL_00aa:  stloc.3
    IL_00ab:  ldloca.s   V_3
    IL_00ad:  call       instance string [mscorlib]System.Boolean::ToString()
    IL_00b2:  stelem.ref
    IL_00b3:  call       string [mscorlib]System.String::Concat(object[])
    IL_00b8:  stloc.0
    IL_00b9:  ldloc.0
    IL_00ba:  stloc.s    V_4
    IL_00bc:  br.s       IL_00be

    IL_00be:  ldloc.s    V_4
    IL_00c0:  ret
  } // end of method Stack`1::ToString

  .method public hidebysig instance int32 
          Count() cil managed
  {
    // Code size       65 (0x41)
    .maxstack  2
    .locals init ([0] class Trees.SinglyLinkedNode`1<!T> current,
             [1] int32 x,
             [2] bool V_2,
             [3] int32 V_3,
             [4] bool V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.Stack`1<!T>::head
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.1
    IL_000a:  ldloc.0
    IL_000b:  ldnull
    IL_000c:  cgt.un
    IL_000e:  stloc.2
    IL_000f:  ldloc.2
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  nop
    IL_0013:  ldc.i4.1
    IL_0014:  stloc.1
    IL_0015:  nop
    IL_0016:  br.s       IL_001d

    IL_0018:  nop
    IL_0019:  ldc.i4.0
    IL_001a:  stloc.3
    IL_001b:  br.s       IL_003f

    IL_001d:  br.s       IL_002c

    IL_001f:  nop
    IL_0020:  ldloc.1
    IL_0021:  ldc.i4.1
    IL_0022:  add
    IL_0023:  stloc.1
    IL_0024:  ldloc.0
    IL_0025:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.SinglyLinkedNode`1<!T>::Next
    IL_002a:  stloc.0
    IL_002b:  nop
    IL_002c:  ldloc.0
    IL_002d:  ldfld      class Trees.SinglyLinkedNode`1<!0> class Trees.SinglyLinkedNode`1<!T>::Next
    IL_0032:  ldnull
    IL_0033:  cgt.un
    IL_0035:  stloc.s    V_4
    IL_0037:  ldloc.s    V_4
    IL_0039:  brtrue.s   IL_001f

    IL_003b:  ldloc.1
    IL_003c:  stloc.3
    IL_003d:  br.s       IL_003f

    IL_003f:  ldloc.3
    IL_0040:  ret
  } // end of method Stack`1::Count

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Stack`1::.ctor

} // end of class Trees.Stack`1


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file Trees.res
