#ifndef BOARD_LEDS_H
#define BOARD_LEDS_H

#include "io_gpio.h"


typedef enum {
    BOARD_LEDS_OK,
    BOARD_LEDS_ERROR_OUT_OF_BOUNDS, 
    BOARD_LEDS_ERROR_INVALID_STATE, // internal error -- shouldn't happen
}BoardLEDs_Error;

/// enables the clock and sets the mode to OUTPUT for each led flag in $leds. 
/// param leds: represents a bitset of witdh 10 -- any value used over 0x3FF (10 enabled bits) will result in an error
BoardLEDs_Error board_leds_init(u16 leds);

// sets each specified led in $leds to HIGH.
/// param leds: represents a bitset of witdh 10 -- any value used over 0x3FF (10 enabled bits) will result in an error
BoardLEDs_Error board_leds_set(u16 leds);

// sets each specified led in $leds to LOW
/// param leds: represents a bitset of witdh 10 -- any value used over 0x3FF (10 enabled bits) will result in an error
BoardLEDs_Error board_leds_clear(u16 leds);

#endif // BOARD_LEDS_H

