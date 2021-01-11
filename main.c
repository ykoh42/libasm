/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ykoh <ykoh@student.42seoul.kr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/11 16:35:57 by ykoh              #+#    #+#             */
/*   Updated: 2021/01/11 16:35:59 by ykoh             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int	main(void)
{
	char		*str[100];
	static char	dst[100];
	char		*src;
	int			fd;

	printf("ft_strlen\n");
	str[0] = "how long";
	printf("str : %s\nlen : %zu\n\n", str[0], ft_strlen(str[0]));
	printf("ft_strcpy\n");
	src = "cpy";
	printf("dst : %s\nsrc : %s\n", dst, src);
	printf("ret : %s\n\n", ft_strcpy(dst, src));
	str[1] = "asdf";
	str[2] = "asdf";
	printf("ft_strcmp\n");
	printf("str1 : %s\nstr2 : %s\nret : %d\n\n",
	str[1], str[2], ft_strcmp(str[1], str[2]));
	printf("ft_read ft_write\n");
	fd = open("./main.c", O_RDONLY);
	ft_read(fd, dst, 1);
	ft_write(1, dst, ft_strlen(dst));
	close(fd);
	printf("\n\nft_strdup\n");
	printf("ret : %s\n", ft_strdup(dst));
	return (0);
}
