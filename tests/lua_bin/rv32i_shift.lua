function Init_rv32i_shift(CPU)
    CPU.entrypoint = 0x80000000
    CPU.stack_pointer = 0x7ff00000
    CPU.heap_start = 0x80001000

    local mem_sections = {
    
        [0x80000000] = 0x513,
        [0x80000004] = 0x100093,
        [0x80000008] = 0x200113,
        [0x8000000c] = 0x2091b3,
        [0x80000010] = 0x400213,
        [0x80000014] = 0x418463,
        [0x80000018] = 0x400006f,
        [0x8000001c] = 0x150513,
        [0x80000020] = 0x400093,
        [0x80000024] = 0x100113,
        [0x80000028] = 0x20d1b3,
        [0x8000002c] = 0x200213,
        [0x80000030] = 0x418463,
        [0x80000034] = 0x240006f,
        [0x80000038] = 0x150513,
        [0x8000003c] = 0xffc00093,
        [0x80000040] = 0x100113,
        [0x80000044] = 0x4020d1b3,
        [0x80000048] = 0xffe00213,
        [0x8000004c] = 0x418463,
        [0x80000050] = 0x80006f,
        [0x80000054] = 0x150513,
        [0x80000058] = 0x5d00893,
        [0x8000005c] = 0x73,
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
        [0x80001000] = 0x0,
    }
    CPU:SetMemory(CPU, mem_sections)
    CPU:StoreRegister(2, 0x7ff00000)
    CPU.memory:InitMemoryRange(0x7fe00000, 0x7ff00004)
end