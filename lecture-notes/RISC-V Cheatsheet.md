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

### Add/subtract

Add or subtract using two registers, storing the result in the destination register `rd`:
```
add rd, rs1, rs2
sub rd, rs1, rs2
```

Add an immeidate value to a register and store the result in `rd`:
```
addi rd, rs1, imm
```

### Load immediate (immediate to register)

Pseudo-instruction to load immediate value into a register.
```
li rd, imm
```

### Move (register to register)

Pseudo-instruction to copy a value from one register to another.
```
mv rd, rs1
```

### Load

- `lw` - load word (32 bits)
- `lh` - load half-word (16 bits)
- `lb` - load byte (8 bits)

Syntax:

```
lw rd, offset, rs1
# or
lw rd, offset(rs1)
```

- `rd` is destination register to load data from memory into.
- `rs1` is the source register containing the base address to load the value from.
- `offset` is the offset to apply to the base address to form the final address to read from.

When using labels in an RISC-V assembly program, there is an `lw` pseudo-instruction variant:

```
lw rd, label
```

Example:

```
.data

foo: .word 2

.text

lw x1, foo
```

### Store

- `sw` - store word (32 bits)
- `sh` - store half-word (16 bits)
- `sb` - store byte (8 bits)

Syntax:

```
sw rs1, offset, rs2
```

- `rs1` is the register that contains the value to store.
- `rs2` is the register containing the base address of the location to store the value in memory.
- `offset` is applied to the base address to form the final memory address to store the value at.

When using labels in an RISC-V assembly program, there is an `lw` pseudo-instruction variant:

```
lw rd, label
```

Example:

```
.data

foo: .word 0

.text

li x1, 2             # Load x1 with the value 2
sw x1, foo, x2       # Store the value in x1 in memory at foo
```
