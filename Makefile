CC = nasm
NAME = bloodasm
FLAGS = -f elf64 -Isrc
SRCS =$(wildcard src/*.s)
OBJS = $(SRCS:.s=.o)
LD_FLAGS = -pie -dynamic-linker /lib64/ld-linux-x86-64.so.2

all: $(NAME)

%.o: %.s
	$(CC) $(FLAGS) -o $@ $<

$(NAME): $(OBJS)
	ld $(LS_FLAGS) $(OBJS) -o $(NAME)

clean: $(OBJS)
	rm $^

fclean: clean
	rm $(NAME)