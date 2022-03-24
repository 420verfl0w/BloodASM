BITS 64

_exit_succes:
	mov rax, 60		; syscall_exit
	xor rdi, rdi	; exit status
	syscall			; kernel interrupt

_exit_failed:
	mov rax, 0x3c	; syscall_exit
	mov rdi, 1		; exit status 
	syscall			; kernel interrupt
