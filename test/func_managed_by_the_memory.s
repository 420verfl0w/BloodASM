BITS 64

section .text
global _start

params:
	dd 2 ; 32 bits value
	dd 4 ; 32 bits value

_start:
	mov eax, params
	call sum

sum:
	mov edx, [eax + 4]
	add edx, [eax]
	ret