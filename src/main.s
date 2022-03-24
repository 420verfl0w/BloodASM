BITS 64

%include "utils.inc"

section .bss
	buf resb 256

section .data
	msg db "hello", 0

section .text

global _start

_start:
	mov rdi, buf
	mov rsi, msg
	mov rdx, 5
	call to_hex
	jmp _exit_succes