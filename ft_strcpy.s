; char	*ft_strcpy(char *s1, const char *s2)
; {
; 	char	*s;

; 	s = s1;
; 	while (1)
; 	{
; 		*s1 = *s2;
; 		if (*s1 == 0)
; 			break ;
; 		s1++;
; 		s2++;
; 	}
; 	return (s);
; }

section	.text
	global	_ft_strcpy

_ft_strcpy:
	mov	rax, rdi
	
 while:
	mov	dl, byte [rsi]
	mov	byte [rdi], dl
	cmp	byte [rdi], 0
	je	end
	inc	rdi
	inc	rsi
	jmp	while

end:
	ret
