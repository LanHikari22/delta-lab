#define TXBUFSIZE 256
#define RXBUFSIZE 256

#ifdef USE_CHIBIOS
#include "ch.h"

#define USART1_tx_EVT 0x0001
#define USART2_tx_EVT 0x0002
#define USART3_tx_EVT 0x0004
#define USART4_tx_EVT 0x0008
#define USART5_tx_EVT 0x0010
#define USART6_tx_EVT 0x0020

#endif
