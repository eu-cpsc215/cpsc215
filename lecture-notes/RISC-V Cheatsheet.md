# RISC-V Cheatsheet

This summarizes basic RISC-V assembly concepts using the RV32I instruction set.

## Registers

- 32 registers
- Each register 32 bits wide
- x0 through x31
- Each register also has an ABI alias (can be found [here](https://riscv.org/wp-content/uploads/2015/01/riscv-calling.pdf))

## Directives

### Program Sections

| Name | Description |
| - | - |
| .text | Enter the .text section (executable code) |
| .data | Enter the .data section (global variables, read/write) |
| .rodata | Enter the .rodata section (constant variables, read only) |
| .bss | Enter the .bss section (uninitialized variables, read/write) |

### Data Definition

| Name | Description |
| - | - |
| .byte | Emit 8-bit value |
| .half | Emit 16-bit value |
| .word | Emit 32-bit value |
| .dword | Emit 64-bit value |

## Instructions

Add/subtract
```
add rd, rs1, rs2
addi rd, rs1, imm
sub rd, rs1, rs2
```

Load immediate (immediate to register)
```
li rd, imm
```

Move (register to register)
```
mv rd, rs1
```
