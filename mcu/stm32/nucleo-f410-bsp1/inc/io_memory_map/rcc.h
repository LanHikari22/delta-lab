#ifndef IO_MEMORY_MAP_RCC
#define IO_MEMORY_MAP_RCC

#include "mini_inttypes.h"

typedef struct {
    u32 CR;
    u32 PLL_CFGR;
    u32 CFGR;
    u32 CIR;
    u32 AHB1RSTR;
    u32 AHB2RSTR;
    u32 AHB3RSTR;
    u32 RESERVED_1C;
    u32 APB1RSTR;
    u32 APB2RSTR;
    u32 RESERVED_28;
    u32 RESERVED_2C;
    u32 AHB1ENR;
    u32 AHB2ENR;
    u32 AHB3ENR;
    u32 RESERVED_3C;
    u32 APB1ENR;
    u32 APB2ENR;
    u32 RESERVED_48;
    u32 RESERVED_4C;
}IO_RCC_t;

#define IO_RCC_AHB1ENR_GPIOAEN     (0x1<<0)
#define IO_RCC_AHB1ENR_GPIOBEN     (0x1<<1)
#define IO_RCC_AHB1ENR_GPIOCEN     (0x1<<2)
#define IO_RCC_AHB1ENR_GPIODEN     (0x1<<3)
#define IO_RCC_AHB1ENR_GPIOEEN     (0x1<<4)
#define IO_RCC_AHB1ENR_GPIOFEN     (0x1<<5)
#define IO_RCC_AHB1ENR_GPIOGEN     (0x1<<6)
#define IO_RCC_AHB1ENR_GPIOHEN     (0x1<<7)
#define IO_RCC_AHB1ENR_CRCEN       (0x1<<12)
#define IO_RCC_AHB1ENR_BKPSRAMEN   (0x1<<18)
#define IO_RCC_AHB1ENR_DMA1EN      (0x1<<21)
#define IO_RCC_AHB1ENR_DMA2EN      (0x1<<22)
#define IO_RCC_AHB1ENR_OTGHSEN     (0x1<<29)
#define IO_RCC_AHB1ENR_OTGHSULPIEN (0x1<<30)

#endif // IO_MEMORY_MAP_RCC
