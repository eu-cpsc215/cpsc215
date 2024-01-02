extrn ExitProcess : proc        ; Declare external function ExitProcess

.DATA                           ; Directive; Enter .data section

a2_width QWORD 1920
a2_height QWORD 1080
a2_totalPixels QWORD ?

a5_inputInches QWORD 123
a5_outputFeet QWORD ?
a5_outputInches QWORD ?

a6_inputInchesA QWORD 97
a6_inputInchesB QWORD 46
a6_outputFeet QWORD ?
a6_outputInches QWORD ?

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    ; Activity 1

    mov rax, 546             ; 64-bit multiplicand
    mov rbx, 12              ; 64-bit multiplier
    mul rbx                  ; Multiplies RAX * RBX. Result split across RDX:RAX

    mov r9, rdx              ; Upper 64 bits of result
    mov r10, rax             ; Lower 64 bits of result

    ; Activity 2

    mov rax, a2_width
    mul a2_height

    mov a2_totalPixels, rax

    ; Activity 3

    mov rdx, 0      ; Clear RDX. It's the high 64 bits of the dividend
    mov rax, 7484
    mov rbx, 3
    div rbx

    mov r11, rax
    mov r12, rdx

    ; Activity 4

    xor rcx, rcx    ; Clear out RCX and RDX just to make it easier to read the output in the registers window
    xor rdx, rdx

    mov rax, 523
    mov rbx, 5
    div bl          ; Used an 8-bit divisor. BL is the low 8 bits of RBX. This will perform AX / BL.

    mov cl, al      ; Quotient is in AL (low 8 bits of AX)
    mov dl, ah      ; Remainder is in AH (high 8 bits of AX)

    ; Activity 5

    mov rdx, 0                  ; Clear RDX. It's the high 64 bits of the dividend.
    mov rax, a5_inputInches     ; Set low 64 bits of the dividend.
    mov rbx, 12                 ; We'll use RBX as the divisor. There are 12 inches in a foot.
    div rbx

    mov a5_outputFeet, rax      ; Quotient is the number of feet
    mov a5_outputInches, rdx    ; Remainder is the number of inches

    ; Activity 6

    mov r9, a6_inputInchesA
    sub r9, a6_inputInchesB     ; inputA - inputB

    mov rdx, 0                  ; Clear RDX. It's the high 64 bits of the dividend.
    mov rax, r9                 ; Set low 64 bits of the dividend. This is the difference of inputA - input B.
    mov rbx, 12                 ; We'll use RBX as the divisor. There are 12 inches in a foot.
    div rbx

    mov a6_outputFeet, rax      ; Quotient is the number of feet
    mov a6_outputInches, rdx    ; Remainder is the number of inches

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx                ; Clear RCX
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
