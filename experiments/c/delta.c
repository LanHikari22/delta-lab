#include <stdio.h>

int convert_buffer_to_number (const void * buffer, unsigned char size, unsigned *result) {
    const unsigned char * p = buffer;
    int out = 0;
    if (size > sizeof result) return -1;
    unsigned char pos;
    for (pos = 0; pos < size; pos ++) {
        out |= *(p ++) << (pos << 3);
    }
    *result = out;
    return 0;
}

typedef struct {
    int error;
} DivideByZeroError;


#define ResultTemplate(T, E) \
typedef struct { \
    int is_ok; \
    union { \
        T ok; \
        E err; \ 
    } res; \
} Result_##T;


ResultTemplate(int, DivideByZeroError)
Result_int divide(int a, int b) {
    if (b == 0) {
        return (Result_int){0, {-1}};
    }
    return (Result_int){1, a/b};
}

void main() {
    /* printf("%d\n", convert_buffer_to_number((const unsigned char []){0xFF, 0xFF, 0xFF, 0xFF}, 4)); */

    Result_int valid_num = divide(10, 5);
    printf("result: %d, valid? %d\n", valid_num.res, valid_num.is_ok);

    Result_int invalid = divide(10, 0);
    printf("result: %d, valid? %d\n", invalid.res, invalid.is_ok);

}
