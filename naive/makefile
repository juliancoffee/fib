all: c go rust java nim scheme

c: fib.c
	gcc fib.c -O2 -o fibc

rust: fib.rs
	rustc fib.rs -O -o fibrs

go: fib.go
	go build -o fibgo fib.go

java: fib.java
	javac fib.java

nim: fib.nim
	nim c -d:release -o:fibnim fib.nim
	rm -rf nimcache

scheme: fib.scm
	chicken-csc fib.scm -o fibscm

clean:
	rm -f fibc fibgo fibrs "fib.class" fibnim fibscm
