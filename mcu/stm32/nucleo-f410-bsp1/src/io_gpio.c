#include <stdlib.h>
#include <stdbool.h>
#include "io_gpio.h"
#include "io_memory_map.h"
#include "io_memory_map/gpio.h"

IO_Gpio_Error io_gpio_clock_enable(IO_Gpio_Port port, bool en) {
    #define SET_GPIO_CLOCK(bitfield, en)\
        IO_RCC->AHB1ENR &= ~(bitfield);\
        IO_RCC->AHB1ENR |= (en) ? (bitfield) : 0

    switch (port) {
        case IO_GPIO_PORT_A:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIOAEN, en);
            break;
        case IO_GPIO_PORT_B:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIOBEN, en);
            break;
        case IO_GPIO_PORT_C:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIOCEN, en);
            break;
        case IO_GPIO_PORT_D:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIODEN, en);
            break;
        case IO_GPIO_PORT_E:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIOEEN, en);
            break;
        case IO_GPIO_PORT_F:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIOFEN, en);
            break;
        case IO_GPIO_PORT_G:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIOGEN, en);
            break;
        case IO_GPIO_PORT_H:
            SET_GPIO_CLOCK(IO_RCC_AHB1ENR_GPIOHEN, en);
            break;
        default:
            return IO_GPIO_ERROR_INVALID_PORT;
    }

    return IO_GPIO_OK;
}

IO_Gpio_Error io_gpio_from_port(volatile IO_GPIO_t* *out, IO_Gpio_Port port) {
    switch (port) {
        case IO_GPIO_PORT_A:
            *out = IO_GPIO_A;
            break;
        case IO_GPIO_PORT_B:
            *out = IO_GPIO_B;
            break;
        case IO_GPIO_PORT_C:
            *out = IO_GPIO_C;
            break;
        case IO_GPIO_PORT_D:
            *out = IO_GPIO_D;
            break;
        case IO_GPIO_PORT_E:
            *out = IO_GPIO_E;
            break;
        case IO_GPIO_PORT_F:
            *out = IO_GPIO_F;
            break;
        case IO_GPIO_PORT_G:
            *out = IO_GPIO_G;
            break;
        case IO_GPIO_PORT_H:
            *out = IO_GPIO_H;
            break;
        default:
            return IO_GPIO_ERROR_INVALID_PORT;
    }

    return IO_GPIO_OK;
}

IO_Gpio_Error io_gpio_set_mode(const IO_Gpio_Pin *pin, IO_GPIO_MODE mode) {
    if (mode > IO_GPIO_MODE_ANALOG) return IO_GPIO_ERROR_INVALID_MODE;
    if (pin->pin > 15) return IO_GPIO_ERROR_INVALID_PIN;

    volatile IO_GPIO_t * gpiox = NULL;
    IO_Gpio_Error status;
    if ( (status = io_gpio_from_port(&gpiox, pin->port)) != IO_GPIO_OK) return status;

    gpiox->MODER &= ~(0b11 << (2*(pin->pin)));
    gpiox->MODER |= (mode) << (2*(pin->pin));

    return IO_GPIO_OK;
}

