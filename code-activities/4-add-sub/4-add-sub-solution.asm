extrn ExitProcess : proc        ; Declare external function ExitProcess

.DATA                           ; Directive; Enter .data section

eightbit BYTE ?

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    ; Solutions below. Note there are multiple valid solutions, below is just an example.

    ; Activity 1

    mov rax, 432h
    mov rbx, 94124h
    mov rcx, 12h
    mov rdx, 88h

    add rax, rbx
    add rax, rcx
    add rax, rdx
    mov r8, rax

    ; Activity 2

    mov eax, 10
    mov ebx, 5
    mov ecx, 3

    sub eax, ebx
    sub eax, ecx
    mov r8d, eax

    ; Activity 3

    xor rax, rax  ; Clear RAX
    xor rbx, rbx  ; Clear RBX

    mov al, 8
    mov bl, 4
    add al, bl
    mov eightbit, al

    ; Activity 4

    mov rax, 67     ; First reading
    mov rbx, 87     ; Second reading
    sub rbx, rax    ; Change in temperature = 2nd reading - 1st reading
    mov rcx, rbx

    ; Activity 5

    xor rax, rax    ; Clear RAX
    mov al, 126     ; Load 126 into AL
    add al, 2       ; Add 2 to AL. This causes AL to cross the 8-bit signed boundary are rollover to -1 (128 unsigned).

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx                ; Clear RCX
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
