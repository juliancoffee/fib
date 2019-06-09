#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int fib(int n);

int main(int argc, char *argv[]) {

    int n;
    n = atoi(argv[1]);

    printf("res = %d\n", fib(n));
    
    return 0;

}

int fib(int n) {
    if (n == 1) {
        return 1;
    }
    if (n == 2) {
        return 2;
    }

    return fib(n-1) + fib(n-2);
}
