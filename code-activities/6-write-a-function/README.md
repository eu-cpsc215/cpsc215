# Code Activity - Write a Function

This activity practices writing a function in assembly. The [x64 ABI Cheatsheet](../../lecture-notes/6%20-%20x64%20ABI%20Cheatsheet.md) may be a useful reference.

Two source files are provided for you:
- `6-write-a-function.asm` - write your assembly code in here. You will implement a function in this file.
- `main.c` - contains the `main` function of the program. It calls the function you will write. Do not make any changes to this file.

You must implement a function using assembly code that implements the following function signature:

```
uint64_t add_numbers(uint64_t a, uint64_t b);
```

- The function is named `add_numbers`.
- The function takes two input parameters, each are 64-bit integers.
- The function returns the sum of the two input numbers. The return value is also a 64-bit integer.

The `main` function calls the `add_numbers` function and prints the result.
