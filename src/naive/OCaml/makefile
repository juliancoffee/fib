all: fib

fib: fib.ml
	ocamlopt -o fib fib.ml
	rm fib.cmi fib.cmx fib.o

clean:
	rm -f fib
