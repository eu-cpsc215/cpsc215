# Code Activity - MOV/XCHG

1. Activity 1

Move the literal value `0x50` into the `RDX` register.
Then move the value from `RDX` into `RAX`.

2. Activity 2

Move the value `0x9812` into a 16-bit register of your choice.
Move the value `0x1234` into a different 16-bit register.
Use a single `XCHG` instruction to swap the low 8 bits between the two registers.

3. Activity 3

Move the value `0x4321` into a 32-bit register of your choice.
Use a single `MOV` instruction to change only the low 8 bits of that register (leaving the high 8 bits unchanged).

4. Activity 4

Move the value `0x12345678909876` into a 64-bit register of your choice.
Use a single `MOV` instruction to change the low 32 bits of that register and clear out the high 32 bits.

5. Activity 5

Create a 16 bit variable in the data segment of the program.
Use a single `MOV` instruction to populate a 16 bit register using that variable.
