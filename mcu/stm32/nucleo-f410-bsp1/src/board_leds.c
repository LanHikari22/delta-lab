#include "board_leds.h"
#include "mini_inttypes.h"


// GPIO pins routed for LEDs
static IO_Gpio_Pin board_leds_pins[] = {
    (IO_Gpio_Pin) {IO_GPIO_PORT_A, 7},
    (IO_Gpio_Pin) {IO_GPIO_PORT_A, 8},
    (IO_Gpio_Pin) {IO_GPIO_PORT_A, 9},
    (IO_Gpio_Pin) {IO_GPIO_PORT_A, 10},
    (IO_Gpio_Pin) {IO_GPIO_PORT_A, 11},
    (IO_Gpio_Pin) {IO_GPIO_PORT_B, 8},
    (IO_Gpio_Pin) {IO_GPIO_PORT_B, 9},
    (IO_Gpio_Pin) {IO_GPIO_PORT_B, 10},
    (IO_Gpio_Pin) {IO_GPIO_PORT_B, 12},
    (IO_Gpio_Pin) {IO_GPIO_PORT_B, 13},
};


BoardLEDs_Error board_leds_init(u16 leds) {
    // ensure that the flags describe no more than 10 bits corresponding to 10 LEDs
    if (leds > 0x3FF) return BOARD_LEDS_ERROR_OUT_OF_BOUNDS;

    IO_Gpio_Error gpio_status;
    // init each selected LED
    for (int bit=0; bit<10; bit++) {
        if (leds & (1<<bit)) {
            gpio_status = io_gpio_clock_enable(board_leds_pins[bit].port, /*en*/ true);
            if (gpio_status != IO_GPIO_OK) return BOARD_LEDS_ERROR_INVALID_STATE;
            gpio_status = io_gpio_set_mode(&board_leds_pins[bit], IO_GPIO_MODE_OUTPUT);
            if (gpio_status != IO_GPIO_OK) return BOARD_LEDS_ERROR_INVALID_STATE;

            volatile IO_GPIO_t *led_gpio;
            if (io_gpio_from_port(&led_gpio, board_leds_pins[bit].port) != IO_GPIO_OK) return BOARD_LEDS_ERROR_INVALID_STATE;

        }
    }
    
    return BOARD_LEDS_OK;
}


BoardLEDs_Error board_leds_set(u16 leds) {
    // ensure that the flags describe no more than 10 bits corresponding to 10 LEDs
    if (leds > 0x3FF) return BOARD_LEDS_ERROR_OUT_OF_BOUNDS;

    IO_Gpio_Error gpio_status;
    // init each selected LED
    for (int bit=0; bit<10; bit++) {
        if (leds & (1<<bit)) {
            volatile IO_GPIO_t *led_gpio;
            gpio_status = io_gpio_from_port(&led_gpio, board_leds_pins[bit].port);
            if (gpio_status != IO_GPIO_OK) return BOARD_LEDS_ERROR_INVALID_STATE;

            led_gpio->ODR |= (1<<board_leds_pins[bit].pin);
        }
    }
    
    return BOARD_LEDS_OK;
}


BoardLEDs_Error board_leds_clear(u16 leds) {
    // ensure that the flags describe no more than 10 bits corresponding to 10 LEDs
    if (leds > 0x3FF) return BOARD_LEDS_ERROR_OUT_OF_BOUNDS;

    IO_Gpio_Error gpio_status;
    // init each selected LED
    for (int bit=0; bit<10; bit++) {
        if (leds & (1<<bit)) {
            volatile IO_GPIO_t *led_gpio;
            gpio_status = io_gpio_from_port(&led_gpio, board_leds_pins[bit].port);
            if (gpio_status != IO_GPIO_OK) return BOARD_LEDS_ERROR_INVALID_STATE;

            led_gpio->ODR &= ~(1<<board_leds_pins[bit].pin);
        }
    }
    
    return BOARD_LEDS_OK;
}
