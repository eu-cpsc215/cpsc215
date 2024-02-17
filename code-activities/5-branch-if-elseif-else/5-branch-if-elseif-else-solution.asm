; Example solution for this code activity.
; There are multiple valid solutions you could come up with.
; ---------------------------------------

extrn ExitProcess : proc        ; Declare external function ExitProcess

.DATA                           ; Directive; Enter .data section

input_var DWORD 5

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    ; if (input_var == 2)
    ;     return 0;

    cmp [input_var], 2
    jne not2
    mov rcx, 0
    jmp done

not2:

    ; else if (input_var == 3 || input_var == 4)
    ;     return 1;

    cmp [input_var], 3
    je is3or4
    cmp [input_var], 4
    je is3or4
    jmp else_

is3or4:

    mov rcx, 1
    jmp done

else_:                          ; Notice the underscore `_` character at the end of the label name?
                                ; `else` is a reserved keyword, meaning it isn't a valid label name,
                                ; so I appended an underscore to the name to make it valid.

    ; else
    ;     return 2;

    mov rcx, 2

done:

    ; -------------------- \/ EPILOGUE \/ --------------------
    ; Put the return value in the RCX register before the call instruction executes.
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
