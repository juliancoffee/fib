all: bin/fibc bin/fibgo bin/fibrs bin/ bin/fib.class bin/fibnim bin/fibscm bin/fibpas bin/fibhs bin/fibzig bin/fib.beam bin/fibml bin/fibada

bin/fibc: src/fib.c
	clang src/fib.c -O3 -o bin/fibc

bin/fibrs: src/fib.rs
	rustc src/fib.rs -C opt-level=s -o bin/fibrs

bin/fibgo: src/fib.go
	go build -o bin/fibgo src/fib.go

bin/fib.class: src/fib.java
	javac src/fib.java -d .
	mv fib.class bin

bin/fibnim: src/fib.nim
	nim c -d:release -o:bin/fibnim src/fib.nim
	rm -rf src/nimcache

bin/fibscm: src/fib.scm
	chicken-csc src/fib.scm -o bin/fibscm

bin/fibpas: src/fib.pas
	fpc -O4 -CX -XX -Xs src/fib.pas -obin/fibpas
	rm -rf bin/fib.o

bin/fibhs: src/fib.hs
	ghc -O -fllvm src/fib.hs -o bin/fibhs
	rm -f src/{fib.hi,fib.o}

bin/fibzig: src/fib.zig
	zig build-exe --strip --release-fast --name bin/fibzig src/fib.zig
	rm -f main.o bin/fibzig.o

bin/fib.beam: src/fib.erl
	erlc src/fib.erl
	mv fib.beam bin

bin/fibml: src/fib.ml
	ocamlopt -o bin/fibml src/fib.ml
	rm -f src/{fib.cmi,fib.cmx,fib.o}

bin/fibada: src/fib.adb
	gnatmake -O3 -o bin/fibada src/fib.adb
	rm -f fib{.ali,.o}

clean:
	rm -f bin/{fibc,fibgo,fibrs,"fib.class","fib.beam",fibnim,fibscm,fibpas,fibhs,fibzig,fibml,fibada}
