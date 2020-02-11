#include "bsp-conf.h"
#ifdef ENABLE_USART6

#define C_SIMPLE_BSP
#define C_USART
#define bsp_uno 6
#include "usartx.c"

#endif
