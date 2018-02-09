NAME=libftprintf.a
LIBFTDIR=libft/
FLAGS= -Wall -Wextra -Werror -c
SRCS=src/ft_printf.c\
	 src/ft_dprintf.c\
	 src/ft_sprintf.c\
	 src/ft_sformat.c\
	 src/init_funcs.c\
	 src/print_formatted.c\
	 src/render/render_format.c\
	 src/render/handle_errors.c\
	 src/render/dispatcher_funcs.c\
	 src/render/utf8.c\
	 src/flag_funcs/flag_field.c\
	 src/flag_funcs/flag_style.c\
	 src/flag_funcs/flag_size.c\
	 src/flag_funcs/flag_bonus.c\
	 src/format_funcs/format_str.c\
	 src/format_funcs/format_int.c\
	 src/format_funcs/format_base.c\
	 src/format_funcs/format_bonus.c\
	 src/format_funcs/write_fmt.c\
	 src/format_funcs/processing/processing.c\
	 src/format_funcs/processing/str_processing.c\
	 src/format_funcs/processing/int_processing.c\
	 src/buff_management/buff.c\
	 src/buff_management/buff_funcs.c\
	 src/buff_management/flush.c\
	 src/buff_management/unistr_funcs.c\
	 $(LIBFTDIR)ft_atoi.c\
	 $(LIBFTDIR)ft_isdigit.c\
	 $(LIBFTDIR)ft_itoa_base.c\
	 $(LIBFTDIR)ft_itoamax.c\
	 $(LIBFTDIR)ft_memset.c\
	 $(LIBFTDIR)ft_bzero.c\
	 $(LIBFTDIR)ft_putstr.c\
	 $(LIBFTDIR)ft_strcmp.c\
	 $(LIBFTDIR)ft_strncmp.c\
	 $(LIBFTDIR)ft_strequ.c\
	 $(LIBFTDIR)ft_strnequ.c\
	 $(LIBFTDIR)ft_tolower.c\
	 $(LIBFTDIR)ft_strlen.c\
	 $(LIBFTDIR)ft_memalloc.c\
	 $(LIBFTDIR)ft_strnew.c\
	 $(LIBFTDIR)ft_wstrlen.c\
	 $(LIBFTDIR)ft_wstrnew.c
OBJS=$(SRCS:%.c=%.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.c
	gcc $(FLAGS) $< -o $@

clean:
	-rm -f $(OBJS)

fclean: clean
	-rm -f $(NAME)

re: fclean all
