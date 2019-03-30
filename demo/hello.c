#include <stdio.h>
int main(int argc, char* argv[])
{
    if (argc > 1) {
            printf("Hello from Lucet, %s!\n", argv[1]);
    } else {
            puts("Hello, world!");
    }
    return 0;
}
