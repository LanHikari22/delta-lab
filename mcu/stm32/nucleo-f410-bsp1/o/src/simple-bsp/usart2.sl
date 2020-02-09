   1              		.cpu cortex-m4
   2              		.eabi_attribute 27, 1
   3              		.eabi_attribute 28, 1
   4              		.eabi_attribute 23, 1
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 2
   9              		.eabi_attribute 34, 1
  10              		.eabi_attribute 18, 4
  11              		.file	"usart2.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.init_USART2,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	init_USART2
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	init_USART2:
  25              	.LFB233:
  26              		.file 1 "../com/src/simple-bsp/usartx.c"
   1:../com/src/simple-bsp/usartx.c **** // common c source for all usart drivers
   2:../com/src/simple-bsp/usartx.c **** #ifdef C_SIMPLE_BSP
   3:../com/src/simple-bsp/usartx.c **** 
   4:../com/src/simple-bsp/usartx.c **** #include "stm-hdr.h"
   5:../com/src/simple-bsp/usartx.c **** #include "usartx.h"
   6:../com/src/simple-bsp/usartx.c **** #include "usart.h"
   7:../com/src/simple-bsp/usartx.c **** #include <string.h>
   8:../com/src/simple-bsp/usartx.c **** 
   9:../com/src/simple-bsp/usartx.c **** #ifdef USE_CHIBIOS
  10:../com/src/simple-bsp/usartx.c **** static thread_t *USARTx_t = NULL;
  11:../com/src/simple-bsp/usartx.c **** #endif
  12:../com/src/simple-bsp/usartx.c **** 
  13:../com/src/simple-bsp/usartx.c **** #if defined(USARTv1)
  14:../com/src/simple-bsp/usartx.c **** #elif defined(USARTv2)
  15:../com/src/simple-bsp/usartx.c **** #else
  16:../com/src/simple-bsp/usartx.c **** #error define USARTvx
  17:../com/src/simple-bsp/usartx.c **** #endif
  18:../com/src/simple-bsp/usartx.c **** 
  19:../com/src/simple-bsp/usartx.c **** #if defined(DMAv1)
  20:../com/src/simple-bsp/usartx.c **** #elif defined(DMAv2)
  21:../com/src/simple-bsp/usartx.c **** #else
  22:../com/src/simple-bsp/usartx.c **** #error define DMAvx
  23:../com/src/simple-bsp/usartx.c **** #endif
  24:../com/src/simple-bsp/usartx.c **** 
  25:../com/src/simple-bsp/usartx.c **** extern UART_HandleTypeDef huartx;
  26:../com/src/simple-bsp/usartx.c **** 
  27:../com/src/simple-bsp/usartx.c **** char txbufx[TXBUFSIZE], rxbufx[RXBUFSIZE];
  28:../com/src/simple-bsp/usartx.c **** volatile short int rxbpx, rxrpx, txrx, rxidlx;
  29:../com/src/simple-bsp/usartx.c **** 
  30:../com/src/simple-bsp/usartx.c **** #ifdef USARTv1
  31:../com/src/simple-bsp/usartx.c **** #define USARTx_CLRTC  __HAL_USART_CLEAR_FLAG(&huartx, USART_FLAG_TC)
  32:../com/src/simple-bsp/usartx.c **** #define USARTx_RDR DR
  33:../com/src/simple-bsp/usartx.c **** #define USARTx_TDR DR
  34:../com/src/simple-bsp/usartx.c **** #define USARTx_ISR SR
  35:../com/src/simple-bsp/usartx.c **** #endif
  36:../com/src/simple-bsp/usartx.c **** #ifdef USARTv2
  37:../com/src/simple-bsp/usartx.c **** #define USARTx_CLRTC __HAL_USART_CLEAR_IT(&huartx, USART_CLEAR_TCF)
  38:../com/src/simple-bsp/usartx.c **** #define USARTx_RDR RDR
  39:../com/src/simple-bsp/usartx.c **** #define USARTx_TDR TDR
  40:../com/src/simple-bsp/usartx.c **** #define USARTx_ISR ISR
  41:../com/src/simple-bsp/usartx.c **** #endif
  42:../com/src/simple-bsp/usartx.c **** 
  43:../com/src/simple-bsp/usartx.c **** void init_USARTx(void)
  44:../com/src/simple-bsp/usartx.c **** {
  27              		.loc 1 44 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 70B5     		push	{r4, r5, r6, lr}
  32              		.cfi_def_cfa_offset 16
  33              		.cfi_offset 4, -16
  34              		.cfi_offset 5, -12
  35              		.cfi_offset 6, -8
  36              		.cfi_offset 14, -4
  45:../com/src/simple-bsp/usartx.c **** 	/* Assume: usart and dma basically initialized by cube generated fw */
  46:../com/src/simple-bsp/usartx.c ****   rxbpx=0; rxrpx=0; txrx=0;
  47:../com/src/simple-bsp/usartx.c ****   huartx.Init.BaudRate = USARTx_BAUD;
  37              		.loc 1 47 0
  38 0002 154C     		ldr	r4, .L3
  46:../com/src/simple-bsp/usartx.c ****   huartx.Init.BaudRate = USARTx_BAUD;
  39              		.loc 1 46 0
  40 0004 1549     		ldr	r1, .L3+4
  41 0006 164E     		ldr	r6, .L3+8
  42 0008 164D     		ldr	r5, .L3+12
  43 000a 0023     		movs	r3, #0
  44              		.loc 1 47 0
  45 000c 4FF4E132 		mov	r2, #115200
  48:../com/src/simple-bsp/usartx.c ****   huartx.Init.WordLength = UART_WORDLENGTH_8B;
  49:../com/src/simple-bsp/usartx.c ****   huartx.Init.StopBits = UART_STOPBITS_1;
  50:../com/src/simple-bsp/usartx.c ****   huartx.Init.Parity = UART_PARITY_NONE;
  51:../com/src/simple-bsp/usartx.c ****   UART_SetConfig(&huartx);
  46              		.loc 1 51 0
  47 0010 2046     		mov	r0, r4
  46:../com/src/simple-bsp/usartx.c ****   huartx.Init.BaudRate = USARTx_BAUD;
  48              		.loc 1 46 0
  49 0012 3380     		strh	r3, [r6]	@ movhi
  48:../com/src/simple-bsp/usartx.c ****   huartx.Init.WordLength = UART_WORDLENGTH_8B;
  50              		.loc 1 48 0
  51 0014 A360     		str	r3, [r4, #8]
  46:../com/src/simple-bsp/usartx.c ****   huartx.Init.BaudRate = USARTx_BAUD;
  52              		.loc 1 46 0
  53 0016 2B80     		strh	r3, [r5]	@ movhi
  49:../com/src/simple-bsp/usartx.c ****   huartx.Init.Parity = UART_PARITY_NONE;
  54              		.loc 1 49 0
  55 0018 E360     		str	r3, [r4, #12]
  46:../com/src/simple-bsp/usartx.c ****   huartx.Init.BaudRate = USARTx_BAUD;
  56              		.loc 1 46 0
  57 001a 0B80     		strh	r3, [r1]	@ movhi
  50:../com/src/simple-bsp/usartx.c ****   UART_SetConfig(&huartx);
  58              		.loc 1 50 0
  59 001c 2361     		str	r3, [r4, #16]
  47:../com/src/simple-bsp/usartx.c ****   huartx.Init.WordLength = UART_WORDLENGTH_8B;
  60              		.loc 1 47 0
  61 001e 6260     		str	r2, [r4, #4]
  62              		.loc 1 51 0
  63 0020 FFF7FEFF 		bl	UART_SetConfig
  64              	.LVL0:
  52:../com/src/simple-bsp/usartx.c **** #ifdef DMAv2
  53:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->FCR &= ~(DMA_IT_FE);
  65              		.loc 1 53 0
  66 0024 236B     		ldr	r3, [r4, #48]
  67 0026 1A68     		ldr	r2, [r3]
  68 0028 5369     		ldr	r3, [r2, #20]
  69 002a 23F08003 		bic	r3, r3, #128
  70 002e 5361     		str	r3, [r2, #20]
  54:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CR &= ~(DMA_IT_TC | DMA_IT_HT | DMA_IT_TE | DMA_IT_DME);
  71              		.loc 1 54 0
  72 0030 236B     		ldr	r3, [r4, #48]
  73 0032 1A68     		ldr	r2, [r3]
  74 0034 1368     		ldr	r3, [r2]
  75 0036 23F01E03 		bic	r3, r3, #30
  76 003a 1360     		str	r3, [r2]
  55:../com/src/simple-bsp/usartx.c **** #endif
  56:../com/src/simple-bsp/usartx.c ****   huartx.Instance->CR3 |= USART_CR3_DMAT;
  77              		.loc 1 56 0
  78 003c 2368     		ldr	r3, [r4]
  79 003e 5A69     		ldr	r2, [r3, #20]
  57:../com/src/simple-bsp/usartx.c ****   USARTx_CLRTC;
  80              		.loc 1 57 0
  81 0040 6FF04001 		mvn	r1, #64
  56:../com/src/simple-bsp/usartx.c ****   USARTx_CLRTC;
  82              		.loc 1 56 0
  83 0044 42F08002 		orr	r2, r2, #128
  84 0048 5A61     		str	r2, [r3, #20]
  85              		.loc 1 57 0
  86 004a 1960     		str	r1, [r3]
  58:../com/src/simple-bsp/usartx.c ****   __HAL_USART_ENABLE_IT(&huartx, USART_IT_RXNE);
  87              		.loc 1 58 0
  88 004c 2268     		ldr	r2, [r4]
  89 004e D368     		ldr	r3, [r2, #12]
  90 0050 43F02003 		orr	r3, r3, #32
  91 0054 D360     		str	r3, [r2, #12]
  92 0056 70BD     		pop	{r4, r5, r6, pc}
  93              	.L4:
  94              		.align	2
  95              	.L3:
  96 0058 00000000 		.word	huart2
  97 005c 00000000 		.word	.LANCHOR2
  98 0060 00000000 		.word	.LANCHOR0
  99 0064 00000000 		.word	.LANCHOR1
 100              		.cfi_endproc
 101              	.LFE233:
 103              		.section	.text.SendDataUSART2,"ax",%progbits
 104              		.align	1
 105              		.p2align 2,,3
 106              		.global	SendDataUSART2
 107              		.syntax unified
 108              		.thumb
 109              		.thumb_func
 110              		.fpu fpv4-sp-d16
 112              	SendDataUSART2:
 113              	.LFB234:
  59:../com/src/simple-bsp/usartx.c **** }
  60:../com/src/simple-bsp/usartx.c **** 
  61:../com/src/simple-bsp/usartx.c **** void SendDataUSARTx(char *USARTx_TxBuffer, int Length)
  62:../com/src/simple-bsp/usartx.c **** {
 114              		.loc 1 62 0
 115              		.cfi_startproc
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118              	.LVL1:
 119 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 120              		.cfi_def_cfa_offset 24
 121              		.cfi_offset 4, -24
 122              		.cfi_offset 5, -20
 123              		.cfi_offset 6, -16
 124              		.cfi_offset 7, -12
 125              		.cfi_offset 8, -8
 126              		.cfi_offset 14, -4
  63:../com/src/simple-bsp/usartx.c ****   int wf=1;
  64:../com/src/simple-bsp/usartx.c ****   if (txrx) WaitUSARTx();
 127              		.loc 1 64 0
 128 0004 334C     		ldr	r4, .L29
 129 0006 2388     		ldrh	r3, [r4]
 130 0008 1BB2     		sxth	r3, r3
  62:../com/src/simple-bsp/usartx.c ****   int wf=1;
 131              		.loc 1 62 0
 132 000a 0646     		mov	r6, r0
 133 000c 0D46     		mov	r5, r1
 134              		.loc 1 64 0
 135 000e 002B     		cmp	r3, #0
 136 0010 47D1     		bne	.L27
 137              	.LVL2:
 138              	.L6:
  65:../com/src/simple-bsp/usartx.c ****   txrx=Length;
 139              		.loc 1 65 0
 140 0012 2BB2     		sxth	r3, r5
  66:../com/src/simple-bsp/usartx.c ****   if ((Length <= sizeof(txbufx)) && (USARTx_TxBuffer!=txbufx)) {
 141              		.loc 1 66 0
 142 0014 B5F5807F 		cmp	r5, #256
  65:../com/src/simple-bsp/usartx.c ****   txrx=Length;
 143              		.loc 1 65 0
 144 0018 2380     		strh	r3, [r4]	@ movhi
 145              		.loc 1 66 0
 146 001a 0AD8     		bhi	.L14
 147              		.loc 1 66 0 is_stmt 0 discriminator 1
 148 001c 2E4B     		ldr	r3, .L29+4
 149 001e 9E42     		cmp	r6, r3
 150 0020 07D0     		beq	.L14
  67:../com/src/simple-bsp/usartx.c ****     memcpy(txbufx, USARTx_TxBuffer, Length);
 151              		.loc 1 67 0 is_stmt 1
 152 0022 3146     		mov	r1, r6
 153 0024 2A46     		mov	r2, r5
 154 0026 1846     		mov	r0, r3
 155 0028 FFF7FEFF 		bl	memcpy
 156              	.LVL3:
  68:../com/src/simple-bsp/usartx.c **** 	USARTx_TxBuffer = txbufx;
 157              		.loc 1 68 0
 158 002c 0646     		mov	r6, r0
  69:../com/src/simple-bsp/usartx.c **** 	wf=0;
 159              		.loc 1 69 0
 160 002e 0020     		movs	r0, #0
 161 0030 00E0     		b	.L9
 162              	.LVL4:
 163              	.L14:
  63:../com/src/simple-bsp/usartx.c ****   if (txrx) WaitUSARTx();
 164              		.loc 1 63 0
 165 0032 0120     		movs	r0, #1
 166              	.LVL5:
 167              	.L9:
  70:../com/src/simple-bsp/usartx.c ****   }
  71:../com/src/simple-bsp/usartx.c ****   // Set DE
  72:../com/src/simple-bsp/usartx.c ****   USARTx_DE_ON;
  73:../com/src/simple-bsp/usartx.c **** #ifdef DMAv2
  74:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CR &= ~(DMA_SxCR_EN | DMA_SxCR_DBM);
 168              		.loc 1 74 0
 169 0034 294B     		ldr	r3, .L29+8
 170 0036 1A6B     		ldr	r2, [r3, #48]
 171 0038 1168     		ldr	r1, [r2]
 172 003a 0A68     		ldr	r2, [r1]
 173 003c 22F48022 		bic	r2, r2, #262144
 174 0040 22F00102 		bic	r2, r2, #1
 175 0044 0A60     		str	r2, [r1]
  75:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->NDTR = Length;
 176              		.loc 1 75 0
 177 0046 196B     		ldr	r1, [r3, #48]
  76:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->PAR  = (unsigned long)&huartx.Instance->USARTx_TDR;
 178              		.loc 1 76 0
 179 0048 1A68     		ldr	r2, [r3]
  75:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->NDTR = Length;
 180              		.loc 1 75 0
 181 004a 0968     		ldr	r1, [r1]
 182 004c 4D60     		str	r5, [r1, #4]
 183              		.loc 1 76 0
 184 004e 196B     		ldr	r1, [r3, #48]
 185 0050 0968     		ldr	r1, [r1]
 186 0052 0432     		adds	r2, r2, #4
 187 0054 8A60     		str	r2, [r1, #8]
  77:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->M0AR = (unsigned long)USARTx_TxBuffer;
 188              		.loc 1 77 0
 189 0056 1A6B     		ldr	r2, [r3, #48]
 190 0058 1268     		ldr	r2, [r2]
 191 005a D660     		str	r6, [r2, #12]
  78:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CR |= (DMA_IT_TC | DMA_SxCR_EN);
 192              		.loc 1 78 0
 193 005c 1B6B     		ldr	r3, [r3, #48]
 194 005e 1A68     		ldr	r2, [r3]
 195 0060 1368     		ldr	r3, [r2]
 196 0062 43F01103 		orr	r3, r3, #17
 197 0066 1360     		str	r3, [r2]
  79:../com/src/simple-bsp/usartx.c **** #endif
  80:../com/src/simple-bsp/usartx.c **** #ifdef DMAv1
  81:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CCR &= ~(0x0001);
  82:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CNDTR = Length;
  83:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CPAR  = (unsigned long)&huartx.Instance->USARTx_TDR;
  84:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CMAR = (unsigned long)USARTx_TxBuffer;
  85:../com/src/simple-bsp/usartx.c ****   USARTx_Tx_DMA->CCR |= (DMA_IT_TC | 0x0001);
  86:../com/src/simple-bsp/usartx.c **** #endif
  87:../com/src/simple-bsp/usartx.c ****   if (wf) WaitUSARTx();
 198              		.loc 1 87 0
 199 0068 08B9     		cbnz	r0, .L28
 200 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 201              	.LVL6:
 202              	.L28:
 203              	.LBB46:
 204              	.LBB47:
  88:../com/src/simple-bsp/usartx.c **** }
  89:../com/src/simple-bsp/usartx.c **** 
  90:../com/src/simple-bsp/usartx.c **** #ifdef USE_CHIBIOS
  91:../com/src/simple-bsp/usartx.c **** 
  92:../com/src/simple-bsp/usartx.c **** void WaitUSARTx(void)
  93:../com/src/simple-bsp/usartx.c **** {
  94:../com/src/simple-bsp/usartx.c **** 	tprio_t oldp = chThdSetPriority(HIGHPRIO);
 205              		.loc 1 94 0
 206 006e 7F20     		movs	r0, #127
 207              	.LVL7:
 208 0070 FFF7FEFF 		bl	chThdSetPriority
 209              	.LVL8:
 210              	.LBB48:
 211              	.LBB49:
 212              		.file 2 "../com/lib/chibios-16.1.4/os/rt/include/chthreads.h"
   1:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*
   2:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     ChibiOS - Copyright (C) 2006..2015 Giovanni Di Sirio.
   3:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
   4:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     This file is part of ChibiOS.
   5:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
   6:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     ChibiOS is free software; you can redistribute it and/or modify
   7:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     it under the terms of the GNU General Public License as published by
   8:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     the Free Software Foundation; either version 3 of the License, or
   9:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     (at your option) any later version.
  10:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  11:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     ChibiOS is distributed in the hope that it will be useful,
  12:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     GNU General Public License for more details.
  15:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  16:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     You should have received a copy of the GNU General Public License
  17:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****     along with this program.  If not, see <http://www.gnu.org/licenses/>.
  18:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** */
  19:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  20:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  21:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @file    chthreads.h
  22:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @brief   Threads module macros and structures.
  23:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
  24:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @addtogroup threads
  25:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @{
  26:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
  27:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  28:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #ifndef _CHTHREADS_H_
  29:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #define _CHTHREADS_H_
  30:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  31:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*lint -sem(chThdExit, r_no) -sem(chThdExitS, r_no)*/
  32:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  33:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  34:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /* Module constants.                                                         */
  35:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  36:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  37:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  38:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /* Module pre-compile time settings.                                         */
  39:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  40:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  41:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  42:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /* Derived constants and error checks.                                       */
  43:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  44:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  45:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  46:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /* Module data structures and types.                                         */
  47:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  48:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  49:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  50:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @brief   Thread function.
  51:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
  52:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** typedef void (*tfunc_t)(void *p);
  53:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  54:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  55:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /* Module macros.                                                            */
  56:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
  57:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  58:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  59:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @name    Threads queues
  60:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
  61:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  62:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @brief   Data part of a static threads queue object initializer.
  63:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @details This macro should be used when statically initializing a threads
  64:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *          queue that is part of a bigger structure.
  65:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
  66:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @param[in] name      the name of the threads queue variable
  67:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
  68:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #define _THREADS_QUEUE_DATA(name) {(thread_t *)&name, (thread_t *)&name}
  69:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  70:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  71:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @brief   Static threads queue object initializer.
  72:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @details Statically initialized threads queues require no explicit
  73:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *          initialization using @p queue_init().
  74:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
  75:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @param[in] name      the name of the threads queue variable
  76:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
  77:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #define _THREADS_QUEUE_DECL(name)                                           \
  78:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   threads_queue_t name = _THREADS_QUEUE_DATA(name)
  79:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /** @} */
  80:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  81:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  82:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @name    Macro Functions
  83:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @{
  84:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
  85:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  86:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @brief   Delays the invoking thread for the specified number of seconds.
  87:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @note    The specified time is rounded up to a value allowed by the real
  88:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *          system tick clock.
  89:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @note    The maximum specifiable value is implementation dependent.
  90:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
  91:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @param[in] sec       time in seconds, must be different from zero
  92:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
  93:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @api
  94:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
  95:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #define chThdSleepSeconds(sec) chThdSleep(S2ST(sec))
  96:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
  97:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
  98:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @brief   Delays the invoking thread for the specified number of
  99:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *          milliseconds.
 100:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @note    The specified time is rounded up to a value allowed by the real
 101:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *          system tick clock.
 102:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @note    The maximum specifiable value is implementation dependent.
 103:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
 104:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @param[in] msec      time in milliseconds, must be different from zero
 105:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
 106:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @api
 107:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
 108:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #define chThdSleepMilliseconds(msec) chThdSleep(MS2ST(msec))
 109:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
 110:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /**
 111:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @brief   Delays the invoking thread for the specified number of
 112:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *          microseconds.
 113:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @note    The specified time is rounded up to a value allowed by the real
 114:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *          system tick clock.
 115:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @note    The maximum specifiable value is implementation dependent.
 116:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
 117:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @param[in] usec      time in microseconds, must be different from zero
 118:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  *
 119:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  * @api
 120:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  */
 121:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #define chThdSleepMicroseconds(usec) chThdSleep(US2ST(usec))
 122:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /** @} */
 123:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
 124:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
 125:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /* External declarations.                                                    */
 126:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
 127:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
 128:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #ifdef __cplusplus
 129:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** extern "C" {
 130:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #endif
 131:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****    thread_t *_thread_init(thread_t *tp, tprio_t prio);
 132:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #if CH_DBG_FILL_THREADS == TRUE
 133:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void _thread_memfill(uint8_t *startp, uint8_t *endp, uint8_t v);
 134:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #endif
 135:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   thread_t *chThdCreateI(void *wsp, size_t size,
 136:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****                          tprio_t prio, tfunc_t pf, void *arg);
 137:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   thread_t *chThdCreateStatic(void *wsp, size_t size,
 138:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****                               tprio_t prio, tfunc_t pf, void *arg);
 139:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   thread_t *chThdStart(thread_t *tp);
 140:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   tprio_t chThdSetPriority(tprio_t newprio);
 141:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   msg_t chThdSuspendS(thread_reference_t *trp);
 142:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   msg_t chThdSuspendTimeoutS(thread_reference_t *trp, systime_t timeout);
 143:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdResumeI(thread_reference_t *trp, msg_t msg);
 144:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdResumeS(thread_reference_t *trp, msg_t msg);
 145:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdResume(thread_reference_t *trp, msg_t msg);
 146:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   msg_t chThdEnqueueTimeoutS(threads_queue_t *tqp, systime_t timeout);
 147:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdDequeueNextI(threads_queue_t *tqp, msg_t msg);
 148:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdDequeueAllI(threads_queue_t *tqp, msg_t msg);
 149:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdTerminate(thread_t *tp);
 150:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdSleep(systime_t time);
 151:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdSleepUntil(systime_t time);
 152:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   systime_t chThdSleepUntilWindowed(systime_t prev, systime_t next);
 153:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdYield(void);
 154:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdExit(msg_t msg);
 155:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   void chThdExitS(msg_t msg);
 156:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #if CH_CFG_USE_WAITEXIT == TRUE
 157:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   msg_t chThdWait(thread_t *tp);
 158:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #endif
 159:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #ifdef __cplusplus
 160:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** }
 161:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** #endif
 162:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
 163:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
 164:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /* Module inline functions.                                                  */
 165:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** /*===========================================================================*/
 166:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
 167:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****  /**
 168:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   * @brief   Returns a pointer to the current @p thread_t.
 169:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   *
 170:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   * @return             A pointer to the current thread.
 171:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   *
 172:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   * @xclass
 173:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   */
 174:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** static inline thread_t *chThdGetSelfX(void) {
 175:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h **** 
 176:../com/lib/chibios-16.1.4/os/rt/include/chthreads.h ****   return ch.rlist.r_current;
 213              		.loc 2 176 0
 214 0074 1A4A     		ldr	r2, .L29+12
 215              	.LBE49:
 216              	.LBE48:
  95:../com/src/simple-bsp/usartx.c ****     USARTx_t = chThdGetSelfX();
  96:../com/src/simple-bsp/usartx.c **** 	while (txrx) chEvtWaitAnyTimeout(USARTx_tx_EVT,10);
 217              		.loc 1 96 0
 218 0076 2388     		ldrh	r3, [r4]
  95:../com/src/simple-bsp/usartx.c ****     USARTx_t = chThdGetSelfX();
 219              		.loc 1 95 0
 220 0078 1A4F     		ldr	r7, .L29+16
 221 007a 9269     		ldr	r2, [r2, #24]
 222 007c 3A60     		str	r2, [r7]
 223              		.loc 1 96 0
 224 007e 1BB2     		sxth	r3, r3
  94:../com/src/simple-bsp/usartx.c ****     USARTx_t = chThdGetSelfX();
 225              		.loc 1 94 0
 226 0080 0546     		mov	r5, r0
 227              	.LVL9:
 228              		.loc 1 96 0
 229 0082 3BB1     		cbz	r3, .L12
 230              	.LVL10:
 231              	.L19:
 232 0084 0A21     		movs	r1, #10
 233 0086 0220     		movs	r0, #2
 234 0088 FFF7FEFF 		bl	chEvtWaitAnyTimeout
 235              	.LVL11:
 236 008c 2388     		ldrh	r3, [r4]
 237 008e 1BB2     		sxth	r3, r3
 238 0090 002B     		cmp	r3, #0
 239 0092 F7D1     		bne	.L19
 240              	.L12:
  97:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 241              		.loc 1 97 0
 242 0094 2846     		mov	r0, r5
 243 0096 FFF7FEFF 		bl	chThdSetPriority
 244              	.LVL12:
  98:../com/src/simple-bsp/usartx.c ****     USARTx_t = NULL;
 245              		.loc 1 98 0
 246 009a 0023     		movs	r3, #0
 247 009c 3B60     		str	r3, [r7]
 248 009e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 249              	.LVL13:
 250              	.L27:
 251              	.LBE47:
 252              	.LBE46:
 253              	.LBB50:
 254              	.LBB51:
  94:../com/src/simple-bsp/usartx.c ****     USARTx_t = chThdGetSelfX();
 255              		.loc 1 94 0
 256 00a2 7F20     		movs	r0, #127
 257              	.LVL14:
 258 00a4 FFF7FEFF 		bl	chThdSetPriority
 259              	.LVL15:
 260              	.LBB52:
 261              	.LBB53:
 262              		.loc 2 176 0
 263 00a8 0D4A     		ldr	r2, .L29+12
 264              	.LBE53:
 265              	.LBE52:
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 266              		.loc 1 96 0
 267 00aa 2388     		ldrh	r3, [r4]
  95:../com/src/simple-bsp/usartx.c **** 	while (txrx) chEvtWaitAnyTimeout(USARTx_tx_EVT,10);
 268              		.loc 1 95 0
 269 00ac 0D4F     		ldr	r7, .L29+16
 270 00ae 9269     		ldr	r2, [r2, #24]
 271 00b0 3A60     		str	r2, [r7]
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 272              		.loc 1 96 0
 273 00b2 1BB2     		sxth	r3, r3
  94:../com/src/simple-bsp/usartx.c ****     USARTx_t = chThdGetSelfX();
 274              		.loc 1 94 0
 275 00b4 8046     		mov	r8, r0
 276              	.LVL16:
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 277              		.loc 1 96 0
 278 00b6 3BB1     		cbz	r3, .L8
 279              	.LVL17:
 280              	.L20:
 281 00b8 0A21     		movs	r1, #10
 282 00ba 0220     		movs	r0, #2
 283 00bc FFF7FEFF 		bl	chEvtWaitAnyTimeout
 284              	.LVL18:
 285 00c0 2388     		ldrh	r3, [r4]
 286 00c2 1BB2     		sxth	r3, r3
 287 00c4 002B     		cmp	r3, #0
 288 00c6 F7D1     		bne	.L20
 289              	.L8:
  97:../com/src/simple-bsp/usartx.c ****     USARTx_t = NULL;
 290              		.loc 1 97 0
 291 00c8 4046     		mov	r0, r8
 292 00ca FFF7FEFF 		bl	chThdSetPriority
 293              	.LVL19:
 294              		.loc 1 98 0
 295 00ce 0023     		movs	r3, #0
 296 00d0 3B60     		str	r3, [r7]
 297 00d2 9EE7     		b	.L6
 298              	.L30:
 299              		.align	2
 300              	.L29:
 301 00d4 00000000 		.word	.LANCHOR2
 302 00d8 00000000 		.word	.LANCHOR3
 303 00dc 00000000 		.word	huart2
 304 00e0 00000000 		.word	ch
 305 00e4 00000000 		.word	.LANCHOR4
 306              	.LBE51:
 307              	.LBE50:
 308              		.cfi_endproc
 309              	.LFE234:
 311              		.section	.text.WaitUSART2,"ax",%progbits
 312              		.align	1
 313              		.p2align 2,,3
 314              		.global	WaitUSART2
 315              		.syntax unified
 316              		.thumb
 317              		.thumb_func
 318              		.fpu fpv4-sp-d16
 320              	WaitUSART2:
 321              	.LFB235:
  93:../com/src/simple-bsp/usartx.c **** 	tprio_t oldp = chThdSetPriority(HIGHPRIO);
 322              		.loc 1 93 0
 323              		.cfi_startproc
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326 0000 70B5     		push	{r4, r5, r6, lr}
 327              		.cfi_def_cfa_offset 16
 328              		.cfi_offset 4, -16
 329              		.cfi_offset 5, -12
 330              		.cfi_offset 6, -8
 331              		.cfi_offset 14, -4
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 332              		.loc 1 96 0
 333 0002 0D4C     		ldr	r4, .L38
  95:../com/src/simple-bsp/usartx.c **** 	while (txrx) chEvtWaitAnyTimeout(USARTx_tx_EVT,10);
 334              		.loc 1 95 0
 335 0004 0D4D     		ldr	r5, .L38+4
  94:../com/src/simple-bsp/usartx.c ****     USARTx_t = chThdGetSelfX();
 336              		.loc 1 94 0
 337 0006 7F20     		movs	r0, #127
 338 0008 FFF7FEFF 		bl	chThdSetPriority
 339              	.LVL20:
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 340              		.loc 1 96 0
 341 000c 2388     		ldrh	r3, [r4]
 342              	.LBB54:
 343              	.LBB55:
 344              		.loc 2 176 0
 345 000e 0C4A     		ldr	r2, .L38+8
 346              	.LBE55:
 347              	.LBE54:
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 348              		.loc 1 96 0
 349 0010 1BB2     		sxth	r3, r3
  95:../com/src/simple-bsp/usartx.c **** 	while (txrx) chEvtWaitAnyTimeout(USARTx_tx_EVT,10);
 350              		.loc 1 95 0
 351 0012 9269     		ldr	r2, [r2, #24]
 352 0014 2A60     		str	r2, [r5]
  94:../com/src/simple-bsp/usartx.c ****     USARTx_t = chThdGetSelfX();
 353              		.loc 1 94 0
 354 0016 0646     		mov	r6, r0
 355              	.LVL21:
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 356              		.loc 1 96 0
 357 0018 3BB1     		cbz	r3, .L33
 358              	.LVL22:
 359              	.L34:
  96:../com/src/simple-bsp/usartx.c **** 	chThdSetPriority(oldp);
 360              		.loc 1 96 0 is_stmt 0 discriminator 2
 361 001a 0A21     		movs	r1, #10
 362 001c 0220     		movs	r0, #2
 363 001e FFF7FEFF 		bl	chEvtWaitAnyTimeout
 364              	.LVL23:
 365 0022 2388     		ldrh	r3, [r4]
 366 0024 1BB2     		sxth	r3, r3
 367 0026 002B     		cmp	r3, #0
 368 0028 F7D1     		bne	.L34
 369              	.L33:
  97:../com/src/simple-bsp/usartx.c ****     USARTx_t = NULL;
 370              		.loc 1 97 0 is_stmt 1
 371 002a 3046     		mov	r0, r6
 372 002c FFF7FEFF 		bl	chThdSetPriority
 373              	.LVL24:
 374              		.loc 1 98 0
 375 0030 0023     		movs	r3, #0
 376 0032 2B60     		str	r3, [r5]
  99:../com/src/simple-bsp/usartx.c **** }
 377              		.loc 1 99 0
 378 0034 70BD     		pop	{r4, r5, r6, pc}
 379              	.LVL25:
 380              	.L39:
 381 0036 00BF     		.align	2
 382              	.L38:
 383 0038 00000000 		.word	.LANCHOR2
 384 003c 00000000 		.word	.LANCHOR4
 385 0040 00000000 		.word	ch
 386              		.cfi_endproc
 387              	.LFE235:
 389              		.section	.text.Vector84,"ax",%progbits
 390              		.align	1
 391              		.p2align 2,,3
 392              		.global	Vector84
 393              		.syntax unified
 394              		.thumb
 395              		.thumb_func
 396              		.fpu fpv4-sp-d16
 398              	Vector84:
 399              	.LFB236:
 100:../com/src/simple-bsp/usartx.c **** 
 101:../com/src/simple-bsp/usartx.c **** #else
 102:../com/src/simple-bsp/usartx.c **** 
 103:../com/src/simple-bsp/usartx.c **** void WaitUSARTx(void)
 104:../com/src/simple-bsp/usartx.c **** {
 105:../com/src/simple-bsp/usartx.c **** 	while (txrx) ;
 106:../com/src/simple-bsp/usartx.c **** }
 107:../com/src/simple-bsp/usartx.c **** 
 108:../com/src/simple-bsp/usartx.c **** #endif
 109:../com/src/simple-bsp/usartx.c **** 
 110:../com/src/simple-bsp/usartx.c **** /* Override the HAL / cube generated ISR */
 111:../com/src/simple-bsp/usartx.c **** 
 112:../com/src/simple-bsp/usartx.c **** #ifndef DMA_IRQ_USARTx_TX
 113:../com/src/simple-bsp/usartx.c **** #error usartx dma not defined
 114:../com/src/simple-bsp/usartx.c **** #endif
 115:../com/src/simple-bsp/usartx.c **** 
 116:../com/src/simple-bsp/usartx.c **** void DMA_IRQ_USARTx_TX(void)
 117:../com/src/simple-bsp/usartx.c **** {
 400              		.loc 1 117 0
 401              		.cfi_startproc
 402              		@ args = 0, pretend = 0, frame = 0
 403              		@ frame_needed = 0, uses_anonymous_args = 0
 404 0000 10B5     		push	{r4, lr}
 405              		.cfi_def_cfa_offset 8
 406              		.cfi_offset 4, -8
 407              		.cfi_offset 14, -4
 118:../com/src/simple-bsp/usartx.c **** #ifdef USE_CHIBIOS
 119:../com/src/simple-bsp/usartx.c ****   CH_IRQ_PROLOGUE();
 120:../com/src/simple-bsp/usartx.c **** #endif
 121:../com/src/simple-bsp/usartx.c ****   if (TCIF_USARTx_TX)
 408              		.loc 1 121 0
 409 0002 124B     		ldr	r3, .L50
 410 0004 5A68     		ldr	r2, [r3, #4]
 411 0006 9202     		lsls	r2, r2, #10
 412 0008 10D5     		bpl	.L41
 122:../com/src/simple-bsp/usartx.c ****   {
 123:../com/src/simple-bsp/usartx.c **** 	  /* Enable USART Transmit complete interrupt */
 124:../com/src/simple-bsp/usartx.c **** 	  USARTx_CLRTC;
 413              		.loc 1 124 0
 414 000a 114A     		ldr	r2, .L50+4
 125:../com/src/simple-bsp/usartx.c **** 	  __HAL_USART_ENABLE_IT(&huartx, USART_IT_TC);
 126:../com/src/simple-bsp/usartx.c **** 
 127:../com/src/simple-bsp/usartx.c **** 	  /* Clear DMA TC pending bit */
 128:../com/src/simple-bsp/usartx.c **** 	  CTCIF_USARTx_TX;
 129:../com/src/simple-bsp/usartx.c **** 	  txrx=0;
 415              		.loc 1 129 0
 416 000c 1148     		ldr	r0, .L50+8
 124:../com/src/simple-bsp/usartx.c **** 	  __HAL_USART_ENABLE_IT(&huartx, USART_IT_TC);
 417              		.loc 1 124 0
 418 000e 1168     		ldr	r1, [r2]
 419 0010 6FF04004 		mvn	r4, #64
 420 0014 0C60     		str	r4, [r1]
 125:../com/src/simple-bsp/usartx.c **** 	  __HAL_USART_ENABLE_IT(&huartx, USART_IT_TC);
 421              		.loc 1 125 0
 422 0016 1168     		ldr	r1, [r2]
 423 0018 CA68     		ldr	r2, [r1, #12]
 424 001a 42F04002 		orr	r2, r2, #64
 425 001e CA60     		str	r2, [r1, #12]
 128:../com/src/simple-bsp/usartx.c **** 	  txrx=0;
 426              		.loc 1 128 0
 427 0020 DA68     		ldr	r2, [r3, #12]
 428              		.loc 1 129 0
 429 0022 0021     		movs	r1, #0
 128:../com/src/simple-bsp/usartx.c **** 	  txrx=0;
 430              		.loc 1 128 0
 431 0024 42F40012 		orr	r2, r2, #2097152
 432 0028 DA60     		str	r2, [r3, #12]
 433              		.loc 1 129 0
 434 002a 0180     		strh	r1, [r0]	@ movhi
 435              	.L41:
 436              	.LVL26:
 437              	.LBB56:
 438              	.LBB57:
 439              	.LBB58:
 440              	.LBB59:
 441              	.LBB60:
 442              		.file 3 "../com/lib/CMSIS-hal/Include/cmsis_gcc.h"
   1:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**************************************************************************//**
   2:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  * @file     cmsis_gcc.h
   3:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  * @brief    CMSIS Cortex-M Core Function/Instruction Header File
   4:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  * @version  V4.30
   5:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  * @date     20. October 2015
   6:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  ******************************************************************************/
   7:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /* Copyright (c) 2009 - 2015 ARM LIMITED
   8:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
   9:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    All rights reserved.
  10:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    Redistribution and use in source and binary forms, with or without
  11:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    modification, are permitted provided that the following conditions are met:
  12:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    - Redistributions of source code must retain the above copyright
  13:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****      notice, this list of conditions and the following disclaimer.
  14:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    - Redistributions in binary form must reproduce the above copyright
  15:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****      notice, this list of conditions and the following disclaimer in the
  16:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****      documentation and/or other materials provided with the distribution.
  17:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    - Neither the name of ARM nor the names of its contributors may be used
  18:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****      to endorse or promote products derived from this software without
  19:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****      specific prior written permission.
  20:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    *
  21:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  24:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  25:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  26:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  27:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  28:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  29:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  30:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  31:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    POSSIBILITY OF SUCH DAMAGE.
  32:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****    ---------------------------------------------------------------------------*/
  33:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  34:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  35:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #ifndef __CMSIS_GCC_H
  36:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #define __CMSIS_GCC_H
  37:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  38:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /* ignore some GCC warnings */
  39:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #if defined ( __GNUC__ )
  40:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #pragma GCC diagnostic push
  41:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wsign-conversion"
  42:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wconversion"
  43:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wunused-parameter"
  44:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #endif
  45:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  46:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  47:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /* ###########################  Core Function Access  ########################### */
  48:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
  49:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  50:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   @{
  51:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
  52:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  53:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
  54:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Enable IRQ Interrupts
  55:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
  56:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
  57:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
  58:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_irq(void)
  59:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
  60:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("cpsie i" : : : "memory");
  61:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
  62:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  63:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  64:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
  65:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Disable IRQ Interrupts
  66:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Disables IRQ interrupts by setting the I-bit in the CPSR.
  67:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   Can only be executed in Privileged modes.
  68:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
  69:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
  70:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
  71:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("cpsid i" : : : "memory");
  72:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
  73:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  74:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  75:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
  76:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get Control Register
  77:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the content of the Control Register.
  78:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \return               Control Register value
  79:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
  80:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_CONTROL(void)
  81:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
  82:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   uint32_t result;
  83:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  84:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
  85:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
  86:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
  87:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  88:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  89:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
  90:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Set Control Register
  91:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Writes the given value to the Control Register.
  92:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
  93:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
  94:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_CONTROL(uint32_t control)
  95:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
  96:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
  97:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
  98:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
  99:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 100:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 101:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get IPSR Register
 102:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the content of the IPSR Register.
 103:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \return               IPSR Register value
 104:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 105:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_IPSR(void)
 106:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 107:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   uint32_t result;
 108:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 109:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 110:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
 111:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 112:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 113:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 114:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 115:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get APSR Register
 116:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the content of the APSR Register.
 117:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \return               APSR Register value
 118:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 119:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_APSR(void)
 120:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 121:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   uint32_t result;
 122:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 123:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 124:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
 125:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 126:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 127:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 128:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 129:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get xPSR Register
 130:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the content of the xPSR Register.
 131:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 132:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****     \return               xPSR Register value
 133:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 134:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_xPSR(void)
 135:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 136:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   uint32_t result;
 137:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 138:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 139:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
 140:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 141:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 142:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 143:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 144:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer
 145:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer (PSP).
 146:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \return               PSP Register value
 147:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 148:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PSP(void)
 149:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 150:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   register uint32_t result;
 151:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 152:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp\n"  : "=r" (result) );
 153:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
 154:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 155:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 156:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 157:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 158:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer
 159:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer (PSP).
 160:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 161:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 162:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PSP(uint32_t topOfProcStack)
 163:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 164:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
 165:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 166:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 167:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 168:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 169:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer
 170:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer (MSP).
 171:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \return               MSP Register value
 172:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 173:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_MSP(void)
 174:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 175:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   register uint32_t result;
 176:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 177:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp\n" : "=r" (result) );
 178:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
 179:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 180:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 181:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 182:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 183:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer
 184:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer (MSP).
 185:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 186:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
 187:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 188:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_MSP(uint32_t topOfMainStack)
 189:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 190:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
 191:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 192:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 193:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 194:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 195:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get Priority Mask
 196:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the current state of the priority mask bit from the Priority Mask Register.
 197:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \return               Priority Mask value
 198:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 199:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 200:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 201:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   uint32_t result;
 202:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 203:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 204:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
 205:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 206:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 207:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 208:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 209:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Set Priority Mask
 210:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Assigns the given value to the Priority Mask Register.
 211:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 212:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 213:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PRIMASK(uint32_t priMask)
 214:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 215:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
 216:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 217:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 218:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 219:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** #if       (__CORTEX_M >= 0x03U)
 220:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 221:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 222:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Enable FIQ
 223:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Enables FIQ interrupts by clearing the F-bit in the CPSR.
 224:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 225:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 226:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_fault_irq(void)
 227:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 228:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("cpsie f" : : : "memory");
 229:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 230:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 231:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 232:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 233:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Disable FIQ
 234:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Disables FIQ interrupts by setting the F-bit in the CPSR.
 235:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 236:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 237:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_fault_irq(void)
 238:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 239:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("cpsid f" : : : "memory");
 240:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 241:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 242:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 243:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 244:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Get Base Priority
 245:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Returns the current value of the Base Priority register.
 246:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \return               Base Priority register value
 247:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 248:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_BASEPRI(void)
 249:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 250:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   uint32_t result;
 251:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 252:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri" : "=r" (result) );
 253:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   return(result);
 254:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** }
 255:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 256:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** 
 257:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** /**
 258:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \brief   Set Base Priority
 259:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register.
 260:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 261:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****  */
 262:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_BASEPRI(uint32_t value)
 263:../com/lib/CMSIS-hal/Include/cmsis_gcc.h **** {
 264:../com/lib/CMSIS-hal/Include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri, %0" : : "r" (value) : "memory");
 443              		.loc 3 264 0
 444 002c 2023     		movs	r3, #32
 445              		.syntax unified
 446              	@ 264 "../com/lib/CMSIS-hal/Include/cmsis_gcc.h" 1
 447 002e 83F31188 		MSR basepri, r3
 448              	@ 0 "" 2
 449              	.LVL27:
 450              		.thumb
 451              		.syntax unified
 452              	.LBE60:
 453              	.LBE59:
 454              	.LBE58:
 455              	.LBE57:
 456              	.LBE56:
 130:../com/src/simple-bsp/usartx.c ****   };
 131:../com/src/simple-bsp/usartx.c **** #ifdef USE_CHIBIOS
 132:../com/src/simple-bsp/usartx.c ****   chSysLockFromISR();
 133:../com/src/simple-bsp/usartx.c ****   if (USARTx_t) chEvtSignalI(USARTx_t, USARTx_tx_EVT);
 457              		.loc 1 133 0
 458 0032 094B     		ldr	r3, .L50+12
 459 0034 1868     		ldr	r0, [r3]
 460 0036 10B1     		cbz	r0, .L42
 461              		.loc 1 133 0 is_stmt 0 discriminator 1
 462 0038 0221     		movs	r1, #2
 463 003a FFF7FEFF 		bl	chEvtSignalI
 464              	.LVL28:
 465              	.L42:
 466              	.LBB61:
 467              	.LBB62:
 468              	.LBB63:
 469              	.LBB64:
 470              	.LBB65:
 471              		.loc 3 264 0 is_stmt 1
 472 003e 0023     		movs	r3, #0
 473              		.syntax unified
 474              	@ 264 "../com/lib/CMSIS-hal/Include/cmsis_gcc.h" 1
 475 0040 83F31188 		MSR basepri, r3
 476              	@ 0 "" 2
 477              	.LVL29:
 478              		.thumb
 479              		.syntax unified
 480              	.LBE65:
 481              	.LBE64:
 482              	.LBE63:
 483              	.LBE62:
 484              	.LBE61:
 134:../com/src/simple-bsp/usartx.c ****   chSysUnlockFromISR();
 135:../com/src/simple-bsp/usartx.c ****   CH_IRQ_EPILOGUE();
 136:../com/src/simple-bsp/usartx.c **** #endif
 137:../com/src/simple-bsp/usartx.c **** }
 485              		.loc 1 137 0
 486 0044 BDE81040 		pop	{r4, lr}
 487              		.cfi_restore 14
 488              		.cfi_restore 4
 489              		.cfi_def_cfa_offset 0
 135:../com/src/simple-bsp/usartx.c **** #endif
 490              		.loc 1 135 0
 491 0048 FFF7FEBF 		b	_port_irq_epilogue
 492              	.LVL30:
 493              	.L51:
 494              		.align	2
 495              	.L50:
 496 004c 00600240 		.word	1073897472
 497 0050 00000000 		.word	huart2
 498 0054 00000000 		.word	.LANCHOR2
 499 0058 00000000 		.word	.LANCHOR4
 500              		.cfi_endproc
 501              	.LFE236:
 503              		.section	.text.VectorD8,"ax",%progbits
 504              		.align	1
 505              		.p2align 2,,3
 506              		.global	VectorD8
 507              		.syntax unified
 508              		.thumb
 509              		.thumb_func
 510              		.fpu fpv4-sp-d16
 512              	VectorD8:
 513              	.LFB237:
 138:../com/src/simple-bsp/usartx.c **** 
 139:../com/src/simple-bsp/usartx.c **** /* Override the HAL / cube generated ISR */
 140:../com/src/simple-bsp/usartx.c **** 
 141:../com/src/simple-bsp/usartx.c **** void USARTx_IRQHandler(void)
 142:../com/src/simple-bsp/usartx.c **** {
 514              		.loc 1 142 0
 515              		.cfi_startproc
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518              		@ link register save eliminated.
 519 0000 10B4     		push	{r4}
 520              		.cfi_def_cfa_offset 4
 521              		.cfi_offset 4, -4
 143:../com/src/simple-bsp/usartx.c **** #ifdef USE_CHIBIOS
 144:../com/src/simple-bsp/usartx.c ****   CH_IRQ_PROLOGUE();
 145:../com/src/simple-bsp/usartx.c **** #endif
 146:../com/src/simple-bsp/usartx.c **** 	/* Transfer Complete: Reset DE */
 147:../com/src/simple-bsp/usartx.c **** 	/* STM32F7 usarts have their own DE line, but I continue to use the old style here */
 148:../com/src/simple-bsp/usartx.c ****   int sr = huartx.Instance->USARTx_ISR;
 522              		.loc 1 148 0
 523 0002 1549     		ldr	r1, .L66
 524 0004 0A68     		ldr	r2, [r1]
 525 0006 1368     		ldr	r3, [r2]
 526              	.LVL31:
 149:../com/src/simple-bsp/usartx.c ****   if (sr & USART_FLAG_TC) {
 527              		.loc 1 149 0
 528 0008 5806     		lsls	r0, r3, #25
 529 000a 05D5     		bpl	.L53
 150:../com/src/simple-bsp/usartx.c **** 	  USARTx_DE_OFF;
 151:../com/src/simple-bsp/usartx.c **** 	  __HAL_USART_DISABLE_IT(&huartx, USART_IT_TC);
 530              		.loc 1 151 0
 531 000c D068     		ldr	r0, [r2, #12]
 152:../com/src/simple-bsp/usartx.c **** 	  USARTx_CLRTC;
 532              		.loc 1 152 0
 533 000e 6FF04004 		mvn	r4, #64
 151:../com/src/simple-bsp/usartx.c **** 	  USARTx_CLRTC;
 534              		.loc 1 151 0
 535 0012 2040     		ands	r0, r0, r4
 536 0014 D060     		str	r0, [r2, #12]
 537              		.loc 1 152 0
 538 0016 1460     		str	r4, [r2]
 539              	.L53:
 153:../com/src/simple-bsp/usartx.c ****   };
 154:../com/src/simple-bsp/usartx.c **** 
 155:../com/src/simple-bsp/usartx.c ****   if (sr & USART_FLAG_RXNE) {
 540              		.loc 1 155 0
 541 0018 9A06     		lsls	r2, r3, #26
 542 001a 14D5     		bpl	.L55
 156:../com/src/simple-bsp/usartx.c **** 	  if (sr & USART_FLAG_IDLE) {
 543              		.loc 1 156 0
 544 001c 13F0100F 		tst	r3, #16
 157:../com/src/simple-bsp/usartx.c **** 		rxidlx=rxbpx;  // IDLE
 545              		.loc 1 157 0
 546 0020 0E4B     		ldr	r3, .L66+4
 547              	.LVL32:
 156:../com/src/simple-bsp/usartx.c **** 	  if (sr & USART_FLAG_IDLE) {
 548              		.loc 1 156 0
 549 0022 14D1     		bne	.L65
 550              	.L56:
 158:../com/src/simple-bsp/usartx.c **** 	  }
 159:../com/src/simple-bsp/usartx.c ****       rxbufx[rxbpx] = huartx.Instance->USARTx_RDR;
 551              		.loc 1 159 0
 552 0024 0A68     		ldr	r2, [r1]
 553 0026 1988     		ldrh	r1, [r3]
 554 0028 5468     		ldr	r4, [r2, #4]
 160:../com/src/simple-bsp/usartx.c **** 	  rxbpx++;
 555              		.loc 1 160 0
 556 002a 1A88     		ldrh	r2, [r3]
 159:../com/src/simple-bsp/usartx.c **** 	  rxbpx++;
 557              		.loc 1 159 0
 558 002c 0C48     		ldr	r0, .L66+8
 559              		.loc 1 160 0
 560 002e 0132     		adds	r2, r2, #1
 561 0030 12B2     		sxth	r2, r2
 562 0032 1A80     		strh	r2, [r3]	@ movhi
 161:../com/src/simple-bsp/usartx.c **** 	  if (rxbpx>=RXBUFSIZE) rxbpx=0;
 563              		.loc 1 161 0
 564 0034 1A88     		ldrh	r2, [r3]
 159:../com/src/simple-bsp/usartx.c **** 	  rxbpx++;
 565              		.loc 1 159 0
 566 0036 09B2     		sxth	r1, r1
 567              		.loc 1 161 0
 568 0038 12B2     		sxth	r2, r2
 569 003a FF2A     		cmp	r2, #255
 570 003c C8BF     		it	gt
 571 003e 0022     		movgt	r2, #0
 159:../com/src/simple-bsp/usartx.c **** 	  rxbpx++;
 572              		.loc 1 159 0
 573 0040 4454     		strb	r4, [r0, r1]
 574              		.loc 1 161 0
 575 0042 C8BF     		it	gt
 576 0044 1A80     		strhgt	r2, [r3]	@ movhi
 577              	.L55:
 162:../com/src/simple-bsp/usartx.c ****   }
 163:../com/src/simple-bsp/usartx.c **** #ifdef USE_CHIBIOS
 164:../com/src/simple-bsp/usartx.c ****   CH_IRQ_EPILOGUE();
 165:../com/src/simple-bsp/usartx.c **** #endif
 166:../com/src/simple-bsp/usartx.c **** }
 578              		.loc 1 166 0
 579 0046 5DF8044B 		ldr	r4, [sp], #4
 580              		.cfi_remember_state
 581              		.cfi_restore 4
 582              		.cfi_def_cfa_offset 0
 164:../com/src/simple-bsp/usartx.c **** #endif
 583              		.loc 1 164 0
 584 004a FFF7FEBF 		b	_port_irq_epilogue
 585              	.LVL33:
 586              	.L65:
 587              		.cfi_restore_state
 157:../com/src/simple-bsp/usartx.c **** 	  }
 588              		.loc 1 157 0
 589 004e 054A     		ldr	r2, .L66+12
 590 0050 1888     		ldrh	r0, [r3]
 591 0052 1080     		strh	r0, [r2]	@ movhi
 592 0054 E6E7     		b	.L56
 593              	.L67:
 594 0056 00BF     		.align	2
 595              	.L66:
 596 0058 00000000 		.word	huart2
 597 005c 00000000 		.word	.LANCHOR0
 598 0060 00000000 		.word	.LANCHOR6
 599 0064 00000000 		.word	.LANCHOR5
 600              		.cfi_endproc
 601              	.LFE237:
 603              		.global	rxidl2
 604              		.global	txr2
 605              		.global	rxrp2
 606              		.global	rxbp2
 607              		.global	rxbuf2
 608              		.global	txbuf2
 609              		.section	.bss.USART2_t,"aw",%nobits
 610              		.align	2
 611              		.set	.LANCHOR4,. + 0
 614              	USART2_t:
 615 0000 00000000 		.space	4
 616              		.section	.bss.rxbp2,"aw",%nobits
 617              		.align	1
 618              		.set	.LANCHOR0,. + 0
 621              	rxbp2:
 622 0000 0000     		.space	2
 623              		.section	.bss.rxbuf2,"aw",%nobits
 624              		.align	2
 625              		.set	.LANCHOR6,. + 0
 628              	rxbuf2:
 629 0000 00000000 		.space	256
 629      00000000 
 629      00000000 
 629      00000000 
 629      00000000 
 630              		.section	.bss.rxidl2,"aw",%nobits
 631              		.align	1
 632              		.set	.LANCHOR5,. + 0
 635              	rxidl2:
 636 0000 0000     		.space	2
 637              		.section	.bss.rxrp2,"aw",%nobits
 638              		.align	1
 639              		.set	.LANCHOR1,. + 0
 642              	rxrp2:
 643 0000 0000     		.space	2
 644              		.section	.bss.txbuf2,"aw",%nobits
 645              		.align	2
 646              		.set	.LANCHOR3,. + 0
 649              	txbuf2:
 650 0000 00000000 		.space	256
 650      00000000 
 650      00000000 
 650      00000000 
 650      00000000 
 651              		.section	.bss.txr2,"aw",%nobits
 652              		.align	1
 653              		.set	.LANCHOR2,. + 0
 656              	txr2:
 657 0000 0000     		.space	2
 658              		.text
 659              	.Letext0:
 660              		.file 4 "/usr/include/newlib/machine/_default_types.h"
 661              		.file 5 "/usr/include/newlib/sys/_stdint.h"
 662              		.file 6 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 663              		.file 7 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 664              		.file 8 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
 665              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 666              		.file 10 "/usr/include/newlib/sys/lock.h"
 667              		.file 11 "/usr/include/newlib/sys/_types.h"
 668              		.file 12 "/usr/include/newlib/sys/reent.h"
 669              		.file 13 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
 670              		.file 14 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_dma.h"
 671              		.file 15 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_uart.h"
 672              		.file 16 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/compilers/GCC/chtypes.h"
 673              		.file 17 "../com/lib/chibios-16.1.4/os/rt/include/chsystypes.h"
 674              		.file 18 "../com/lib/chibios-16.1.4/os/rt/include/chschd.h"
 675              		.file 19 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore.h"
 676              		.file 20 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore_v7m.h"
 677              		.file 21 "../com/lib/chibios-16.1.4/os/rt/include/chsem.h"
 678              		.file 22 "../com/lib/chibios-16.1.4/os/rt/include/chmtx.h"
 679              		.file 23 "../com/lib/chibios-16.1.4/os/rt/include/chregistry.h"
 680              		.file 24 "../com/src/simple-bsp/usartx.h"
 681              		.file 25 "cube/nucleo-f410-bsp1/Inc/usart.h"
 682              		.file 26 "../com/lib/chibios-16.1.4/os/rt/include/chsys.h"
 683              		.file 27 "../com/lib/chibios-16.1.4/os/rt/include/chevents.h"
