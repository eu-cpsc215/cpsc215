.data

Zero: .word 0
FourBytes: .word 0x7654321F
TwoBytes: .half 0xA987
OneByte: .byte 0x43

.text

# Load zero into the register x1. Do not use the immediate (literal) value 0 to do this. Use the variable Zero as defined above.
lw x1, Zero

# Load zero into the register x2. Use the x0 register as the source.
add x2, x0, x0
mv x2, x0 # Pseudo: This does the same thing

# Load any non-zero value in the register x3.
addi x3, x0, 0x123
li x3, 0x123 # Pseudo: equivalent

# Load -1 into the register x4
addi x4, x0, -1
li x4, -1 # Pseudo: equivalent

# Copy the value of FourBytes into register x5.
lw x5, FourBytes

# Copy the value of TwoBytes into x6.
lh x6, TwoBytes

# Copy the value of OneByte into x7
li x7, 0x99999999
lb x7, OneByte

# Copy the value of x3 into FourBytes
sw x3, FourBytes, x20
lw x8, FourBytes
