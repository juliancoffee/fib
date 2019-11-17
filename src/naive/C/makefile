CC = gcc

all: fib

fib: fib.c
ifeq ($(CC), clang)
	clang fib.c -O3 -o fib
else
	gcc fib.c -O3 -o fib
endif

clean:
	rm -f fib
