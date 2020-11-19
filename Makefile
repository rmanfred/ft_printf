#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By: rmanfred <rmanfred@21-school.ru>           +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2020/05/05 23:45:50 by rmanfred          #+#    #+#             *#
#*   Updated: 2020/05/19 17:15:02 by rmanfred         ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
HEADER = libftprintf.h

INPUT = ft_printf.c ft_put_c.c ft_put_s.c ft_put_d_i.c \
	ft_put_x.c ft_put_u.c ft_put_ptr.c ft_strlen.c ft_substr.c\
	ft_strchr.c ft_strjoin.c ft_strdup.c ft_putstr_number.c ft_putchar.c \
	ft_isdigit.c ft_itoa.c ft_itoa_x.c ft_itoa_u.c\

OBJ = $(INPUT:.c=.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ) $(HEADER) 
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.c $(HEADER)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
