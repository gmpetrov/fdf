#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpetrov <gpetrov@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/12/16 13:47:03 by gpetrov           #+#    #+#              #
#    Updated: 2013/12/16 21:03:36 by gpetrov          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME	= fdf
SRCS	= main.c
OBJS	= ${SRCS:.c=.o}
INC		= ./
FLAGS	= -Wall

all: $(NAME)

$(NAME): $(OBJS)
	make -C libft
	gcc $(FLAGS) $(SRCS) -o $(NAME) -I libft/includes -L libft/ -lft \
	-L /usr/X11/lib -lmlx -lXext -lX11
%.o: %.c
	gcc -c $< -o $@ $(FLAGS) -I$(INC)
clean:
	rm -f $(OBJS)
fclean:
	rm -f $(NAME)
re: fclean all
