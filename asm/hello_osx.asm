global _main   ; define entrypoint
section .text
_main:
    mov rax, 0x02000004     ; syscall number for write() (OSX)
    mov rdi, 1              ; int fd 
    mov rsi, msg            ; const void* buf 
    mov rdx, 13             ; size_t count
    syscall

    mov rax, 0x02000001     ; syscall number for exit() (OSX)
    ; mov rdi, 1            ; int status
    xor rdi, rdi
    syscall

section .data
    msg: db "Hello World!",0xa, 0xd
    mlen: equ $-msg
