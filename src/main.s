BITS 64

%include "putstr.s"
%include "exit.s"

section .bss
	buf resb 256

section .data				; data initiliazed
	msg db "hello", 0		; string hello

section .text

global _start

_start:
	; RSP == argc
	; RSP + 0x8 == argv[0]
	; RSP + ? == argv[1]
	mov		rdi, qword [rsp + 16]
	call	putstr
	jmp		_exit_succes