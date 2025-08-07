    .section .text
    .global _start

_start:
    mov $60, %rax      # syscall: exit
    xor %rdi, %rdi     # status: 0
    syscall
