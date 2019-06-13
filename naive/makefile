all: c go rust java nim

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

clean:
	rm -f fibc fibgo fibrs fib.class fibnim
