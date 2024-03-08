# RSIC-V - Data Movement

This activity demonstrates defining and moving data around. The RV32I ISA is used. You can use the [Ripes](https://github.com/mortbopet/Ripes) RISC-V simulator.

## Variables

Define the following variables in the program:

| Variable Name | Data Size | Initial Value |
|:----|:--|:--|
| `Zero` | 32 bits | `0` |
| `FourBytes` | 32 bits | `0x7654321F` |
| `TwoBytes` | 16 bits | `0xA987` |
| `OneByte` | 8 bits | `0x43` |

## Instructions

Write instructions that satisfy the following requirements in order.

- Load zero into the register `x1`. Do not use the immediate (literal) value `0` to do this. Use the variable `Zero` as the source.
- Load zero into the register `x2`. Use the `x0` register as the source.
- Load any non-zero value in the register `x3`.
- Load `-1` into the register `x4`.
- Copy the value of `FourBytes` into register `x5`.
- Copy the value of `TwoBytes` into `x6`.
- Copy the value of `OneByte` into `x7`.
- Copy the value of x3 into `FourBytes`.
