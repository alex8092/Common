CC = gcc

CFLAGS = -Wall -Wextra -Werror -I$(INCLUDEDIR) -fPIC

DEBUG = true
ifeq ($(DEBUG), true)
	CFLAGS += -ggdb3
else
	CFLAGS += -O3
endif

LDFLAGS = -shared -Wl,-soname,$(SHORTNAME).1

OBJDIR = obj
SRCDIR = src
INCLUDEDIR = include/ft_common
LIBDIR = lib

SRCS =	ft_atoi.c \
		ft_bzero.c \
		ft_findfirstof.c \
		ft_isinarray.c \
		ft_isprint.c \
		ft_memalloc.c \
		ft_memcpy.c \
		ft_strchr.c \
		ft_strcmp.c \
		ft_strdup.c \
		ft_strjoin.c \
		ft_strlen.c \
		ft_strncmp.c \
		ft_strncpy.c \
		ft_strndup.c \
		ft_strsplit.c \
		ft_strsub.c \
		ft_strtrim.c \
		ft_tabstradd.c \
		ft_tabstrlen.c

OBJS_BASE = $(SRCS:.c=.o)

OBJS = $(addprefix $(OBJDIR)/, $(OBJS_BASE))

NAME = libcommon.so

all: $(NAME)

$(NAME): $(OBJS)
	mkdir -p $(LIBDIR)
	$(CC) -o $(LIBDIR)/$@ $^ $(LDFLAGS)

install:
	mv $(LIBDIR)/$(NAME) /usr/lib
	ln -sf /usr/lib/$(NAME).1.0 /usr/lib/$(NAME)
	ln -sf /usr/lib/$(NAME).1 /usr/lib/$(NAME)
	mkdir -p /usr/$(INCLUDEDIR)
	cp $(INCLUDEDIR)/common.h /usr/$(INCLUDEDIR)

$(OBJDIR)/ft_atoi.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_bzero.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_findfirstof.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_isinarray.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_isprint.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_memalloc.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_memcpy.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strchr.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strcmp.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strdup.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strjoin.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strlen.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strncpy.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strndup.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strsplit.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strsub.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_strtrim.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_tabstradd.o: $(INCLUDEDIR)/common.h
$(OBJDIR)/ft_tabstrlen.o: $(INCLUDEDIR)/common.h

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	mkdir -p $(OBJDIR)
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -f $(OBJS)
	rm -rf $(OBJDIR)

fclean: clean
	rm -rf $(LIBDIR)

re: fclean all

.PHONY: all clean fclean re
