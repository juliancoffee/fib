all: c go rust java

c: fib.c
	gcc fib.c -O2 -o fibc

rust: fib.rs
	rustc fib.rs -O -o fibrs

go: fib.go
	go build -o fibgo fib.go

java: fib.java
	javac fib.java

clean:
	rm -f fibc fibgo fibrs fib.class
