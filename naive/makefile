all: c go rust

c: fib.c
	gcc fib.c -O2 -o fibc

rust: fib.rs
	rustc fib.rs -O -o fibrs

go: fib.go
	go build -o fibgo fib.go

clean:
	rm -f fibc fibgo fibrs
