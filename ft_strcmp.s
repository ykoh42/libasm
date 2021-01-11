; int	ft_strcmp(const char *s1, const char *s2)
; {
; 	while (1)
; 	{
; 		if (*s1 != *s2)
; 			break ;
; 		if (*s1 == 0)
; 			return (0);
; 		s1++;
; 		s2++;
; 	}
; 	return (*s1 - *s2);
; }

section	.text
	global	_ft_strcmp

_ft_strcmp:
	mov	rax, 0

while:
	mov	al, byte [rdi]
	mov	dl, byte [rsi]
	cmp	al, dl
	jne	end
	cmp	al, 0
	je	end2
	inc	rdi
	inc	rsi
	jmp	while

end:
	sub	rax, rdx
	ret

end2:
	ret
