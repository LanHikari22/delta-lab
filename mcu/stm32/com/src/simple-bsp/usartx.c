// common c source for all usart drivers
#ifdef C_SIMPLE_BSP

#include "stm-hdr.h"
#include "usartx.h"
#include "usart.h"
#include <string.h>

#ifdef USE_CHIBIOS
static thread_t *USARTx_t = NULL;
#endif

#if defined(USARTv1)
#elif defined(USARTv2)
#else
#error define USARTvx
#endif

#if defined(DMAv1)
#elif defined(DMAv2)
#else
#error define DMAvx
#endif

extern UART_HandleTypeDef huartx;

char txbufx[TXBUFSIZE], rxbufx[RXBUFSIZE];
volatile short int rxbpx, rxrpx, txrx, rxidlx;

#ifdef USARTv1
#define USARTx_CLRTC  __HAL_USART_CLEAR_FLAG(&huartx, USART_FLAG_TC)
#define USARTx_RDR DR
#define USARTx_TDR DR
#define USARTx_ISR SR
#endif
#ifdef USARTv2
#define USARTx_CLRTC __HAL_USART_CLEAR_IT(&huartx, USART_CLEAR_TCF)
#define USARTx_RDR RDR
#define USARTx_TDR TDR
#define USARTx_ISR ISR
#endif

void init_USARTx(void)
{
	/* Assume: usart and dma basically initialized by cube generated fw */
  rxbpx=0; rxrpx=0; txrx=0;
  huartx.Init.BaudRate = USARTx_BAUD;
  huartx.Init.WordLength = UART_WORDLENGTH_8B;
  huartx.Init.StopBits = UART_STOPBITS_1;
  huartx.Init.Parity = UART_PARITY_NONE;
  UART_SetConfig(&huartx);
#ifdef DMAv2
  USARTx_Tx_DMA->FCR &= ~(DMA_IT_FE);
  USARTx_Tx_DMA->CR &= ~(DMA_IT_TC | DMA_IT_HT | DMA_IT_TE | DMA_IT_DME);
#endif
  huartx.Instance->CR3 |= USART_CR3_DMAT;
  USARTx_CLRTC;
  __HAL_USART_ENABLE_IT(&huartx, USART_IT_RXNE);
}

void SendDataUSARTx(char *USARTx_TxBuffer, int Length)
{
  int wf=1;
  if (txrx) WaitUSARTx();
  txrx=Length;
  if ((Length <= sizeof(txbufx)) && (USARTx_TxBuffer!=txbufx)) {
    memcpy(txbufx, USARTx_TxBuffer, Length);
	USARTx_TxBuffer = txbufx;
	wf=0;
  }
  // Set DE
  USARTx_DE_ON;
#ifdef DMAv2
  USARTx_Tx_DMA->CR &= ~(DMA_SxCR_EN | DMA_SxCR_DBM);
  USARTx_Tx_DMA->NDTR = Length;
  USARTx_Tx_DMA->PAR  = (unsigned long)&huartx.Instance->USARTx_TDR;
  USARTx_Tx_DMA->M0AR = (unsigned long)USARTx_TxBuffer;
  USARTx_Tx_DMA->CR |= (DMA_IT_TC | DMA_SxCR_EN);
#endif
#ifdef DMAv1
  USARTx_Tx_DMA->CCR &= ~(0x0001);
  USARTx_Tx_DMA->CNDTR = Length;
  USARTx_Tx_DMA->CPAR  = (unsigned long)&huartx.Instance->USARTx_TDR;
  USARTx_Tx_DMA->CMAR = (unsigned long)USARTx_TxBuffer;
  USARTx_Tx_DMA->CCR |= (DMA_IT_TC | 0x0001);
#endif
  if (wf) WaitUSARTx();
}

#ifdef USE_CHIBIOS

void WaitUSARTx(void)
{
	tprio_t oldp = chThdSetPriority(HIGHPRIO);
    USARTx_t = chThdGetSelfX();
	while (txrx) chEvtWaitAnyTimeout(USARTx_tx_EVT,10);
	chThdSetPriority(oldp);
    USARTx_t = NULL;
}

#else

void WaitUSARTx(void)
{
	while (txrx) ;
}

#endif

/* Override the HAL / cube generated ISR */

#ifndef DMA_IRQ_USARTx_TX
#error usartx dma not defined
#endif

void DMA_IRQ_USARTx_TX(void)
{
#ifdef USE_CHIBIOS
  CH_IRQ_PROLOGUE();
#endif
  if (TCIF_USARTx_TX)
  {
	  /* Enable USART Transmit complete interrupt */
	  USARTx_CLRTC;
	  __HAL_USART_ENABLE_IT(&huartx, USART_IT_TC);

	  /* Clear DMA TC pending bit */
	  CTCIF_USARTx_TX;
	  txrx=0;
  };
#ifdef USE_CHIBIOS
  chSysLockFromISR();
  if (USARTx_t) chEvtSignalI(USARTx_t, USARTx_tx_EVT);
  chSysUnlockFromISR();
  CH_IRQ_EPILOGUE();
#endif
}

/* Override the HAL / cube generated ISR */

void USARTx_IRQHandler(void)
{
#ifdef USE_CHIBIOS
  CH_IRQ_PROLOGUE();
#endif
	/* Transfer Complete: Reset DE */
	/* STM32F7 usarts have their own DE line, but I continue to use the old style here */
  int sr = huartx.Instance->USARTx_ISR;
  if (sr & USART_FLAG_TC) {
	  USARTx_DE_OFF;
	  __HAL_USART_DISABLE_IT(&huartx, USART_IT_TC);
	  USARTx_CLRTC;
  };

  if (sr & USART_FLAG_RXNE) {
	  if (sr & USART_FLAG_IDLE) {
		rxidlx=rxbpx;  // IDLE
	  }
      rxbufx[rxbpx] = huartx.Instance->USARTx_RDR;
	  rxbpx++;
	  if (rxbpx>=RXBUFSIZE) rxbpx=0;
  }
#ifdef USE_CHIBIOS
  CH_IRQ_EPILOGUE();
#endif
}

#endif
