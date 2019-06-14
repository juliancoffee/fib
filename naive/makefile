all: c go rust java nim scheme

c: src/fib.c
	clang src/fib.c -O2 -o fibc

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

clean:
	rm -f fibc fibgo fibrs "fib.class" fibnim fibscm
