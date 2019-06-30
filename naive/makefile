all: c go rust java nim scheme pascal haskell v

c: src/fib.c
	clang src/fib.c -O3 -o fibc

rust: src/fib.rs
	rustc src/fib.rs -O -o fibrs

go: src/fib.go
	go build -o fibgo src/fib.go

java: src/fib.java
	javac src/fib.java -d .

nim: src/fib.nim
	nim c -d:release -o:fibnim src/fib.nim
	rm -rf src/nimcache

scheme: src/fib.scm
	chicken-csc src/fib.scm -o fibscm

pascal: src/fib.pas
	fpc -O4 -CX -XX -Xs src/fib.pas -o./fibpas
	rm -rf ./fib.o

haskell: src/fib.hs
	ghc -O -fllvm src/fib.hs -o fibhs
	rm -f src/{fib.hi,fib.o}

v: src/fib.v
	v -prod -o fibv src/fib.v

zig: src/fib.zig
	zig build-exe --strip --release-fast --name fibzig src/fib.zig
	rm -f main.o

clean:
	rm -f fibc fibgo fibrs "fib.class" fibnim fibscm fibpas fibhs fibv fibzig
