extrn ExitProcess : proc        ; Declare external function

; TODO - Add external function declarations here

.DATA                           ; Directive; Enter .data section

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    ; TODO - Enter prologue here

    ; -------------------- /\ PROLOGUE /\ --------------------

    ; TODO - Enter program code here

    ; -------------------- \/ EPILOGUE \/ --------------------

    ; No need to clean up stack for this example since we are just going to terminate the program.

    xor rcx, rcx
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
