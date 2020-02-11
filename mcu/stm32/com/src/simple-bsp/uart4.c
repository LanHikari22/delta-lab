#include "bsp-conf.h"
#ifdef ENABLE_UART4

#define C_SIMPLE_BSP
#define C_UART
#define bsp_uno 4
#include "usartx.c"

#endif
