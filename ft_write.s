; ssize_t	write(int fildes, const void *buf, size_t nbyte);

section	.text
	global	_ft_write
	extern	___error

_ft_write:
	mov	rax, 0x02000004
	syscall
	jc	error
	ret

error:
	push	rax
	call	___error
	pop	rdx
	mov	[rax], rdx
	mov	rax, -1
	ret
