    .section .data
msg:
    .ascii "hello syscall\n"
len = . - msg

    .section .text
    .global _start
_start:
    mov $1, %rax          # syscall: write
    mov $1, %rdi          # fd = stdout
    lea msg(%rip), %rsi   # pointer to msg
    mov $len, %rdx        # length
    syscall               # invoke kernel

    mov $60, %rax         # syscall: exit
    xor %rdi, %rdi        # status = 0
    syscall
