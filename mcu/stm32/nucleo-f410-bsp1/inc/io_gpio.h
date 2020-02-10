#ifndef GPIO_H
#define GPIO_H

#include <stdbool.h>
#include "mini_inttypes.h"
#include "io_memory_map.h"

typedef enum {
    IO_GPIO_OK,
    IO_GPIO_ERROR_INVALID_PORT,
    IO_GPIO_ERROR_INVALID_PIN,
    IO_GPIO_ERROR_INVALID_MODE,
}IO_Gpio_Error;

typedef enum {
    IO_GPIO_PORT_A,
    IO_GPIO_PORT_B,
    IO_GPIO_PORT_C,
    IO_GPIO_PORT_D,
    IO_GPIO_PORT_E,
    IO_GPIO_PORT_F,
    IO_GPIO_PORT_G,
    IO_GPIO_PORT_H,
}IO_Gpio_Port;

typedef struct {
    IO_Gpio_Port port;
    u8 pin; // 0-15
}IO_Gpio_Pin;

IO_Gpio_Error io_gpio_clock_enable(IO_Gpio_Port port, bool en);
IO_Gpio_Error io_gpio_from_port(volatile IO_GPIO_t* *out, IO_Gpio_Port port);
IO_Gpio_Error io_gpio_set_mode(const IO_Gpio_Pin *pin, IO_GPIO_MODE mode);

#endif // GPIO_H
