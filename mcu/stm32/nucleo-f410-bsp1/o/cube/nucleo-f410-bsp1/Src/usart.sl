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
  11              		.file	"usart.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.MX_USART2_UART_Init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	MX_USART2_UART_Init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	MX_USART2_UART_Init:
  25              	.LFB126:
  26              		.file 1 "cube/nucleo-f410-bsp1/Src/usart.c"
   1:cube/nucleo-f410-bsp1/Src/usart.c **** /**
   2:cube/nucleo-f410-bsp1/Src/usart.c ****   ******************************************************************************
   3:cube/nucleo-f410-bsp1/Src/usart.c ****   * File Name          : USART.c
   4:cube/nucleo-f410-bsp1/Src/usart.c ****   * Description        : This file provides code for the configuration
   5:cube/nucleo-f410-bsp1/Src/usart.c ****   *                      of the USART instances.
   6:cube/nucleo-f410-bsp1/Src/usart.c ****   ******************************************************************************
   7:cube/nucleo-f410-bsp1/Src/usart.c ****   *
   8:cube/nucleo-f410-bsp1/Src/usart.c ****   * COPYRIGHT(c) 2016 STMicroelectronics
   9:cube/nucleo-f410-bsp1/Src/usart.c ****   *
  10:cube/nucleo-f410-bsp1/Src/usart.c ****   * Redistribution and use in source and binary forms, with or without modification,
  11:cube/nucleo-f410-bsp1/Src/usart.c ****   * are permitted provided that the following conditions are met:
  12:cube/nucleo-f410-bsp1/Src/usart.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  13:cube/nucleo-f410-bsp1/Src/usart.c ****   *      this list of conditions and the following disclaimer.
  14:cube/nucleo-f410-bsp1/Src/usart.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  15:cube/nucleo-f410-bsp1/Src/usart.c ****   *      this list of conditions and the following disclaimer in the documentation
  16:cube/nucleo-f410-bsp1/Src/usart.c ****   *      and/or other materials provided with the distribution.
  17:cube/nucleo-f410-bsp1/Src/usart.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  18:cube/nucleo-f410-bsp1/Src/usart.c ****   *      may be used to endorse or promote products derived from this software
  19:cube/nucleo-f410-bsp1/Src/usart.c ****   *      without specific prior written permission.
  20:cube/nucleo-f410-bsp1/Src/usart.c ****   *
  21:cube/nucleo-f410-bsp1/Src/usart.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:cube/nucleo-f410-bsp1/Src/usart.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:cube/nucleo-f410-bsp1/Src/usart.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  24:cube/nucleo-f410-bsp1/Src/usart.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  25:cube/nucleo-f410-bsp1/Src/usart.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  26:cube/nucleo-f410-bsp1/Src/usart.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  27:cube/nucleo-f410-bsp1/Src/usart.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  28:cube/nucleo-f410-bsp1/Src/usart.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  29:cube/nucleo-f410-bsp1/Src/usart.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  30:cube/nucleo-f410-bsp1/Src/usart.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  31:cube/nucleo-f410-bsp1/Src/usart.c ****   *
  32:cube/nucleo-f410-bsp1/Src/usart.c ****   ******************************************************************************
  33:cube/nucleo-f410-bsp1/Src/usart.c ****   */
  34:cube/nucleo-f410-bsp1/Src/usart.c **** 
  35:cube/nucleo-f410-bsp1/Src/usart.c **** /* Includes ------------------------------------------------------------------*/
  36:cube/nucleo-f410-bsp1/Src/usart.c **** #include "usart.h"
  37:cube/nucleo-f410-bsp1/Src/usart.c **** 
  38:cube/nucleo-f410-bsp1/Src/usart.c **** #include "gpio.h"
  39:cube/nucleo-f410-bsp1/Src/usart.c **** #include "dma.h"
  40:cube/nucleo-f410-bsp1/Src/usart.c **** 
  41:cube/nucleo-f410-bsp1/Src/usart.c **** /* USER CODE BEGIN 0 */
  42:cube/nucleo-f410-bsp1/Src/usart.c **** 
  43:cube/nucleo-f410-bsp1/Src/usart.c **** /* USER CODE END 0 */
  44:cube/nucleo-f410-bsp1/Src/usart.c **** 
  45:cube/nucleo-f410-bsp1/Src/usart.c **** UART_HandleTypeDef huart2;
  46:cube/nucleo-f410-bsp1/Src/usart.c **** DMA_HandleTypeDef hdma_usart2_tx;
  47:cube/nucleo-f410-bsp1/Src/usart.c **** 
  48:cube/nucleo-f410-bsp1/Src/usart.c **** /* USART2 init function */
  49:cube/nucleo-f410-bsp1/Src/usart.c **** 
  50:cube/nucleo-f410-bsp1/Src/usart.c **** void MX_USART2_UART_Init(void)
  51:cube/nucleo-f410-bsp1/Src/usart.c **** {
  27              		.loc 1 51 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  52:cube/nucleo-f410-bsp1/Src/usart.c **** 
  53:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Instance = USART2;
  32              		.loc 1 53 0
  33 0000 094B     		ldr	r3, .L3
  34 0002 0A4A     		ldr	r2, .L3+4
  51:cube/nucleo-f410-bsp1/Src/usart.c **** 
  35              		.loc 1 51 0
  36 0004 10B4     		push	{r4}
  37              		.cfi_def_cfa_offset 4
  38              		.cfi_offset 4, -4
  54:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.BaudRate = 115200;
  55:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.WordLength = UART_WORDLENGTH_8B;
  56:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.StopBits = UART_STOPBITS_1;
  57:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.Parity = UART_PARITY_NONE;
  58:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.Mode = UART_MODE_TX_RX;
  39              		.loc 1 58 0
  40 0006 0C21     		movs	r1, #12
  53:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.BaudRate = 115200;
  41              		.loc 1 53 0
  42 0008 1A60     		str	r2, [r3]
  54:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.BaudRate = 115200;
  43              		.loc 1 54 0
  44 000a 4FF4E134 		mov	r4, #115200
  55:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.StopBits = UART_STOPBITS_1;
  45              		.loc 1 55 0
  46 000e 0022     		movs	r2, #0
  54:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.BaudRate = 115200;
  47              		.loc 1 54 0
  48 0010 5C60     		str	r4, [r3, #4]
  49              		.loc 1 58 0
  50 0012 5961     		str	r1, [r3, #20]
  55:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.StopBits = UART_STOPBITS_1;
  51              		.loc 1 55 0
  52 0014 9A60     		str	r2, [r3, #8]
  56:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.Parity = UART_PARITY_NONE;
  53              		.loc 1 56 0
  54 0016 DA60     		str	r2, [r3, #12]
  57:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.Mode = UART_MODE_TX_RX;
  55              		.loc 1 57 0
  56 0018 1A61     		str	r2, [r3, #16]
  59:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  57              		.loc 1 59 0
  58 001a 9A61     		str	r2, [r3, #24]
  60:cube/nucleo-f410-bsp1/Src/usart.c ****   huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  59              		.loc 1 60 0
  60 001c DA61     		str	r2, [r3, #28]
  61:cube/nucleo-f410-bsp1/Src/usart.c ****   HAL_UART_Init(&huart2);
  61              		.loc 1 61 0
  62 001e 1846     		mov	r0, r3
  62:cube/nucleo-f410-bsp1/Src/usart.c **** 
  63:cube/nucleo-f410-bsp1/Src/usart.c **** }
  63              		.loc 1 63 0
  64 0020 5DF8044B 		ldr	r4, [sp], #4
  65              		.cfi_restore 4
  66              		.cfi_def_cfa_offset 0
  61:cube/nucleo-f410-bsp1/Src/usart.c ****   HAL_UART_Init(&huart2);
  67              		.loc 1 61 0
  68 0024 FFF7FEBF 		b	HAL_UART_Init
  69              	.LVL0:
  70              	.L4:
  71              		.align	2
  72              	.L3:
  73 0028 00000000 		.word	.LANCHOR0
  74 002c 00440040 		.word	1073759232
  75              		.cfi_endproc
  76              	.LFE126:
  78              		.section	.text.HAL_UART_MspInit,"ax",%progbits
  79              		.align	1
  80              		.p2align 2,,3
  81              		.global	HAL_UART_MspInit
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv4-sp-d16
  87              	HAL_UART_MspInit:
  88              	.LFB127:
  64:cube/nucleo-f410-bsp1/Src/usart.c **** 
  65:cube/nucleo-f410-bsp1/Src/usart.c **** void HAL_UART_MspInit(UART_HandleTypeDef* huart)
  66:cube/nucleo-f410-bsp1/Src/usart.c **** {
  89              		.loc 1 66 0
  90              		.cfi_startproc
  91              		@ args = 0, pretend = 0, frame = 24
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              	.LVL1:
  67:cube/nucleo-f410-bsp1/Src/usart.c **** 
  68:cube/nucleo-f410-bsp1/Src/usart.c ****   GPIO_InitTypeDef GPIO_InitStruct;
  69:cube/nucleo-f410-bsp1/Src/usart.c ****   if(huart->Instance==USART2)
  94              		.loc 1 69 0
  95 0000 214B     		ldr	r3, .L13
  96 0002 0268     		ldr	r2, [r0]
  97 0004 9A42     		cmp	r2, r3
  98 0006 00D0     		beq	.L12
  99 0008 7047     		bx	lr
 100              	.L12:
  66:cube/nucleo-f410-bsp1/Src/usart.c **** 
 101              		.loc 1 66 0
 102 000a F0B5     		push	{r4, r5, r6, r7, lr}
 103              		.cfi_def_cfa_offset 20
 104              		.cfi_offset 4, -20
 105              		.cfi_offset 5, -16
 106              		.cfi_offset 6, -12
 107              		.cfi_offset 7, -8
 108              		.cfi_offset 14, -4
 109 000c 87B0     		sub	sp, sp, #28
 110              		.cfi_def_cfa_offset 48
 111              	.LBB2:
  70:cube/nucleo-f410-bsp1/Src/usart.c ****   {
  71:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE BEGIN USART2_MspInit 0 */
  72:cube/nucleo-f410-bsp1/Src/usart.c **** 
  73:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE END USART2_MspInit 0 */
  74:cube/nucleo-f410-bsp1/Src/usart.c ****     /* Peripheral clock enable */
  75:cube/nucleo-f410-bsp1/Src/usart.c ****     __USART2_CLK_ENABLE();
 112              		.loc 1 75 0
 113 000e 0026     		movs	r6, #0
 114 0010 03F5FA33 		add	r3, r3, #128000
 115 0014 0096     		str	r6, [sp]
 116 0016 1A6C     		ldr	r2, [r3, #64]
 117              	.LBE2:
  76:cube/nucleo-f410-bsp1/Src/usart.c ****   
  77:cube/nucleo-f410-bsp1/Src/usart.c ****     /**USART2 GPIO Configuration    
  78:cube/nucleo-f410-bsp1/Src/usart.c ****     PA2     ------> USART2_TX
  79:cube/nucleo-f410-bsp1/Src/usart.c ****     PA3     ------> USART2_RX 
  80:cube/nucleo-f410-bsp1/Src/usart.c ****     */
  81:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Pin = USART_TX_Pin|USART_RX_Pin;
  82:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
  83:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Pull = GPIO_NOPULL;
  84:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
  85:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
  86:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
  87:cube/nucleo-f410-bsp1/Src/usart.c **** 
  88:cube/nucleo-f410-bsp1/Src/usart.c ****     /* Peripheral DMA init*/
  89:cube/nucleo-f410-bsp1/Src/usart.c ****   
  90:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Instance = DMA1_Stream6;
 118              		.loc 1 90 0
 119 0018 1C4D     		ldr	r5, .L13+4
 120              	.LBB3:
  75:cube/nucleo-f410-bsp1/Src/usart.c ****   
 121              		.loc 1 75 0
 122 001a 42F40032 		orr	r2, r2, #131072
 123 001e 1A64     		str	r2, [r3, #64]
 124 0020 1B6C     		ldr	r3, [r3, #64]
 125              	.LBE3:
  83:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
 126              		.loc 1 83 0
 127 0022 0396     		str	r6, [sp, #12]
 128              	.LBB4:
  75:cube/nucleo-f410-bsp1/Src/usart.c ****   
 129              		.loc 1 75 0
 130 0024 03F40033 		and	r3, r3, #131072
 131              	.LBE4:
  81:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 132              		.loc 1 81 0
 133 0028 0C21     		movs	r1, #12
 134 002a 0446     		mov	r4, r0
 135              	.LBB5:
  75:cube/nucleo-f410-bsp1/Src/usart.c ****   
 136              		.loc 1 75 0
 137 002c 0093     		str	r3, [sp]
 138              	.LBE5:
  82:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Pull = GPIO_NOPULL;
 139              		.loc 1 82 0
 140 002e 0227     		movs	r7, #2
  84:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
 141              		.loc 1 84 0
 142 0030 0322     		movs	r2, #3
  85:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 143              		.loc 1 85 0
 144 0032 0723     		movs	r3, #7
  81:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 145              		.loc 1 81 0
 146 0034 0191     		str	r1, [sp, #4]
  86:cube/nucleo-f410-bsp1/Src/usart.c **** 
 147              		.loc 1 86 0
 148 0036 1648     		ldr	r0, .L13+8
 149              	.LVL2:
 150              	.LBB6:
  75:cube/nucleo-f410-bsp1/Src/usart.c ****   
 151              		.loc 1 75 0
 152 0038 DDF800E0 		ldr	lr, [sp]
 153              	.LBE6:
  84:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
 154              		.loc 1 84 0
 155 003c 0492     		str	r2, [sp, #16]
  86:cube/nucleo-f410-bsp1/Src/usart.c **** 
 156              		.loc 1 86 0
 157 003e 01A9     		add	r1, sp, #4
  85:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 158              		.loc 1 85 0
 159 0040 0593     		str	r3, [sp, #20]
  82:cube/nucleo-f410-bsp1/Src/usart.c ****     GPIO_InitStruct.Pull = GPIO_NOPULL;
 160              		.loc 1 82 0
 161 0042 0297     		str	r7, [sp, #8]
  86:cube/nucleo-f410-bsp1/Src/usart.c **** 
 162              		.loc 1 86 0
 163 0044 FFF7FEFF 		bl	HAL_GPIO_Init
 164              	.LVL3:
 165              		.loc 1 90 0
 166 0048 1248     		ldr	r0, .L13+12
 167 004a 2860     		str	r0, [r5]
  91:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Channel = DMA_CHANNEL_4;
  92:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
  93:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.PeriphInc = DMA_PINC_DISABLE;
  94:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.MemInc = DMA_MINC_ENABLE;
 168              		.loc 1 94 0
 169 004c 4FF48063 		mov	r3, #1024
  91:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Channel = DMA_CHANNEL_4;
 170              		.loc 1 91 0
 171 0050 4FF00061 		mov	r1, #134217728
  92:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.PeriphInc = DMA_PINC_DISABLE;
 172              		.loc 1 92 0
 173 0054 4022     		movs	r2, #64
  95:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
  96:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
  97:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Mode = DMA_NORMAL;
  98:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Priority = DMA_PRIORITY_LOW;
  99:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
 100:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_DMA_Init(&hdma_usart2_tx);
 174              		.loc 1 100 0
 175 0056 2846     		mov	r0, r5
  94:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 176              		.loc 1 94 0
 177 0058 2B61     		str	r3, [r5, #16]
  91:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
 178              		.loc 1 91 0
 179 005a 6960     		str	r1, [r5, #4]
  92:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.PeriphInc = DMA_PINC_DISABLE;
 180              		.loc 1 92 0
 181 005c AA60     		str	r2, [r5, #8]
  93:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.MemInc = DMA_MINC_ENABLE;
 182              		.loc 1 93 0
 183 005e EE60     		str	r6, [r5, #12]
  95:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
 184              		.loc 1 95 0
 185 0060 6E61     		str	r6, [r5, #20]
  96:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Mode = DMA_NORMAL;
 186              		.loc 1 96 0
 187 0062 AE61     		str	r6, [r5, #24]
  97:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.Priority = DMA_PRIORITY_LOW;
 188              		.loc 1 97 0
 189 0064 EE61     		str	r6, [r5, #28]
  98:cube/nucleo-f410-bsp1/Src/usart.c ****     hdma_usart2_tx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
 190              		.loc 1 98 0
 191 0066 2E62     		str	r6, [r5, #32]
  99:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_DMA_Init(&hdma_usart2_tx);
 192              		.loc 1 99 0
 193 0068 6E62     		str	r6, [r5, #36]
 194              		.loc 1 100 0
 195 006a FFF7FEFF 		bl	HAL_DMA_Init
 196              	.LVL4:
 101:cube/nucleo-f410-bsp1/Src/usart.c **** 
 102:cube/nucleo-f410-bsp1/Src/usart.c ****     __HAL_LINKDMA(huart,hdmatx,hdma_usart2_tx);
 197              		.loc 1 102 0
 198 006e 2563     		str	r5, [r4, #48]
 103:cube/nucleo-f410-bsp1/Src/usart.c **** 
 104:cube/nucleo-f410-bsp1/Src/usart.c ****     /* Peripheral interrupt init*/
 105:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_NVIC_SetPriority(USART2_IRQn, 2, 0);
 199              		.loc 1 105 0
 200 0070 3246     		mov	r2, r6
 201 0072 3946     		mov	r1, r7
 202 0074 2620     		movs	r0, #38
 102:cube/nucleo-f410-bsp1/Src/usart.c **** 
 203              		.loc 1 102 0
 204 0076 AC63     		str	r4, [r5, #56]
 205              		.loc 1 105 0
 206 0078 FFF7FEFF 		bl	HAL_NVIC_SetPriority
 207              	.LVL5:
 106:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_NVIC_EnableIRQ(USART2_IRQn);
 208              		.loc 1 106 0
 209 007c 2620     		movs	r0, #38
 210 007e FFF7FEFF 		bl	HAL_NVIC_EnableIRQ
 211              	.LVL6:
 107:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE BEGIN USART2_MspInit 1 */
 108:cube/nucleo-f410-bsp1/Src/usart.c **** 
 109:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE END USART2_MspInit 1 */
 110:cube/nucleo-f410-bsp1/Src/usart.c ****   }
 111:cube/nucleo-f410-bsp1/Src/usart.c **** }
 212              		.loc 1 111 0
 213 0082 07B0     		add	sp, sp, #28
 214              		.cfi_def_cfa_offset 20
 215              		@ sp needed
 216 0084 F0BD     		pop	{r4, r5, r6, r7, pc}
 217              	.LVL7:
 218              	.L14:
 219 0086 00BF     		.align	2
 220              	.L13:
 221 0088 00440040 		.word	1073759232
 222 008c 00000000 		.word	.LANCHOR1
 223 0090 00000240 		.word	1073872896
 224 0094 A0600240 		.word	1073897632
 225              		.cfi_endproc
 226              	.LFE127:
 228              		.section	.text.HAL_UART_MspDeInit,"ax",%progbits
 229              		.align	1
 230              		.p2align 2,,3
 231              		.global	HAL_UART_MspDeInit
 232              		.syntax unified
 233              		.thumb
 234              		.thumb_func
 235              		.fpu fpv4-sp-d16
 237              	HAL_UART_MspDeInit:
 238              	.LFB128:
 112:cube/nucleo-f410-bsp1/Src/usart.c **** 
 113:cube/nucleo-f410-bsp1/Src/usart.c **** void HAL_UART_MspDeInit(UART_HandleTypeDef* huart)
 114:cube/nucleo-f410-bsp1/Src/usart.c **** {
 239              		.loc 1 114 0
 240              		.cfi_startproc
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              	.LVL8:
 115:cube/nucleo-f410-bsp1/Src/usart.c **** 
 116:cube/nucleo-f410-bsp1/Src/usart.c ****   if(huart->Instance==USART2)
 244              		.loc 1 116 0
 245 0000 0B4B     		ldr	r3, .L21
 246 0002 0268     		ldr	r2, [r0]
 247 0004 9A42     		cmp	r2, r3
 248 0006 00D0     		beq	.L20
 249 0008 7047     		bx	lr
 250              	.L20:
 114:cube/nucleo-f410-bsp1/Src/usart.c **** 
 251              		.loc 1 114 0
 252 000a 10B5     		push	{r4, lr}
 253              		.cfi_def_cfa_offset 8
 254              		.cfi_offset 4, -8
 255              		.cfi_offset 14, -4
 117:cube/nucleo-f410-bsp1/Src/usart.c ****   {
 118:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE BEGIN USART2_MspDeInit 0 */
 119:cube/nucleo-f410-bsp1/Src/usart.c **** 
 120:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE END USART2_MspDeInit 0 */
 121:cube/nucleo-f410-bsp1/Src/usart.c ****     /* Peripheral clock disable */
 122:cube/nucleo-f410-bsp1/Src/usart.c ****     __USART2_CLK_DISABLE();
 256              		.loc 1 122 0
 257 000c 094A     		ldr	r2, .L21+4
 258 000e 136C     		ldr	r3, [r2, #64]
 259 0010 0446     		mov	r4, r0
 260 0012 23F40033 		bic	r3, r3, #131072
 123:cube/nucleo-f410-bsp1/Src/usart.c ****   
 124:cube/nucleo-f410-bsp1/Src/usart.c ****     /**USART2 GPIO Configuration    
 125:cube/nucleo-f410-bsp1/Src/usart.c ****     PA2     ------> USART2_TX
 126:cube/nucleo-f410-bsp1/Src/usart.c ****     PA3     ------> USART2_RX 
 127:cube/nucleo-f410-bsp1/Src/usart.c ****     */
 128:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_GPIO_DeInit(GPIOA, USART_TX_Pin|USART_RX_Pin);
 261              		.loc 1 128 0
 262 0016 0848     		ldr	r0, .L21+8
 263              	.LVL9:
 122:cube/nucleo-f410-bsp1/Src/usart.c ****   
 264              		.loc 1 122 0
 265 0018 1364     		str	r3, [r2, #64]
 266              		.loc 1 128 0
 267 001a 0C21     		movs	r1, #12
 268 001c FFF7FEFF 		bl	HAL_GPIO_DeInit
 269              	.LVL10:
 129:cube/nucleo-f410-bsp1/Src/usart.c **** 
 130:cube/nucleo-f410-bsp1/Src/usart.c ****     /* Peripheral DMA DeInit*/
 131:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_DMA_DeInit(huart->hdmatx);
 270              		.loc 1 131 0
 271 0020 206B     		ldr	r0, [r4, #48]
 272 0022 FFF7FEFF 		bl	HAL_DMA_DeInit
 273              	.LVL11:
 132:cube/nucleo-f410-bsp1/Src/usart.c **** 
 133:cube/nucleo-f410-bsp1/Src/usart.c ****     /* Peripheral interrupt Deinit*/
 134:cube/nucleo-f410-bsp1/Src/usart.c ****     HAL_NVIC_DisableIRQ(USART2_IRQn);
 274              		.loc 1 134 0
 275 0026 2620     		movs	r0, #38
 135:cube/nucleo-f410-bsp1/Src/usart.c **** 
 136:cube/nucleo-f410-bsp1/Src/usart.c ****   }
 137:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE BEGIN USART2_MspDeInit 1 */
 138:cube/nucleo-f410-bsp1/Src/usart.c **** 
 139:cube/nucleo-f410-bsp1/Src/usart.c ****   /* USER CODE END USART2_MspDeInit 1 */
 140:cube/nucleo-f410-bsp1/Src/usart.c **** } 
 276              		.loc 1 140 0
 277 0028 BDE81040 		pop	{r4, lr}
 278              		.cfi_restore 14
 279              		.cfi_restore 4
 280              		.cfi_def_cfa_offset 0
 281              	.LVL12:
 134:cube/nucleo-f410-bsp1/Src/usart.c **** 
 282              		.loc 1 134 0
 283 002c FFF7FEBF 		b	HAL_NVIC_DisableIRQ
 284              	.LVL13:
 285              	.L22:
 286              		.align	2
 287              	.L21:
 288 0030 00440040 		.word	1073759232
 289 0034 00380240 		.word	1073887232
 290 0038 00000240 		.word	1073872896
 291              		.cfi_endproc
 292              	.LFE128:
 294              		.global	hdma_usart2_tx
 295              		.global	huart2
 296              		.section	.bss.hdma_usart2_tx,"aw",%nobits
 297              		.align	2
 298              		.set	.LANCHOR1,. + 0
 301              	hdma_usart2_tx:
 302 0000 00000000 		.space	88
 302      00000000 
 302      00000000 
 302      00000000 
 302      00000000 
 303              		.section	.bss.huart2,"aw",%nobits
 304              		.align	2
 305              		.set	.LANCHOR0,. + 0
 308              	huart2:
 309 0000 00000000 		.space	64
 309      00000000 
 309      00000000 
 309      00000000 
 309      00000000 
 310              		.text
 311              	.Letext0:
 312              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 313              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 314              		.file 4 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 315              		.file 5 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 316              		.file 6 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
 317              		.file 7 "/usr/include/newlib/sys/lock.h"
 318              		.file 8 "/usr/include/newlib/sys/_types.h"
 319              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 320              		.file 10 "/usr/include/newlib/sys/reent.h"
 321              		.file 11 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
 322              		.file 12 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_gpio.h"
 323              		.file 13 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_dma.h"
 324              		.file 14 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_uart.h"
 325              		.file 15 "cube/nucleo-f410-bsp1/Inc/usart.h"
 326              		.file 16 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_cortex.h"
