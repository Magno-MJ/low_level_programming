global _start

section .data
message: db 'hello, world!', 10

section .text
_start:
  mov rax, 1 ; syscall number
  mov rdi, 1 ; stdout file descriptor
  mov rsi, message ; address of the content
  mov rdx, 14 ; size of the content in bytes
  syscall ; syscall instruction
