all: fib

fib: fib.pas
	fpc -O4 -CX -XX -Xs fib.pas
	rm -rf fib.o

clean:
	rm -f fib
