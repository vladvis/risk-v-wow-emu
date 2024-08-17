function Init_rv32i_controlflow(CPU)
    CPU.entrypoint = 0x80000000
    CPU.stack_pointer = 0x7ff00000
    CPU.heap_start = 0x80001000

    local mem_sections = {
    
        [0x80000000] = 0x513,
        [0x80000004] = 0xa00093,
        [0x80000008] = 0xa00113,
        [0x8000000c] = 0x208463,
        [0x80000010] = 0xc0006f,
        [0x80000014] = 0x150513,
        [0x80000018] = 0x80006f,
        [0x8000001c] = 0xc00006f,
        [0x80000020] = 0xa00093,
        [0x80000024] = 0x1400113,
        [0x80000028] = 0x209463,
        [0x8000002c] = 0xc0006f,
        [0x80000030] = 0x150513,
        [0x80000034] = 0x80006f,
        [0x80000038] = 0xa40006f,
        [0x8000003c] = 0xa00093,
        [0x80000040] = 0x1400113,
        [0x80000044] = 0x20c463,
        [0x80000048] = 0xc0006f,
        [0x8000004c] = 0x150513,
        [0x80000050] = 0x80006f,
        [0x80000054] = 0x880006f,
        [0x80000058] = 0x1400093,
        [0x8000005c] = 0xa00113,
        [0x80000060] = 0x20d463,
        [0x80000064] = 0xc0006f,
        [0x80000068] = 0x150513,
        [0x8000006c] = 0x80006f,
        [0x80000070] = 0x6c0006f,
        [0x80000074] = 0xa00093,
        [0x80000078] = 0x1400113,
        [0x8000007c] = 0x20e463,
        [0x80000080] = 0xc0006f,
        [0x80000084] = 0x150513,
        [0x80000088] = 0x80006f,
        [0x8000008c] = 0x500006f,
        [0x80000090] = 0x1400093,
        [0x80000094] = 0xa00113,
        [0x80000098] = 0x20f463,
        [0x8000009c] = 0xc0006f,
        [0x800000a0] = 0x150513,
        [0x800000a4] = 0x80006f,
        [0x800000a8] = 0x340006f,
        [0x800000ac] = 0x8000ef,
        [0x800000b0] = 0xc0006f,
        [0x800000b4] = 0x150513,
        [0x800000b8] = 0x80006f,
        [0x800000bc] = 0x200006f,
        [0x800000c0] = 0x97,
        [0x800000c4] = 0x1008093,
        [0x800000c8] = 0x8167,
        [0x800000cc] = 0xc0006f,
        [0x800000d0] = 0x150513,
        [0x800000d4] = 0x80006f,
        [0x800000d8] = 0x40006f,
        [0x800000dc] = 0x5d00893,
        [0x800000e0] = 0x73,
        [0x0] = 0x0,
        [0x4] = 0x0,
        [0x8] = 0x0,
        [0xc] = 0x0,
        [0x10] = 0x0,
        [0x14] = 0x0,
        [0x18] = 0x0,
        [0x1c] = 0x0,
        [0x20] = 0x0,
        [0x24] = 0x0,
        [0x28] = 0x0,
        [0x2c] = 0x0,
        [0x30] = 0x0,
        [0x34] = 0x0,
        [0x38] = 0x0,
        [0x3c] = 0x0,
        [0x40] = 0x0,
        [0x44] = 0x0,
        [0x48] = 0x0,
        [0x4c] = 0x0,
        [0x50] = 0x0,
        [0x54] = 0x0,
        [0x58] = 0x0,
        [0x5c] = 0x0,
        [0x60] = 0x0,
        [0x64] = 0x0,
        [0x68] = 0x0,
        [0x6c] = 0x0,
        [0x70] = 0x0,
        [0x74] = 0x0,
        [0x78] = 0x0,
        [0x7c] = 0x0,
        [0x80] = 0x0,
        [0x84] = 0x0,
        [0x88] = 0x0,
        [0x8c] = 0x0,
        [0x90] = 0x0,
        [0x94] = 0x0,
        [0x98] = 0x0,
        [0x9c] = 0x0,
        [0xa0] = 0x0,
        [0xa4] = 0x0,
        [0xa8] = 0x0,
        [0xac] = 0x0,
        [0xb0] = 0x0,
        [0xb4] = 0x0,
        [0xb8] = 0x0,
        [0xbc] = 0x0,
        [0xc0] = 0x0,
        [0xc4] = 0x0,
        [0xc8] = 0x0,
        [0xcc] = 0x0,
        [0xd0] = 0x0,
        [0xd4] = 0x0,
        [0xd8] = 0x0,
        [0xdc] = 0x0,
        [0xe0] = 0x0,
        [0xe4] = 0x0,
        [0xe8] = 0x0,
        [0xec] = 0x0,
        [0xf0] = 0x0,
        [0xf4] = 0x0,
        [0xf8] = 0x0,
        [0xfc] = 0x0,
        [0x100] = 0x0,
        [0x104] = 0x0,
        [0x108] = 0x0,
        [0x10c] = 0x0,
        [0x110] = 0x0,
        [0x114] = 0x0,
        [0x118] = 0x0,
        [0x11c] = 0x0,
        [0x120] = 0x0,
        [0x124] = 0x0,
        [0x128] = 0x0,
        [0x12c] = 0x0,
        [0x130] = 0x0,
        [0x134] = 0x0,
        [0x138] = 0x0,
        [0x13c] = 0x0,
        [0x140] = 0x0,
        [0x144] = 0x0,
        [0x148] = 0x0,
        [0x14c] = 0x0,
        [0x150] = 0x0,
        [0x154] = 0x0,
        [0x158] = 0x0,
        [0x15c] = 0x0,
        [0x160] = 0x0,
        [0x164] = 0x0,
        [0x168] = 0x0,
        [0x16c] = 0x0,
        [0x170] = 0x0,
        [0x174] = 0x0,
        [0x178] = 0x0,
        [0x17c] = 0x0,
        [0x180] = 0x0,
        [0x184] = 0x0,
        [0x188] = 0x0,
        [0x18c] = 0x0,
        [0x190] = 0x0,
        [0x194] = 0x0,
        [0x198] = 0x0,
        [0x19c] = 0x0,
        [0x1a0] = 0x0,
        [0x1a4] = 0x0,
        [0x1a8] = 0x0,
        [0x1ac] = 0x0,
        [0x1b0] = 0x0,
        [0x1b4] = 0x0,
        [0x1b8] = 0x0,
        [0x1bc] = 0x0,
        [0x1c0] = 0x0,
        [0x1c4] = 0x0,
        [0x1c8] = 0x0,
        [0x1cc] = 0x0,
        [0x1d0] = 0x0,
        [0x1d4] = 0x0,
        [0x1d8] = 0x0,
        [0x1dc] = 0x0,
        [0x1e0] = 0x0,
        [0x1e4] = 0x0,
        [0x1e8] = 0x0,
        [0x1ec] = 0x0,
        [0x1f0] = 0x0,
        [0x1f4] = 0x0,
        [0x1f8] = 0x0,
        [0x1fc] = 0x0,
        [0x200] = 0x0,
        [0x204] = 0x0,
        [0x208] = 0x0,
        [0x20c] = 0x0,
        [0x210] = 0x0,
        [0x214] = 0x0,
        [0x218] = 0x0,
        [0x21c] = 0x0,
        [0x220] = 0x0,
        [0x224] = 0x0,
        [0x228] = 0x0,
        [0x22c] = 0x0,
        [0x230] = 0x0,
        [0x234] = 0x0,
        [0x238] = 0x0,
        [0x23c] = 0x0,
        [0x7ff00000] = 0x0,
        [0x7feffffc] = 0x0,
        [0x7feffff8] = 0x0,
        [0x7feffff4] = 0x0,
        [0x7feffff0] = 0x0,
        [0x7fefffec] = 0x0,
        [0x7fefffe8] = 0x0,
        [0x7fefffe4] = 0x0,
        [0x7fefffe0] = 0x0,
        [0x7fefffdc] = 0x0,
        [0x7fefffd8] = 0x0,
        [0x7fefffd4] = 0x0,
        [0x7fefffd0] = 0x0,
        [0x7fefffcc] = 0x0,
        [0x7fefffc8] = 0x0,
        [0x7fefffc4] = 0x0,
        [0x7fefffc0] = 0x0,
        [0x7fefffbc] = 0x0,
        [0x7fefffb8] = 0x0,
        [0x7fefffb4] = 0x0,
        [0x7fefffb0] = 0x0,
        [0x7fefffac] = 0x0,
        [0x7fefffa8] = 0x0,
        [0x7fefffa4] = 0x0,
        [0x7fefffa0] = 0x0,
        [0x7fefff9c] = 0x0,
        [0x7fefff98] = 0x0,
        [0x7fefff94] = 0x0,
        [0x7fefff90] = 0x0,
        [0x7fefff8c] = 0x0,
        [0x7fefff88] = 0x0,
        [0x7fefff84] = 0x0,
        [0x7fefff80] = 0x0,
        [0x7fefff7c] = 0x0,
        [0x7fefff78] = 0x0,
        [0x7fefff74] = 0x0,
        [0x7fefff70] = 0x0,
        [0x7fefff6c] = 0x0,
        [0x7fefff68] = 0x0,
        [0x7fefff64] = 0x0,
        [0x7fefff60] = 0x0,
        [0x7fefff5c] = 0x0,
        [0x7fefff58] = 0x0,
        [0x7fefff54] = 0x0,
        [0x7fefff50] = 0x0,
        [0x7fefff4c] = 0x0,
        [0x7fefff48] = 0x0,
        [0x7fefff44] = 0x0,
        [0x7fefff40] = 0x0,
        [0x7fefff3c] = 0x0,
        [0x7fefff38] = 0x0,
        [0x7fefff34] = 0x0,
        [0x7fefff30] = 0x0,
        [0x7fefff2c] = 0x0,
        [0x7fefff28] = 0x0,
        [0x7fefff24] = 0x0,
        [0x7fefff20] = 0x0,
        [0x7fefff1c] = 0x0,
        [0x7fefff18] = 0x0,
        [0x7fefff14] = 0x0,
        [0x7fefff10] = 0x0,
        [0x7fefff0c] = 0x0,
        [0x7fefff08] = 0x0,
        [0x7fefff04] = 0x0,
        [0x7fefff00] = 0x0,
        [0x7feffefc] = 0x0,
        [0x7feffef8] = 0x0,
        [0x7feffef4] = 0x0,
        [0x7feffef0] = 0x0,
        [0x7feffeec] = 0x0,
        [0x7feffee8] = 0x0,
        [0x7feffee4] = 0x0,
        [0x7feffee0] = 0x0,
        [0x7feffedc] = 0x0,
        [0x7feffed8] = 0x0,
        [0x7feffed4] = 0x0,
        [0x7feffed0] = 0x0,
        [0x7feffecc] = 0x0,
        [0x7feffec8] = 0x0,
        [0x7feffec4] = 0x0,
        [0x7feffec0] = 0x0,
        [0x7feffebc] = 0x0,
        [0x7feffeb8] = 0x0,
        [0x7feffeb4] = 0x0,
        [0x7feffeb0] = 0x0,
        [0x7feffeac] = 0x0,
        [0x7feffea8] = 0x0,
        [0x7feffea4] = 0x0,
        [0x7feffea0] = 0x0,
        [0x7feffe9c] = 0x0,
        [0x7feffe98] = 0x0,
        [0x7feffe94] = 0x0,
        [0x7feffe90] = 0x0,
        [0x7feffe8c] = 0x0,
        [0x7feffe88] = 0x0,
        [0x7feffe84] = 0x0,
        [0x7feffe80] = 0x0,
        [0x7feffe7c] = 0x0,
        [0x7feffe78] = 0x0,
        [0x7feffe74] = 0x0,
        [0x7feffe70] = 0x0,
        [0x7feffe6c] = 0x0,
        [0x7feffe68] = 0x0,
        [0x7feffe64] = 0x0,
        [0x7feffe60] = 0x0,
        [0x7feffe5c] = 0x0,
        [0x7feffe58] = 0x0,
        [0x7feffe54] = 0x0,
        [0x7feffe50] = 0x0,
        [0x7feffe4c] = 0x0,
        [0x7feffe48] = 0x0,
        [0x7feffe44] = 0x0,
        [0x7feffe40] = 0x0,
        [0x7feffe3c] = 0x0,
        [0x7feffe38] = 0x0,
        [0x7feffe34] = 0x0,
        [0x7feffe30] = 0x0,
        [0x7feffe2c] = 0x0,
        [0x7feffe28] = 0x0,
        [0x7feffe24] = 0x0,
        [0x7feffe20] = 0x0,
        [0x7feffe1c] = 0x0,
        [0x7feffe18] = 0x0,
        [0x7feffe14] = 0x0,
        [0x7feffe10] = 0x0,
        [0x7feffe0c] = 0x0,
        [0x7feffe08] = 0x0,
        [0x7feffe04] = 0x0,
        [0x7feffe00] = 0x0,
        [0x7feffdfc] = 0x0,
        [0x7feffdf8] = 0x0,
        [0x7feffdf4] = 0x0,
        [0x7feffdf0] = 0x0,
        [0x7feffdec] = 0x0,
        [0x7feffde8] = 0x0,
        [0x7feffde4] = 0x0,
        [0x7feffde0] = 0x0,
        [0x7feffddc] = 0x0,
        [0x7feffdd8] = 0x0,
        [0x7feffdd4] = 0x0,
        [0x7feffdd0] = 0x0,
        [0x7feffdcc] = 0x0,
        [0x7feffdc8] = 0x0,
        [0x7feffdc4] = 0x0,
        [0x7feffdc0] = 0x0,
        [0x7feffdbc] = 0x0,
        [0x7feffdb8] = 0x0,
        [0x7feffdb4] = 0x0,
        [0x7feffdb0] = 0x0,
        [0x7feffdac] = 0x0,
        [0x7feffda8] = 0x0,
        [0x7feffda4] = 0x0,
        [0x7feffda0] = 0x0,
        [0x7feffd9c] = 0x0,
        [0x7feffd98] = 0x0,
        [0x7feffd94] = 0x0,
        [0x7feffd90] = 0x0,
        [0x7feffd8c] = 0x0,
        [0x7feffd88] = 0x0,
        [0x7feffd84] = 0x0,
        [0x7feffd80] = 0x0,
        [0x7feffd7c] = 0x0,
        [0x7feffd78] = 0x0,
        [0x7feffd74] = 0x0,
        [0x7feffd70] = 0x0,
        [0x7feffd6c] = 0x0,
        [0x7feffd68] = 0x0,
        [0x7feffd64] = 0x0,
        [0x7feffd60] = 0x0,
        [0x7feffd5c] = 0x0,
        [0x7feffd58] = 0x0,
        [0x7feffd54] = 0x0,
        [0x7feffd50] = 0x0,
        [0x7feffd4c] = 0x0,
        [0x7feffd48] = 0x0,
        [0x7feffd44] = 0x0,
        [0x7feffd40] = 0x0,
        [0x7feffd3c] = 0x0,
        [0x7feffd38] = 0x0,
        [0x7feffd34] = 0x0,
        [0x7feffd30] = 0x0,
        [0x7feffd2c] = 0x0,
        [0x7feffd28] = 0x0,
        [0x7feffd24] = 0x0,
        [0x7feffd20] = 0x0,
        [0x7feffd1c] = 0x0,
        [0x7feffd18] = 0x0,
        [0x7feffd14] = 0x0,
        [0x7feffd10] = 0x0,
        [0x7feffd0c] = 0x0,
        [0x7feffd08] = 0x0,
        [0x7feffd04] = 0x0,
        [0x7feffd00] = 0x0,
        [0x7feffcfc] = 0x0,
        [0x7feffcf8] = 0x0,
        [0x7feffcf4] = 0x0,
        [0x7feffcf0] = 0x0,
        [0x7feffcec] = 0x0,
        [0x7feffce8] = 0x0,
        [0x7feffce4] = 0x0,
        [0x7feffce0] = 0x0,
        [0x7feffcdc] = 0x0,
        [0x7feffcd8] = 0x0,
        [0x7feffcd4] = 0x0,
        [0x7feffcd0] = 0x0,
        [0x7feffccc] = 0x0,
        [0x7feffcc8] = 0x0,
        [0x7feffcc4] = 0x0,
        [0x7feffcc0] = 0x0,
        [0x7feffcbc] = 0x0,
        [0x7feffcb8] = 0x0,
        [0x7feffcb4] = 0x0,
        [0x7feffcb0] = 0x0,
        [0x7feffcac] = 0x0,
        [0x7feffca8] = 0x0,
        [0x7feffca4] = 0x0,
        [0x7feffca0] = 0x0,
        [0x7feffc9c] = 0x0,
        [0x7feffc98] = 0x0,
        [0x7feffc94] = 0x0,
        [0x7feffc90] = 0x0,
        [0x7feffc8c] = 0x0,
        [0x7feffc88] = 0x0,
        [0x7feffc84] = 0x0,
        [0x7feffc80] = 0x0,
        [0x7feffc7c] = 0x0,
        [0x7feffc78] = 0x0,
        [0x7feffc74] = 0x0,
        [0x7feffc70] = 0x0,
        [0x7feffc6c] = 0x0,
        [0x7feffc68] = 0x0,
        [0x7feffc64] = 0x0,
        [0x7feffc60] = 0x0,
        [0x7feffc5c] = 0x0,
        [0x7feffc58] = 0x0,
        [0x7feffc54] = 0x0,
        [0x7feffc50] = 0x0,
        [0x7feffc4c] = 0x0,
        [0x7feffc48] = 0x0,
        [0x7feffc44] = 0x0,
        [0x7feffc40] = 0x0,
        [0x7feffc3c] = 0x0,
        [0x7feffc38] = 0x0,
        [0x7feffc34] = 0x0,
        [0x7feffc30] = 0x0,
        [0x7feffc2c] = 0x0,
        [0x7feffc28] = 0x0,
        [0x7feffc24] = 0x0,
        [0x7feffc20] = 0x0,
        [0x7feffc1c] = 0x0,
        [0x7feffc18] = 0x0,
        [0x7feffc14] = 0x0,
        [0x7feffc10] = 0x0,
        [0x7feffc0c] = 0x0,
        [0x7feffc08] = 0x0,
        [0x7feffc04] = 0x0,
        [0x7feffc00] = 0x0,
        [0x7feffbfc] = 0x0,
        [0x7feffbf8] = 0x0,
        [0x7feffbf4] = 0x0,
        [0x7feffbf0] = 0x0,
        [0x7feffbec] = 0x0,
        [0x7feffbe8] = 0x0,
        [0x7feffbe4] = 0x0,
        [0x7feffbe0] = 0x0,
        [0x7feffbdc] = 0x0,
        [0x7feffbd8] = 0x0,
        [0x7feffbd4] = 0x0,
        [0x7feffbd0] = 0x0,
        [0x7feffbcc] = 0x0,
        [0x7feffbc8] = 0x0,
        [0x7feffbc4] = 0x0,
        [0x7feffbc0] = 0x0,
        [0x7feffbbc] = 0x0,
        [0x7feffbb8] = 0x0,
        [0x7feffbb4] = 0x0,
        [0x7feffbb0] = 0x0,
        [0x7feffbac] = 0x0,
        [0x7feffba8] = 0x0,
        [0x7feffba4] = 0x0,
        [0x7feffba0] = 0x0,
        [0x7feffb9c] = 0x0,
        [0x7feffb98] = 0x0,
        [0x7feffb94] = 0x0,
        [0x7feffb90] = 0x0,
        [0x7feffb8c] = 0x0,
        [0x7feffb88] = 0x0,
        [0x7feffb84] = 0x0,
        [0x7feffb80] = 0x0,
        [0x7feffb7c] = 0x0,
        [0x7feffb78] = 0x0,
        [0x7feffb74] = 0x0,
        [0x7feffb70] = 0x0,
        [0x7feffb6c] = 0x0,
        [0x7feffb68] = 0x0,
        [0x7feffb64] = 0x0,
        [0x7feffb60] = 0x0,
        [0x7feffb5c] = 0x0,
        [0x7feffb58] = 0x0,
        [0x7feffb54] = 0x0,
        [0x7feffb50] = 0x0,
        [0x7feffb4c] = 0x0,
        [0x7feffb48] = 0x0,
        [0x7feffb44] = 0x0,
        [0x7feffb40] = 0x0,
        [0x7feffb3c] = 0x0,
        [0x7feffb38] = 0x0,
        [0x7feffb34] = 0x0,
        [0x7feffb30] = 0x0,
        [0x7feffb2c] = 0x0,
        [0x7feffb28] = 0x0,
        [0x7feffb24] = 0x0,
        [0x7feffb20] = 0x0,
        [0x7feffb1c] = 0x0,
        [0x7feffb18] = 0x0,
        [0x7feffb14] = 0x0,
        [0x7feffb10] = 0x0,
        [0x7feffb0c] = 0x0,
        [0x7feffb08] = 0x0,
        [0x7feffb04] = 0x0,
        [0x7feffb00] = 0x0,
        [0x7feffafc] = 0x0,
        [0x7feffaf8] = 0x0,
        [0x7feffaf4] = 0x0,
        [0x7feffaf0] = 0x0,
        [0x7feffaec] = 0x0,
        [0x7feffae8] = 0x0,
        [0x7feffae4] = 0x0,
        [0x7feffae0] = 0x0,
        [0x7feffadc] = 0x0,
        [0x7feffad8] = 0x0,
        [0x7feffad4] = 0x0,
        [0x7feffad0] = 0x0,
        [0x7feffacc] = 0x0,
        [0x7feffac8] = 0x0,
        [0x7feffac4] = 0x0,
        [0x7feffac0] = 0x0,
        [0x7feffabc] = 0x0,
        [0x7feffab8] = 0x0,
        [0x7feffab4] = 0x0,
        [0x7feffab0] = 0x0,
        [0x7feffaac] = 0x0,
        [0x7feffaa8] = 0x0,
        [0x7feffaa4] = 0x0,
        [0x7feffaa0] = 0x0,
        [0x7feffa9c] = 0x0,
        [0x7feffa98] = 0x0,
        [0x7feffa94] = 0x0,
        [0x7feffa90] = 0x0,
        [0x7feffa8c] = 0x0,
        [0x7feffa88] = 0x0,
        [0x7feffa84] = 0x0,
        [0x7feffa80] = 0x0,
        [0x7feffa7c] = 0x0,
        [0x7feffa78] = 0x0,
        [0x7feffa74] = 0x0,
        [0x7feffa70] = 0x0,
        [0x7feffa6c] = 0x0,
        [0x7feffa68] = 0x0,
        [0x7feffa64] = 0x0,
        [0x7feffa60] = 0x0,
        [0x7feffa5c] = 0x0,
        [0x7feffa58] = 0x0,
        [0x7feffa54] = 0x0,
        [0x7feffa50] = 0x0,
        [0x7feffa4c] = 0x0,
        [0x7feffa48] = 0x0,
        [0x7feffa44] = 0x0,
        [0x7feffa40] = 0x0,
        [0x7feffa3c] = 0x0,
        [0x7feffa38] = 0x0,
        [0x7feffa34] = 0x0,
        [0x7feffa30] = 0x0,
        [0x7feffa2c] = 0x0,
        [0x7feffa28] = 0x0,
        [0x7feffa24] = 0x0,
        [0x7feffa20] = 0x0,
        [0x7feffa1c] = 0x0,
        [0x7feffa18] = 0x0,
        [0x7feffa14] = 0x0,
        [0x7feffa10] = 0x0,
        [0x7feffa0c] = 0x0,
        [0x7feffa08] = 0x0,
        [0x7feffa04] = 0x0,
        [0x7feffa00] = 0x0,
        [0x7feff9fc] = 0x0,
        [0x7feff9f8] = 0x0,
        [0x7feff9f4] = 0x0,
        [0x7feff9f0] = 0x0,
        [0x7feff9ec] = 0x0,
        [0x7feff9e8] = 0x0,
        [0x7feff9e4] = 0x0,
        [0x7feff9e0] = 0x0,
        [0x7feff9dc] = 0x0,
        [0x7feff9d8] = 0x0,
        [0x7feff9d4] = 0x0,
        [0x7feff9d0] = 0x0,
        [0x7feff9cc] = 0x0,
        [0x7feff9c8] = 0x0,
        [0x7feff9c4] = 0x0,
        [0x7feff9c0] = 0x0,
        [0x7feff9bc] = 0x0,
        [0x7feff9b8] = 0x0,
        [0x7feff9b4] = 0x0,
        [0x7feff9b0] = 0x0,
        [0x7feff9ac] = 0x0,
        [0x7feff9a8] = 0x0,
        [0x7feff9a4] = 0x0,
        [0x7feff9a0] = 0x0,
        [0x7feff99c] = 0x0,
        [0x7feff998] = 0x0,
        [0x7feff994] = 0x0,
        [0x7feff990] = 0x0,
        [0x7feff98c] = 0x0,
        [0x7feff988] = 0x0,
        [0x7feff984] = 0x0,
        [0x7feff980] = 0x0,
        [0x7feff97c] = 0x0,
        [0x7feff978] = 0x0,
        [0x7feff974] = 0x0,
        [0x7feff970] = 0x0,
        [0x7feff96c] = 0x0,
        [0x7feff968] = 0x0,
        [0x7feff964] = 0x0,
        [0x7feff960] = 0x0,
        [0x7feff95c] = 0x0,
        [0x7feff958] = 0x0,
        [0x7feff954] = 0x0,
        [0x7feff950] = 0x0,
        [0x7feff94c] = 0x0,
        [0x7feff948] = 0x0,
        [0x7feff944] = 0x0,
        [0x7feff940] = 0x0,
        [0x7feff93c] = 0x0,
        [0x7feff938] = 0x0,
        [0x7feff934] = 0x0,
        [0x7feff930] = 0x0,
        [0x7feff92c] = 0x0,
        [0x7feff928] = 0x0,
        [0x7feff924] = 0x0,
        [0x7feff920] = 0x0,
        [0x7feff91c] = 0x0,
        [0x7feff918] = 0x0,
        [0x7feff914] = 0x0,
        [0x7feff910] = 0x0,
        [0x7feff90c] = 0x0,
        [0x7feff908] = 0x0,
        [0x7feff904] = 0x0,
        [0x7feff900] = 0x0,
        [0x7feff8fc] = 0x0,
        [0x7feff8f8] = 0x0,
        [0x7feff8f4] = 0x0,
        [0x7feff8f0] = 0x0,
        [0x7feff8ec] = 0x0,
        [0x7feff8e8] = 0x0,
        [0x7feff8e4] = 0x0,
        [0x7feff8e0] = 0x0,
        [0x7feff8dc] = 0x0,
        [0x7feff8d8] = 0x0,
        [0x7feff8d4] = 0x0,
        [0x7feff8d0] = 0x0,
        [0x7feff8cc] = 0x0,
        [0x7feff8c8] = 0x0,
        [0x7feff8c4] = 0x0,
        [0x7feff8c0] = 0x0,
        [0x7feff8bc] = 0x0,
        [0x7feff8b8] = 0x0,
        [0x7feff8b4] = 0x0,
        [0x7feff8b0] = 0x0,
        [0x7feff8ac] = 0x0,
        [0x7feff8a8] = 0x0,
        [0x7feff8a4] = 0x0,
        [0x7feff8a0] = 0x0,
        [0x7feff89c] = 0x0,
        [0x7feff898] = 0x0,
        [0x7feff894] = 0x0,
        [0x7feff890] = 0x0,
        [0x7feff88c] = 0x0,
        [0x7feff888] = 0x0,
        [0x7feff884] = 0x0,
        [0x7feff880] = 0x0,
        [0x7feff87c] = 0x0,
        [0x7feff878] = 0x0,
        [0x7feff874] = 0x0,
        [0x7feff870] = 0x0,
        [0x7feff86c] = 0x0,
        [0x7feff868] = 0x0,
        [0x7feff864] = 0x0,
        [0x7feff860] = 0x0,
        [0x7feff85c] = 0x0,
        [0x7feff858] = 0x0,
        [0x7feff854] = 0x0,
        [0x7feff850] = 0x0,
        [0x7feff84c] = 0x0,
        [0x7feff848] = 0x0,
        [0x7feff844] = 0x0,
        [0x7feff840] = 0x0,
        [0x7feff83c] = 0x0,
        [0x7feff838] = 0x0,
        [0x7feff834] = 0x0,
        [0x7feff830] = 0x0,
        [0x7feff82c] = 0x0,
        [0x7feff828] = 0x0,
        [0x7feff824] = 0x0,
        [0x7feff820] = 0x0,
        [0x7feff81c] = 0x0,
        [0x7feff818] = 0x0,
        [0x7feff814] = 0x0,
        [0x7feff810] = 0x0,
        [0x7feff80c] = 0x0,
        [0x7feff808] = 0x0,
        [0x7feff804] = 0x0,
        [0x7feff800] = 0x0,
        [0x7feff7fc] = 0x0,
        [0x7feff7f8] = 0x0,
        [0x7feff7f4] = 0x0,
        [0x7feff7f0] = 0x0,
        [0x7feff7ec] = 0x0,
        [0x7feff7e8] = 0x0,
        [0x7feff7e4] = 0x0,
        [0x7feff7e0] = 0x0,
        [0x7feff7dc] = 0x0,
        [0x7feff7d8] = 0x0,
        [0x7feff7d4] = 0x0,
        [0x7feff7d0] = 0x0,
        [0x7feff7cc] = 0x0,
        [0x7feff7c8] = 0x0,
        [0x7feff7c4] = 0x0,
        [0x7feff7c0] = 0x0,
        [0x7feff7bc] = 0x0,
        [0x7feff7b8] = 0x0,
        [0x7feff7b4] = 0x0,
        [0x7feff7b0] = 0x0,
        [0x7feff7ac] = 0x0,
        [0x7feff7a8] = 0x0,
        [0x7feff7a4] = 0x0,
        [0x7feff7a0] = 0x0,
        [0x7feff79c] = 0x0,
        [0x7feff798] = 0x0,
        [0x7feff794] = 0x0,
        [0x7feff790] = 0x0,
        [0x7feff78c] = 0x0,
        [0x7feff788] = 0x0,
        [0x7feff784] = 0x0,
        [0x7feff780] = 0x0,
        [0x7feff77c] = 0x0,
        [0x7feff778] = 0x0,
        [0x7feff774] = 0x0,
        [0x7feff770] = 0x0,
        [0x7feff76c] = 0x0,
        [0x7feff768] = 0x0,
        [0x7feff764] = 0x0,
        [0x7feff760] = 0x0,
        [0x7feff75c] = 0x0,
        [0x7feff758] = 0x0,
        [0x7feff754] = 0x0,
        [0x7feff750] = 0x0,
        [0x7feff74c] = 0x0,
        [0x7feff748] = 0x0,
        [0x7feff744] = 0x0,
        [0x7feff740] = 0x0,
        [0x7feff73c] = 0x0,
        [0x7feff738] = 0x0,
        [0x7feff734] = 0x0,
        [0x7feff730] = 0x0,
        [0x7feff72c] = 0x0,
        [0x7feff728] = 0x0,
        [0x7feff724] = 0x0,
        [0x7feff720] = 0x0,
        [0x7feff71c] = 0x0,
        [0x7feff718] = 0x0,
        [0x7feff714] = 0x0,
        [0x7feff710] = 0x0,
        [0x7feff70c] = 0x0,
        [0x7feff708] = 0x0,
        [0x7feff704] = 0x0,
        [0x7feff700] = 0x0,
        [0x7feff6fc] = 0x0,
        [0x7feff6f8] = 0x0,
        [0x7feff6f4] = 0x0,
        [0x7feff6f0] = 0x0,
        [0x7feff6ec] = 0x0,
        [0x7feff6e8] = 0x0,
        [0x7feff6e4] = 0x0,
        [0x7feff6e0] = 0x0,
        [0x7feff6dc] = 0x0,
        [0x7feff6d8] = 0x0,
        [0x7feff6d4] = 0x0,
        [0x7feff6d0] = 0x0,
        [0x7feff6cc] = 0x0,
        [0x7feff6c8] = 0x0,
        [0x7feff6c4] = 0x0,
        [0x7feff6c0] = 0x0,
        [0x7feff6bc] = 0x0,
        [0x7feff6b8] = 0x0,
        [0x7feff6b4] = 0x0,
        [0x7feff6b0] = 0x0,
        [0x7feff6ac] = 0x0,
        [0x7feff6a8] = 0x0,
        [0x7feff6a4] = 0x0,
        [0x7feff6a0] = 0x0,
        [0x7feff69c] = 0x0,
        [0x7feff698] = 0x0,
        [0x7feff694] = 0x0,
        [0x7feff690] = 0x0,
        [0x7feff68c] = 0x0,
        [0x7feff688] = 0x0,
        [0x7feff684] = 0x0,
        [0x7feff680] = 0x0,
        [0x7feff67c] = 0x0,
        [0x7feff678] = 0x0,
        [0x7feff674] = 0x0,
        [0x7feff670] = 0x0,
        [0x7feff66c] = 0x0,
        [0x7feff668] = 0x0,
        [0x7feff664] = 0x0,
        [0x7feff660] = 0x0,
        [0x7feff65c] = 0x0,
        [0x7feff658] = 0x0,
        [0x7feff654] = 0x0,
        [0x7feff650] = 0x0,
        [0x7feff64c] = 0x0,
        [0x7feff648] = 0x0,
        [0x7feff644] = 0x0,
        [0x7feff640] = 0x0,
        [0x7feff63c] = 0x0,
        [0x7feff638] = 0x0,
        [0x7feff634] = 0x0,
        [0x7feff630] = 0x0,
        [0x7feff62c] = 0x0,
        [0x7feff628] = 0x0,
        [0x7feff624] = 0x0,
        [0x7feff620] = 0x0,
        [0x7feff61c] = 0x0,
        [0x7feff618] = 0x0,
        [0x7feff614] = 0x0,
        [0x7feff610] = 0x0,
        [0x7feff60c] = 0x0,
        [0x7feff608] = 0x0,
        [0x7feff604] = 0x0,
        [0x7feff600] = 0x0,
        [0x7feff5fc] = 0x0,
        [0x7feff5f8] = 0x0,
        [0x7feff5f4] = 0x0,
        [0x7feff5f0] = 0x0,
        [0x7feff5ec] = 0x0,
        [0x7feff5e8] = 0x0,
        [0x7feff5e4] = 0x0,
        [0x7feff5e0] = 0x0,
        [0x7feff5dc] = 0x0,
        [0x7feff5d8] = 0x0,
        [0x7feff5d4] = 0x0,
        [0x7feff5d0] = 0x0,
        [0x7feff5cc] = 0x0,
        [0x7feff5c8] = 0x0,
        [0x7feff5c4] = 0x0,
        [0x7feff5c0] = 0x0,
        [0x7feff5bc] = 0x0,
        [0x7feff5b8] = 0x0,
        [0x7feff5b4] = 0x0,
        [0x7feff5b0] = 0x0,
        [0x7feff5ac] = 0x0,
        [0x7feff5a8] = 0x0,
        [0x7feff5a4] = 0x0,
        [0x7feff5a0] = 0x0,
        [0x7feff59c] = 0x0,
        [0x7feff598] = 0x0,
        [0x7feff594] = 0x0,
        [0x7feff590] = 0x0,
        [0x7feff58c] = 0x0,
        [0x7feff588] = 0x0,
        [0x7feff584] = 0x0,
        [0x7feff580] = 0x0,
        [0x7feff57c] = 0x0,
        [0x7feff578] = 0x0,
        [0x7feff574] = 0x0,
        [0x7feff570] = 0x0,
        [0x7feff56c] = 0x0,
        [0x7feff568] = 0x0,
        [0x7feff564] = 0x0,
        [0x7feff560] = 0x0,
        [0x7feff55c] = 0x0,
        [0x7feff558] = 0x0,
        [0x7feff554] = 0x0,
        [0x7feff550] = 0x0,
        [0x7feff54c] = 0x0,
        [0x7feff548] = 0x0,
        [0x7feff544] = 0x0,
        [0x7feff540] = 0x0,
        [0x7feff53c] = 0x0,
        [0x7feff538] = 0x0,
        [0x7feff534] = 0x0,
        [0x7feff530] = 0x0,
        [0x7feff52c] = 0x0,
        [0x7feff528] = 0x0,
        [0x7feff524] = 0x0,
        [0x7feff520] = 0x0,
        [0x7feff51c] = 0x0,
        [0x7feff518] = 0x0,
        [0x7feff514] = 0x0,
        [0x7feff510] = 0x0,
        [0x7feff50c] = 0x0,
        [0x7feff508] = 0x0,
        [0x7feff504] = 0x0,
        [0x7feff500] = 0x0,
        [0x7feff4fc] = 0x0,
        [0x7feff4f8] = 0x0,
        [0x7feff4f4] = 0x0,
        [0x7feff4f0] = 0x0,
        [0x7feff4ec] = 0x0,
        [0x7feff4e8] = 0x0,
        [0x7feff4e4] = 0x0,
        [0x7feff4e0] = 0x0,
        [0x7feff4dc] = 0x0,
        [0x7feff4d8] = 0x0,
        [0x7feff4d4] = 0x0,
        [0x7feff4d0] = 0x0,
        [0x7feff4cc] = 0x0,
        [0x7feff4c8] = 0x0,
        [0x7feff4c4] = 0x0,
        [0x7feff4c0] = 0x0,
        [0x7feff4bc] = 0x0,
        [0x7feff4b8] = 0x0,
        [0x7feff4b4] = 0x0,
        [0x7feff4b0] = 0x0,
        [0x7feff4ac] = 0x0,
        [0x7feff4a8] = 0x0,
        [0x7feff4a4] = 0x0,
        [0x7feff4a0] = 0x0,
        [0x7feff49c] = 0x0,
        [0x7feff498] = 0x0,
        [0x7feff494] = 0x0,
        [0x7feff490] = 0x0,
        [0x7feff48c] = 0x0,
        [0x7feff488] = 0x0,
        [0x7feff484] = 0x0,
        [0x7feff480] = 0x0,
        [0x7feff47c] = 0x0,
        [0x7feff478] = 0x0,
        [0x7feff474] = 0x0,
        [0x7feff470] = 0x0,
        [0x7feff46c] = 0x0,
        [0x7feff468] = 0x0,
        [0x7feff464] = 0x0,
        [0x7feff460] = 0x0,
        [0x7feff45c] = 0x0,
        [0x7feff458] = 0x0,
        [0x7feff454] = 0x0,
        [0x7feff450] = 0x0,
        [0x7feff44c] = 0x0,
        [0x7feff448] = 0x0,
        [0x7feff444] = 0x0,
        [0x7feff440] = 0x0,
        [0x7feff43c] = 0x0,
        [0x7feff438] = 0x0,
        [0x7feff434] = 0x0,
        [0x7feff430] = 0x0,
        [0x7feff42c] = 0x0,
        [0x7feff428] = 0x0,
        [0x7feff424] = 0x0,
        [0x7feff420] = 0x0,
        [0x7feff41c] = 0x0,
        [0x7feff418] = 0x0,
        [0x7feff414] = 0x0,
        [0x7feff410] = 0x0,
        [0x7feff40c] = 0x0,
        [0x7feff408] = 0x0,
        [0x7feff404] = 0x0,
        [0x7feff400] = 0x0,
        [0x7feff3fc] = 0x0,
        [0x7feff3f8] = 0x0,
        [0x7feff3f4] = 0x0,
        [0x7feff3f0] = 0x0,
        [0x7feff3ec] = 0x0,
        [0x7feff3e8] = 0x0,
        [0x7feff3e4] = 0x0,
        [0x7feff3e0] = 0x0,
        [0x7feff3dc] = 0x0,
        [0x7feff3d8] = 0x0,
        [0x7feff3d4] = 0x0,
        [0x7feff3d0] = 0x0,
        [0x7feff3cc] = 0x0,
        [0x7feff3c8] = 0x0,
        [0x7feff3c4] = 0x0,
        [0x7feff3c0] = 0x0,
        [0x7feff3bc] = 0x0,
        [0x7feff3b8] = 0x0,
        [0x7feff3b4] = 0x0,
        [0x7feff3b0] = 0x0,
        [0x7feff3ac] = 0x0,
        [0x7feff3a8] = 0x0,
        [0x7feff3a4] = 0x0,
        [0x7feff3a0] = 0x0,
        [0x7feff39c] = 0x0,
        [0x7feff398] = 0x0,
        [0x7feff394] = 0x0,
        [0x7feff390] = 0x0,
        [0x7feff38c] = 0x0,
        [0x7feff388] = 0x0,
        [0x7feff384] = 0x0,
        [0x7feff380] = 0x0,
        [0x7feff37c] = 0x0,
        [0x7feff378] = 0x0,
        [0x7feff374] = 0x0,
        [0x7feff370] = 0x0,
        [0x7feff36c] = 0x0,
        [0x7feff368] = 0x0,
        [0x7feff364] = 0x0,
        [0x7feff360] = 0x0,
        [0x7feff35c] = 0x0,
        [0x7feff358] = 0x0,
        [0x7feff354] = 0x0,
        [0x7feff350] = 0x0,
        [0x7feff34c] = 0x0,
        [0x7feff348] = 0x0,
        [0x7feff344] = 0x0,
        [0x7feff340] = 0x0,
        [0x7feff33c] = 0x0,
        [0x7feff338] = 0x0,
        [0x7feff334] = 0x0,
        [0x7feff330] = 0x0,
        [0x7feff32c] = 0x0,
        [0x7feff328] = 0x0,
        [0x7feff324] = 0x0,
        [0x7feff320] = 0x0,
        [0x7feff31c] = 0x0,
        [0x7feff318] = 0x0,
        [0x7feff314] = 0x0,
        [0x7feff310] = 0x0,
        [0x7feff30c] = 0x0,
        [0x7feff308] = 0x0,
        [0x7feff304] = 0x0,
        [0x7feff300] = 0x0,
        [0x7feff2fc] = 0x0,
        [0x7feff2f8] = 0x0,
        [0x7feff2f4] = 0x0,
        [0x7feff2f0] = 0x0,
        [0x7feff2ec] = 0x0,
        [0x7feff2e8] = 0x0,
        [0x7feff2e4] = 0x0,
        [0x7feff2e0] = 0x0,
        [0x7feff2dc] = 0x0,
        [0x7feff2d8] = 0x0,
        [0x7feff2d4] = 0x0,
        [0x7feff2d0] = 0x0,
        [0x7feff2cc] = 0x0,
        [0x7feff2c8] = 0x0,
        [0x7feff2c4] = 0x0,
        [0x7feff2c0] = 0x0,
        [0x7feff2bc] = 0x0,
        [0x7feff2b8] = 0x0,
        [0x7feff2b4] = 0x0,
        [0x7feff2b0] = 0x0,
        [0x7feff2ac] = 0x0,
        [0x7feff2a8] = 0x0,
        [0x7feff2a4] = 0x0,
        [0x7feff2a0] = 0x0,
        [0x7feff29c] = 0x0,
        [0x7feff298] = 0x0,
        [0x7feff294] = 0x0,
        [0x7feff290] = 0x0,
        [0x7feff28c] = 0x0,
        [0x7feff288] = 0x0,
        [0x7feff284] = 0x0,
        [0x7feff280] = 0x0,
        [0x7feff27c] = 0x0,
        [0x7feff278] = 0x0,
        [0x7feff274] = 0x0,
        [0x7feff270] = 0x0,
        [0x7feff26c] = 0x0,
        [0x7feff268] = 0x0,
        [0x7feff264] = 0x0,
        [0x7feff260] = 0x0,
        [0x7feff25c] = 0x0,
        [0x7feff258] = 0x0,
        [0x7feff254] = 0x0,
        [0x7feff250] = 0x0,
        [0x7feff24c] = 0x0,
        [0x7feff248] = 0x0,
        [0x7feff244] = 0x0,
        [0x7feff240] = 0x0,
        [0x7feff23c] = 0x0,
        [0x7feff238] = 0x0,
        [0x7feff234] = 0x0,
        [0x7feff230] = 0x0,
        [0x7feff22c] = 0x0,
        [0x7feff228] = 0x0,
        [0x7feff224] = 0x0,
        [0x7feff220] = 0x0,
        [0x7feff21c] = 0x0,
        [0x7feff218] = 0x0,
        [0x7feff214] = 0x0,
        [0x7feff210] = 0x0,
        [0x7feff20c] = 0x0,
        [0x7feff208] = 0x0,
        [0x7feff204] = 0x0,
        [0x7feff200] = 0x0,
        [0x7feff1fc] = 0x0,
        [0x7feff1f8] = 0x0,
        [0x7feff1f4] = 0x0,
        [0x7feff1f0] = 0x0,
        [0x7feff1ec] = 0x0,
        [0x7feff1e8] = 0x0,
        [0x7feff1e4] = 0x0,
        [0x7feff1e0] = 0x0,
        [0x7feff1dc] = 0x0,
        [0x7feff1d8] = 0x0,
        [0x7feff1d4] = 0x0,
        [0x7feff1d0] = 0x0,
        [0x7feff1cc] = 0x0,
        [0x7feff1c8] = 0x0,
        [0x7feff1c4] = 0x0,
        [0x7feff1c0] = 0x0,
        [0x7feff1bc] = 0x0,
        [0x7feff1b8] = 0x0,
        [0x7feff1b4] = 0x0,
        [0x7feff1b0] = 0x0,
        [0x7feff1ac] = 0x0,
        [0x7feff1a8] = 0x0,
        [0x7feff1a4] = 0x0,
        [0x7feff1a0] = 0x0,
        [0x7feff19c] = 0x0,
        [0x7feff198] = 0x0,
        [0x7feff194] = 0x0,
        [0x7feff190] = 0x0,
        [0x7feff18c] = 0x0,
        [0x7feff188] = 0x0,
        [0x7feff184] = 0x0,
        [0x7feff180] = 0x0,
        [0x7feff17c] = 0x0,
        [0x7feff178] = 0x0,
        [0x7feff174] = 0x0,
        [0x7feff170] = 0x0,
        [0x7feff16c] = 0x0,
        [0x7feff168] = 0x0,
        [0x7feff164] = 0x0,
        [0x7feff160] = 0x0,
        [0x7feff15c] = 0x0,
        [0x7feff158] = 0x0,
        [0x7feff154] = 0x0,
        [0x7feff150] = 0x0,
        [0x7feff14c] = 0x0,
        [0x7feff148] = 0x0,
        [0x7feff144] = 0x0,
        [0x7feff140] = 0x0,
        [0x7feff13c] = 0x0,
        [0x7feff138] = 0x0,
        [0x7feff134] = 0x0,
        [0x7feff130] = 0x0,
        [0x7feff12c] = 0x0,
        [0x7feff128] = 0x0,
        [0x7feff124] = 0x0,
        [0x7feff120] = 0x0,
        [0x7feff11c] = 0x0,
        [0x7feff118] = 0x0,
        [0x7feff114] = 0x0,
        [0x7feff110] = 0x0,
        [0x7feff10c] = 0x0,
        [0x7feff108] = 0x0,
        [0x7feff104] = 0x0,
        [0x7feff100] = 0x0,
        [0x7feff0fc] = 0x0,
        [0x7feff0f8] = 0x0,
        [0x7feff0f4] = 0x0,
        [0x7feff0f0] = 0x0,
        [0x7feff0ec] = 0x0,
        [0x7feff0e8] = 0x0,
        [0x7feff0e4] = 0x0,
        [0x7feff0e0] = 0x0,
        [0x7feff0dc] = 0x0,
        [0x7feff0d8] = 0x0,
        [0x7feff0d4] = 0x0,
        [0x7feff0d0] = 0x0,
        [0x7feff0cc] = 0x0,
        [0x7feff0c8] = 0x0,
        [0x7feff0c4] = 0x0,
        [0x7feff0c0] = 0x0,
        [0x7feff0bc] = 0x0,
        [0x7feff0b8] = 0x0,
        [0x7feff0b4] = 0x0,
        [0x7feff0b0] = 0x0,
        [0x7feff0ac] = 0x0,
        [0x7feff0a8] = 0x0,
        [0x7feff0a4] = 0x0,
        [0x7feff0a0] = 0x0,
        [0x7feff09c] = 0x0,
        [0x7feff098] = 0x0,
        [0x7feff094] = 0x0,
        [0x7feff090] = 0x0,
        [0x7feff08c] = 0x0,
        [0x7feff088] = 0x0,
        [0x7feff084] = 0x0,
        [0x7feff080] = 0x0,
        [0x7feff07c] = 0x0,
        [0x7feff078] = 0x0,
        [0x7feff074] = 0x0,
        [0x7feff070] = 0x0,
        [0x7feff06c] = 0x0,
        [0x7feff068] = 0x0,
        [0x7feff064] = 0x0,
        [0x7feff060] = 0x0,
        [0x7feff05c] = 0x0,
        [0x7feff058] = 0x0,
        [0x7feff054] = 0x0,
        [0x7feff050] = 0x0,
        [0x7feff04c] = 0x0,
        [0x7feff048] = 0x0,
        [0x7feff044] = 0x0,
        [0x7feff040] = 0x0,
        [0x7feff03c] = 0x0,
        [0x7feff038] = 0x0,
        [0x7feff034] = 0x0,
        [0x7feff030] = 0x0,
        [0x7feff02c] = 0x0,
        [0x7feff028] = 0x0,
        [0x7feff024] = 0x0,
        [0x7feff020] = 0x0,
        [0x7feff01c] = 0x0,
        [0x7feff018] = 0x0,
        [0x7feff014] = 0x0,
        [0x7feff010] = 0x0,
        [0x7feff00c] = 0x0,
        [0x7feff008] = 0x0,
        [0x7feff004] = 0x0,
        [0x80001000] = 0x0,
    }
    CPU:SetMemory(CPU, mem_sections)
    CPU:StoreRegister("sp", 0x7ff00000)
end
