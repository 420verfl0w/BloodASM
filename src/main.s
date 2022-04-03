BITS 64

%include "bloodasm.inc"

section .bss
	buf resb 0x100

section .text

global _start

_start:
	mov rdx, 3
	mov rdi, buf
	mov rsi, my_struct + name
	call memcpy
	mov rdi, [rax]
	call putstr
	jmp		_exit_succes