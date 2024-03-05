extrn ExitProcess : proc        ; Declare external function ExitProcess
extrn GetDateFormatA : proc
extrn MessageBoxA : proc

.DATA                           ; Directive; Enter .data section

fmt BYTE "yyyy-MM-dd",0
outputStr BYTE 255 DUP(0)

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

                    ; 1. No callee-saved registers needed
                    ; 2. No local variables needed
                    ; 3. Don't care about frame pointer
    sub rsp, 10h    ; 4. Need space for two paramters
    sub rsp, 8h     ; 5. Ensure 16-byte alignment
    sub rsp, 20h    ; 6. Reserve 32-byte shadow space for function calls

    ; -------------------- /\ PROLOGUE /\ --------------------

    mov rax, OFFSET outputStr
    mov rbx, LENGTHOF outputStr

    mov rcx, 0              ; Locale
    mov rdx, 0              ; dwFlags
    mov r8, 0               ; lpDate
    mov r9, OFFSET fmt      ; lpFormat
    mov [rsp + 20h], rax    ; lpDateStr - output string buffer
    mov [rsp + 28h], rbx    ; cchDate - size of output string
    call GetDateFormatA

    mov rcx, 0
    mov rdx, OFFSET outputStr
    mov r8, 0
    mov r9, 0
    call MessageBoxA

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
