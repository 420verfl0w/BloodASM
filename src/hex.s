BITS 64

hex_tab db "0123456789abcdef", 0

; encode str in hexadecimal
to_hex:
	sub rsp, 0x8
	mov qword [rsp], rdi

to_hex_loop:
	mov r8, hex_tab
	test rdx, rdx
	je to_hex_end
	mov rax, qword [rsp]
	mov r10b, byte [rsi]
	sar r10b, 4
	add r8, r10
	mov r9, [r8]
	mov byte [rax], r9b
	sub r8, r10
	mov r10b, byte [rsi]
	and r10b, 0xF
	add r8, r10
	mov r9, [r8]
	mov byte [rax + 0x1], r9b
	add rax, 0x2
	mov qword [rsp], rax
	inc rsi
	dec rdx
	jmp to_hex_loop

to_hex_end:
	mov byte [rax], 0x0
	add rsp, 0x8
	xchg rax, rdi
	ret