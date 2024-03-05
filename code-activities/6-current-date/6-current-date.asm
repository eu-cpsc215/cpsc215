extrn ExitProcess : proc        ; Declare external function ExitProcess

; TODO - Add external function declarations here

.DATA                           ; Directive; Enter .data section

; TODO - Add variables here

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    ; TODO - Add prologue here

    ; -------------------- /\ PROLOGUE /\ --------------------

    ; TODO - Add program code here

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
