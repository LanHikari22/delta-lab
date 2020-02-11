// common include for all usart drivers
#include "usartcomm.h"

#define cc2(x,y) x##y
#define cc3(u,v,w) u##v##w

#define huartz(z)			cc2(huart,z)
#define huartx huartz(bsp_uno)

#define USARTz_TxBuffer(z)	cc3(USART,z,_TxBuffer)
#define USARTx_TxBuffer		USARTz_TxBuffer(bsp_uno)

#define init_USARTz(z)		cc2(init_USART,z)
#define init_USARTx 		init_USARTz(bsp_uno)

#define SendDataUSARTz(z)	cc2(SendDataUSART,z)
#define SendDataUSARTx 		SendDataUSARTz(bsp_uno)

#define WaitUSARTz(z)		cc2(WaitUSART,z)
#define WaitUSARTx			WaitUSARTz(bsp_uno)

#define txbufz(z)			cc2(txbuf,z)
#define txbufx				txbufz(bsp_uno)

#define rxbufz(z)			cc2(rxbuf,z)
#define rxbufx				rxbufz(bsp_uno)

#define rxbpz(z)			cc2(rxbp,z)
#define rxbpx				rxbpz(bsp_uno)

#define rxrpz(z)			cc2(rxrp,z)
#define rxrpx				rxrpz(bsp_uno)

#define	 txrz(z)			cc2(txr,z)
#define	 txrx				txrz(bsp_uno)

#define	 rxidlz(z)			cc2(rxidl,z)
#define	 rxidlx				rxidlz(bsp_uno)

void init_USARTx(void);

void SendDataUSARTx(char *USARTx_TxBuffer, int Length);
void WaitUSARTx(void);

extern char txbufx[TXBUFSIZE], rxbufx[RXBUFSIZE];
extern volatile short int rxbpx, rxrpx, txrx, rxidlx;

#ifdef C_SIMPLE_BSP

#include "cube_dma.h"

#define USARTz_BAUD(z)		cc3(USART,z,_BAUD)
#define USARTx_BAUD			USARTz_BAUD(bsp_uno)

#define USARTz_DE_ON(z)		cc3(USART,z,_DE_ON)
#define USARTx_DE_ON		USARTz_DE_ON(bsp_uno)

#define USARTz_DE_OFF(z)	cc3(USART,z,_DE_OFF)
#define USARTx_DE_OFF		USARTz_DE_OFF(bsp_uno)

#define USARTx_Tx_DMA		huartx.hdmatx->Instance

#define DMA_IRQ_USARTz_TX(z)	cc3(DMA_IRQ_USART,z,_TX)
#define DMA_IRQ_USARTx_TX		DMA_IRQ_USARTz_TX(bsp_uno)

#define TCIF_USARTz_TX(z) 		cc3(TCIF_USART,z,_TX)
#define TCIF_USARTx_TX 			TCIF_USARTz_TX(bsp_uno)

#define CTCIF_USARTz_TX(z)		cc3(CTCIF_USART,z,_TX)
#define CTCIF_USARTx_TX			CTCIF_USARTz_TX(bsp_uno)

#ifdef C_UART
#define USARTz_IRQHandler(z)	cc3(UART,z,_IRQHandler)
#endif
#ifdef C_USART
#define USARTz_IRQHandler(z)	cc3(USART,z,_IRQHandler)
#endif
#define USARTx_IRQHandler		USARTz_IRQHandler(bsp_uno)

#define USARTz_t(z)			cc3(USART,z,_t)
#define USARTx_t			USARTz_t(bsp_uno)

#define USARTz_tx_EVT(z)	cc3(USART,z,_tx_EVT)
#define USARTx_tx_EVT		USARTz_tx_EVT(bsp_uno)

#endif // C_SIMPLE_BSP
