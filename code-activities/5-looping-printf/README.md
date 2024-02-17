# Code Activity - Looping printf

Given an array of bytes named `numbers`, loop through each byte in the array and print the value to the console using the `printf` function.

The `printf` function has been declared at the top of the provided assembly file to get you started, along with a format string you can use (the format string variable is named `format_str`).

To use the `printf` function in assembly code:
- Put the address of the format string into the `RCX` register.
- Put the value of the number you want to print in the `RDX` register.
- Call the `printf` function.

Here is an example of printing the number 5 to the console:

```
mov rcx, OFFSET [format_str]
mov rdx, 5
call printf
```
