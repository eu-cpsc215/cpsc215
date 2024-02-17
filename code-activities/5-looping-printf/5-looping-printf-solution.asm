extrn ExitProcess : proc        ; Declare external function ExitProcess
extrn printf : proc             ; Declare external function printf

.DATA                           ; Directive; Enter .data section

format_str BYTE "%d ",0
numbers BYTE 1,82,4,9,17,214,0,52

.CODE                           ; Directive: Enter .code section

main PROC                       ; Directive: Begin function labeled `main`

    sub rsp, 28h                ; Bump 8 bytes to ensure 16 byte alignment. Reserve 32 bytes shadow space.
    ; -------------------- /\ PROLOGUE /\ --------------------

    mov r12, 0                  ; We'll use the R10 register as a counter. You could alternatively use a variable to do this.

    mov r13, LENGTHOF numbers   ; We'll use the RBX register to store the number of items in the array.
                                ; You could hard code this if you wanted to for the purposes of this activity.
                                ; I chose to use MASM's LENGTHOF operator to get the length of the array at compile time.

    mov r14, OFFSET [numbers]   ; Store the address of the numbers array in the R12 variable. We'll use this later.

begin:

    cmp r12, r13                ; Compare our counter to the length of the array.
    jge done                    ; Break out of the loop if counter is >= to the length of the array.

    mov rcx, OFFSET [format_str]    ; Gets the address of the format_str array
    xor rdx, rdx                    ; This clears the RDX register. We're going to read a single byte in the DL register below, but need to make sure the upper bits are cleared.
    mov dl, [r14 + r12]             ; Gets the next element in the numbers array and store it in the DL register.
                                    ; Note the destination is the DL register (8-bit). In the numbers array, each element is one byte.
                                    ; We only want to read one byte at a time here.
                                    ; R14 has the address of the numbers array. R12 is the number of bytes we want to skip over before reading the next one.
    
    call printf                 ; This line calls the printf function.

    inc r12                     ; Increment our counter to move to the next element in the array.
    jmp begin                   ; Jump back to the beginning of the loop.

done:

    ; -------------------- \/ EPILOGUE \/ --------------------
    xor rcx, rcx
    call ExitProcess            ; Use Windows API to exit the process

main ENDP                       ; Directive: End function labeled `main`

END
