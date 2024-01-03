# Code Activity - Addressing

Define the following variable in the data segment of the program:

```
testArray QWORD 20h, 21h, 22h, 23h, 24h, 25h
```

This array will be used for the following activities.

_Note: The array contains QWORD elements, so each element is 8 bytes._

1. Activity 1

Use `MOV` and `OFFSET` to get the address of the second element in the array. Store the address in `RAX`.

Now use a `MOV` instruction using `RAX` as a memory operand to get the value of the second element. Store the value in `RBX`.

2. Activity 2

Add the value of the first element and last element in the array and store the result in `RDX`.

3. Activity 3

Use `LEA` to get the address of the first and last elements in the array. Store the address of the first element in `RAX` and the second in `RBX`.
