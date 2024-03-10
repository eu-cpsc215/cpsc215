# Code Activity - Call a Function

This activity practices calling a function with more than four parameters. The [x64 ABI Cheatsheet](../../lecture-notes/6%20-%20x64%20ABI%20Cheatsheet.md) may be a useful reference.

Two source files are provided for you:
- `6-call-a-function.asm` - contains the program's `main` function. Write your assembly code in here.
- `function.c` - contains the function to be called from within the `main` function. Do not make any changes to this file.

In the `main` function, write assembly code to call the function named `function_to_call`. This function is defined in the `function.c` file. The function takes six parameters. All parameters are 64-bit integers.

You must use the following parameter values:

| Parameter | Value |
| - | - |
| `a` | `20` |
| `b` | `21` |
| `c` | `22` |
| `d` | `23` |
| `e` | `24` |
| `f` | `25` |

In order to call the function, you must do the following:
- include an external function declaration for `function_to_call` at the top of the assembly source file.
- write the function prologue for the `main` function.
- put function arguments in the correct location.
- call the `function_to_call`.

When called correctly, the program will output the following text to the console:

```
Function called: 20, 21, 22, 23, 24, 25
```
