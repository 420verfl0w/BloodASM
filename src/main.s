BITS 64

%include "bloodasm.inc"

section .bss
	buf resb 0x100

section .text

global _start

_start:
	mov		rdi, qword [rsp + 16]
	call	strlen
	mov rdx, rax
	mov rdi, buf
	mov rsi, qword [rsp + 16]
	call memcpy
	mov rdi, [rax]
	call putstr
	jmp		_exit_succes