CC = native

all: fib

fib:
ifeq ($(CC), llvm)
	ghc -O2 -fllvm fib.hs
else
	ghc -O2 fib.hs
endif
	rm -f fib.hi fib.o

clean:
	rm -f fib

