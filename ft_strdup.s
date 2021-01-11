; char	*ft_strdup (const char *s)
; {
; 	int		len;
; 	void	*new;

; 	len = strlen(s) + 1;
; 	new = malloc(len);
; 	if (new == NULL)
; 		return (NULL);
; 	return (ft_strcpy(new, s));
; }

section	.text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_ft_strcpy
	extern	_malloc

_ft_strdup:
	push	rdi
	call	_ft_strlen
	inc	rax
	mov	rdi, rax
	call	_malloc
	cmp	rax, 0
	je	end
	mov	rdi, rax
	pop	rsi
	call	_ft_strcpy
	ret

end:
	ret
