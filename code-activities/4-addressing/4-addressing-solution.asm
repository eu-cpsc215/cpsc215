extrn ExitProcess : proc        ; Declare external function ExitProcess

.DATA                           ; Directive; Enter .data section

testArray QWORD 20h, 21h, 22h, 23h, 24h, 25h

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    ; Activity 1

    mov rax, OFFSET [testArray + 8]     ; Gets address of second element in the array and stores it in RAX (remember that each element is 8 bytes each)
    mov rbx, [rax]                      ; Gets the value in memory at the address stored in RAX and stores the value in RBX

    ; Activity 2

    mov rdx, [testArray]                ; Gets value of first element in the array
    add rdx, [testArray + 5 * 8]        ; Multiplies RDX by the last element. Why use 5 * 8 here? It means (array index * size of each element).

    ; Activity 3

    lea rax, [testArray]                ; Address of first element
    lea rbx, [testArray + 5 * 8]        ; Address of second element

    mov rcx, [rax]      ; Verify we got the right address. First element value is 0x20.
    mov rdx, [rbx]      ; Verify we got the right address. Last element value is 0x25.

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx                ; Clear RCX
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
