BITS 64

; void *memcpy(char *dst, char *src, size_t len)
;{
;	char *save = dst;
;	while (len--)
;		*dst++ = *src++;
;	return (save);
;}

memcpy:
	sub rsp, 0x8
	mov qword [rsp], rdi
	xchg rcx, rdx
	cld
	rep movsb
	lea rax, [rsp]
	xchg rcx, rdx
	add rsp, 0x8
	ret