BITS 64

%include "utils.inc"

section .bss
	buf resb 256

section .data				; data initiliazed
	msg db "hello", 0		; string hello

section .text

global _start

_start:
	mov rdi, buf
	mov rsi, msg
	mov rdx, 5
	call to_hex
	jmp _exit_succes