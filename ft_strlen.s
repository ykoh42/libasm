; size_t	ft_strlen(const char *s)
; {
; 	int	i;

; 	i = 0;
; 	while (1)
; 	{
; 		if (*(s + i) == 0)
; 			break ;
; 		i++;
; 	}
; 	return (i);
; }

section	.text
	global	_ft_strlen

_ft_strlen:
	mov	rax, 0

while:
	cmp	byte [rdi + rax], 0
	je	end
	inc	rax
	jmp	while

end:
	ret
