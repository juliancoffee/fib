#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

int fib(int64_t n);

int main(int argc, char *argv[]) {

    int64_t n;
    n = atoi(argv[1]);

    printf("res = %li\n", fib(n));
    
    return 0;

}

int fib(int64_t n) {
    if (n == 1) {
        return 1;
    }
    if (n == 2) {
        return 1;
    }

    return fib(n-1) + fib(n-2);
}