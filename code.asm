section .data
    er db "Не попал в диапозон", 10, 0
    len equ $-er

section .text
    global massiv

massiv: 
    push rbp
    mov rbp, rsp

    movsx rsi, si 
    movsx rdx, dx
    mov r13, rdi    ; *a
    mov r9, rsi     ; c
    mov r10, rdx    ; d
    mov r11, rcx    ; N
    xor rax, rax
    mov rax, 2
    imul r11, rax

    xor r12, r12    ;count 4 L
    xor rcx, rcx
    xor rbx, rbx
    inc rbx
    lp:
    mov ax, [r13 + rcx]
    movsx rax, ax
    cmp rax, r9
    jl end_cmp
    cmp rax, r10
    jg end_cmp
    imul bx, ax
    add r12, 1
    end_cmp:
    add cx, 2
    cmp r12, r8
    jge downsyndrome 
    cmp rcx, r11
    jne lp

    downsyndrome:
    cmp r12, 0
    jne bruh
    mov rsi, er
    mov rdx, len
    mov rax, 1 
    mov rdi, 1
    syscall
    bruh:
    mov rax, rbx

    mov rsp, rbp
    pop rbp
    ret
