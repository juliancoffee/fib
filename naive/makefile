all: fibc fibgo fibrs fib.class fibnim fibscm fibpas fibhs fibzig fib.beam fibml

fibc: src/fib.c
	clang src/fib.c -O3 -o fibc

fibrs: src/fib.rs
	rustc src/fib.rs -O -o fibrs

fibgo: src/fib.go
	go build -o fibgo src/fib.go

fib.class: src/fib.java
	javac src/fib.java -d .

fibnim: src/fib.nim
	nim c -d:release -o:fibnim src/fib.nim
	rm -rf src/nimcache

fibscm: src/fib.scm
	chicken-csc src/fib.scm -o fibscm

fibpas: src/fib.pas
	fpc -O4 -CX -XX -Xs src/fib.pas -o./fibpas
	rm -rf ./fib.o

fibhs: src/fib.hs
	ghc -O -fllvm src/fib.hs -o fibhs
	rm -f src/{fib.hi,fib.o}

fibzig: src/fib.zig
	zig build-exe --strip --release-fast --name fibzig src/fib.zig
	rm -f main.o fibzig.o

fib.beam: src/fib.erl
	erlc src/fib.erl

fibml: src/fib.ml
	ocamlopt -o fibml src/fib.ml
	rm -f src/{fib.cmi,fib.cmx,fib.o}

clean:
	rm -f fibc fibgo fibrs "fib.class" "fib.beam" fibnim fibscm fibpas fibhs fibzig fibml
