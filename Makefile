# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akitty <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/10 20:43:59 by akitty            #+#    #+#              #
#    Updated: 2021/11/10 20:44:01 by akitty           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= get_next_line

FLAGS		= -Wall -Wextra -Werror

BUF			= -D BUFFER_SIZE=42

SRCS		= get_next_line.c get_next_line_utils.c 
BONUS_SRCS	= get_next_line_bonus.c get_next_line_utils_bonus.c 

OBJ			= ${SRCS:.c=.o}
BONUS_OBJ	= ${BONUS_SRCS:.c=.o}

$(NAME):	${OBJ}
				ar rcs $(NAME) ${OBJ}

%.o : 		%.c
				gcc $(FLAGS) ${FT_H} ${BUF} -c $< -o ${<:.c=.o}

all :		${NAME}

bonus :		${BONUS_OBJ}
				ar rcs $(NAME) ${BONUS_OBJ}

clean :
				rm -f $(OBJ) $(BONUS_OBJ)

fclean : 	clean
				rm -f $(NAME)

re :		fclean all

.PHONY:		all clean fclean re bonus
