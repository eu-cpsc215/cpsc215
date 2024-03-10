extrn ExitProcess : proc        ; Declare external function

; TODO - Add external function declarations here

extrn function_to_call : proc   ; Declare external function

.DATA                           ; Directive; Enter .data section

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    ; TODO - Enter prologue here

    push rbp        ; 1. Save callee-saved registers that will be used
                    ; 2. No local variables needed
    mov rbp, rsp    ; 3. Establish frame pointer
    sub rsp, 10h    ; 4. Reserve space for function call parameters that need passed on stack
                    ; 5. Stack already aligned: return address (8) + push rbp (8) + two stack params (16)
    sub rsp, 20h    ; 6. Reserve 32 bytes shadow space for function calls (20h == 32d)

    ; -------------------- /\ PROLOGUE /\ --------------------

    ; TODO - Enter program code here

    mov rcx, 20
    mov rdx, 21
    mov r8, 22
    mov r9, 23
    mov qword ptr [rsp + 20h], 24
    mov qword ptr [rsp + 28h], 25
    call function_to_call

    ; -------------------- \/ EPILOGUE \/ --------------------

    ; No need to clean up stack for this example since we are just going to terminate the program.

    xor rcx, rcx
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
