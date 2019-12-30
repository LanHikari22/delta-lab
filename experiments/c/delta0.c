#include <stdio.h>


typedef struct {
    int x;
}Beep;

int main() {
    Beep a = {0xA};
    Beep b = (Beep){0xB};

    printf("a: %d, b: %d\n", a.x, b.x);
    return 0;
}
