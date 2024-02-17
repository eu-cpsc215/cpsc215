extrn ExitProcess : proc        ; Declare external function ExitProcess

.DATA                           ; Directive; Enter .data section

numbers QWORD 1,82,4,9,17,214,0,52
sum QWORD 0

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    mov rcx, 0                  ; We'll use RCX as a counter here to track the current array index.
    mov rbx, LENGTHOF numbers   ; Get number of elements in the array. I chose to use MASM's LENGTHOF operator to get the length of the array at compile time.

begin:

    cmp rcx, rbx                ; Compare the current index to the number of elements in the array.
    jge done                    ; Break out of the loop if the index is >= the number of elements.

    mov rax, OFFSET [numbers]   ; Get the address of the numbers array
    mov rdx, [rax + rcx * 8]    ; Get the value of the next element in the array. Remember that each element in the array is 8 bytes long.
    add [sum], rdx              ; Add that value to the running total

    inc rcx                     ; Increment our counter
    jmp begin                   ; Jump back to the beginning of the loop

done:

    mov rcx, [sum]

    ; -------------------- \/ EPILOGUE \/ --------------------
    ; Put the return value in the RCX register before the call instruction executes.
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
