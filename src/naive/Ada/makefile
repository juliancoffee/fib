all: fib

fib: fib.adb
	gnatmake -O3 -o fib fib.adb
	rm -f fib.ali fib.o

clean:
	rm -f fib
