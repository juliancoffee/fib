all: fib

fib: fib.zig
	zig build-exe --strip --release-fast fib.zig
	rm -f main.o fib.o
