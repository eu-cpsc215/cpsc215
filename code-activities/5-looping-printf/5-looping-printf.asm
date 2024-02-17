extrn ExitProcess : proc        ; Declare external function ExitProcess
extrn printf : proc             ; Declare external function printf

.DATA                           ; Directive; Enter .data section

format_str BYTE "%d ",0
numbers BYTE 1,82,4,9,17,214,0,52

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
