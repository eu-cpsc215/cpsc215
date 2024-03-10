extrn ExitProcess : proc    ; Declare external function

.DATA                       ; Directive; Enter .data section

.CODE                       ; Directive: Enter .code section

; TODO - Implement the add_numbers function here

add_numbers PROC            ; Directive: Begin function labeled `add_numbers`

    push rbp                ; 1. Save callee-saved registers that will be used.
    ; no local variables    ; 2. Reserve stack space for local variables.
    mov rbp, rsp            ; 3. Establish frame pointer (RBP): mov rbp, rsp
    ; none needed           ; 4. Reserve space for additional parameters for function calls.
    ; already aligned       ; 5. Ensure 16-byte stack alignment.
    ; not needed            ; 6. Reserve 32-byte shadow space for function calls.

    ; -------------------- /\ PROLOGUE /\ --------------------

    ; Sum the two input numbers and return the result

    mov rax, rcx            ; First param in RCX
    add rax, rdx            ; Second param in RDX

    ; Return value already in RAX

    ; -------------------- \/ EPILOGUE \/ --------------------

    ; none                  ; 1. Cleanup reserved stack space.
    pop rbp                 ; 2. Restore callee-saved registers.
    ret                     ; 3. Return.

add_numbers ENDP            ; Directive: End function labeled `add_numbers`

END
