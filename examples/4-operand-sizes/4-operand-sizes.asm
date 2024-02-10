extrn ExitProcess : proc

.DATA

byte_var BYTE ?
word_var WORD ?
dword_var DWORD ?
qword_var QWORD ?

.CODE

main PROC

;----------------------------------------------------------

; Valid register-register instructions

mov al, bl      ; 8-bit
mov ax, bx      ; 16-bit
mov eax, ebx    ; 32-bit
mov rax, rbx    ; 64-bit

; Valid register-immediate instructions

mov al, 1
mov ax, 1
mov eax, 1
mov rax, 1

; Valid register-memory instructions using variables

mov al, [byte_var]
mov ax, [word_var]
mov eax, [dword_var]
mov rax, [qword_var]

; Valid memory-immediate instructions

mov [byte_var], 2
mov [word_var], 2
mov [dword_var], 2
mov [qword_var], 2

; Invalid instruction examples

;mov al, bx
;mov eax, bx
;mov rax, eax
;mov ax, 52381h
;mov [byte_var], 3562h
;mov [word_var], bl
;mov rax, [byte_var]

; Examples of memory operands using registers

mov rax, [rsp]
mov eax, [rsp]
mov ax, [rsp]
mov al, [rsp]

mov eax, [rsp]
mov ax, [rsp]
mov al, [rsp]

mov [rsp], rax
mov [rsp], eax
mov [rsp], ax
mov [rsp], al

mov byte ptr [rsp], 25h     ; Use the address in RSP as a pointer to an 8-bit value
mov word ptr [rsp], 25h     ; Use the address in RSP as a pointer to a 16-bit value
mov dword ptr [rsp], 25h    ; Use the address in RSP as a pointer to a 32-bit value
mov qword ptr [rsp], 25h    ; Use the address in RSP as a pointer to a 64-bit value

;mov [rsp], 25h  ; invalid because MASM doesn't know how big the destination is

; In the following examples, the 'xxx ptr' is not required (it is implied by MASM), but is still valid

mov al, byte ptr [rsp]
mov ax, word ptr [rsp]
mov eax, dword ptr [rsp]
mov rax, qword ptr [rsp]

;----------------------------------------------------------

xor rcx, rcx
call ExitProcess

main ENDP

END
