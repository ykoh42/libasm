SRCS		=	ft_strlen.s\
			ft_strcpy.s\
			ft_strcmp.s\
			ft_write.s\
			ft_read.s\
			ft_strdup.s

OBJS		=	$(SRCS:.s=.o)
NAME		=	libasm.a
RM		=	rm -f
LIB		=	ar rcs
NASM		=	nasm
NASMFLAGS	= 	-f macho64
CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror -g -fsanitize=address

%.o		:	%.s
			$(NASM) $(NASMFLAGS) $^

$(NAME)		:	$(OBJS)
			$(LIB) $@ $^

all		:	$(NAME)

clean		:
			$(RM) $(OBJS)

fclean		:	clean
			$(RM) $(NAME)

re		:	fclean all

test		:	re
			@$(CC) $(CFLAGS) $(NAME) main.c
			@clear
			@./a.out
			@rm -rf a.out*

.PHONY		:	all clean fclean re test
