extrn ExitProcess : proc        ; Declare external function ExitProcess

.DATA                           ; Directive; Enter .data section

my_variable WORD 9988h

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    ; Solutions below. Note there are multiple valid solutions, below is just an example.

    ; Activity 1

    mov rdx, 50h
    mov rax, rdx

    ; Activity 2

    mov cx, 9812h           ; CX is the low 16 bits of the RCX register.
    mov r8w, 1234h          ; R8W is the low 16 bits of the R8 register. The 'w' suffix means 'word', i.e., 16 bits.
    xchg cl, r8b            ; CL is the low 8 bits of RCX; R8B is the low 8 bits of R8. The 'b' suffix means 'byte', i.e., 8 bits.

    ; Activity 3

    mov ebx, 4321h          ; EBX is the low 32 bits of the RBX register.
    mov bl, 78h             ; This changes the low 8 bits of the RBX register to 0x78.

    ; Activity 4

    mov r9, 12345678909876h
    mov r9d, 4444h          ; R9D is the low 32 bits of the R9 register. The 'd' suffix means 'double word', i.e., 32 bits.
                            ; Notice how since we used a 32-bit operand, the high 32 bits are cleared. This behavior is different
                            ; compared to the 16- and 8-bit operands.

    ; Activity 5

    mov bx, my_variable

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx                ; Clear RCX
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
