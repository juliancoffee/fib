import std.stdio;
import std.conv;

int main(char[][] args) {
    int n = parse!(int, char[])(args[1]);
    writeln(fib(n));

    return 0;
}

int fib(int n) {
    if (n < 3) {
        return 1;
    }
    return fib(n-1) + fib(n-2);
}
