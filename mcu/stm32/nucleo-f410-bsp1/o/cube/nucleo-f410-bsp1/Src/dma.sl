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
  11              		.file	"dma.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.MX_DMA_Init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	MX_DMA_Init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	MX_DMA_Init:
  25              	.LFB126:
  26              		.file 1 "cube/nucleo-f410-bsp1/Src/dma.c"
   1:cube/nucleo-f410-bsp1/Src/dma.c **** /**
   2:cube/nucleo-f410-bsp1/Src/dma.c ****   ******************************************************************************
   3:cube/nucleo-f410-bsp1/Src/dma.c ****   * File Name          : dma.c
   4:cube/nucleo-f410-bsp1/Src/dma.c ****   * Description        : This file provides code for the configuration
   5:cube/nucleo-f410-bsp1/Src/dma.c ****   *                      of all the requested memory to memory DMA transfers.
   6:cube/nucleo-f410-bsp1/Src/dma.c ****   ******************************************************************************
   7:cube/nucleo-f410-bsp1/Src/dma.c ****   *
   8:cube/nucleo-f410-bsp1/Src/dma.c ****   * COPYRIGHT(c) 2016 STMicroelectronics
   9:cube/nucleo-f410-bsp1/Src/dma.c ****   *
  10:cube/nucleo-f410-bsp1/Src/dma.c ****   * Redistribution and use in source and binary forms, with or without modification,
  11:cube/nucleo-f410-bsp1/Src/dma.c ****   * are permitted provided that the following conditions are met:
  12:cube/nucleo-f410-bsp1/Src/dma.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  13:cube/nucleo-f410-bsp1/Src/dma.c ****   *      this list of conditions and the following disclaimer.
  14:cube/nucleo-f410-bsp1/Src/dma.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  15:cube/nucleo-f410-bsp1/Src/dma.c ****   *      this list of conditions and the following disclaimer in the documentation
  16:cube/nucleo-f410-bsp1/Src/dma.c ****   *      and/or other materials provided with the distribution.
  17:cube/nucleo-f410-bsp1/Src/dma.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  18:cube/nucleo-f410-bsp1/Src/dma.c ****   *      may be used to endorse or promote products derived from this software
  19:cube/nucleo-f410-bsp1/Src/dma.c ****   *      without specific prior written permission.
  20:cube/nucleo-f410-bsp1/Src/dma.c ****   *
  21:cube/nucleo-f410-bsp1/Src/dma.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:cube/nucleo-f410-bsp1/Src/dma.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:cube/nucleo-f410-bsp1/Src/dma.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  24:cube/nucleo-f410-bsp1/Src/dma.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  25:cube/nucleo-f410-bsp1/Src/dma.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  26:cube/nucleo-f410-bsp1/Src/dma.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  27:cube/nucleo-f410-bsp1/Src/dma.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  28:cube/nucleo-f410-bsp1/Src/dma.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  29:cube/nucleo-f410-bsp1/Src/dma.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  30:cube/nucleo-f410-bsp1/Src/dma.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  31:cube/nucleo-f410-bsp1/Src/dma.c ****   *
  32:cube/nucleo-f410-bsp1/Src/dma.c ****   ******************************************************************************
  33:cube/nucleo-f410-bsp1/Src/dma.c ****   */
  34:cube/nucleo-f410-bsp1/Src/dma.c **** /* Includes ------------------------------------------------------------------*/
  35:cube/nucleo-f410-bsp1/Src/dma.c **** #include "dma.h"
  36:cube/nucleo-f410-bsp1/Src/dma.c **** 
  37:cube/nucleo-f410-bsp1/Src/dma.c **** /* USER CODE BEGIN 0 */
  38:cube/nucleo-f410-bsp1/Src/dma.c **** 
  39:cube/nucleo-f410-bsp1/Src/dma.c **** /* USER CODE END 0 */
  40:cube/nucleo-f410-bsp1/Src/dma.c **** 
  41:cube/nucleo-f410-bsp1/Src/dma.c **** /*----------------------------------------------------------------------------*/
  42:cube/nucleo-f410-bsp1/Src/dma.c **** /* Configure DMA                                                              */
  43:cube/nucleo-f410-bsp1/Src/dma.c **** /*----------------------------------------------------------------------------*/
  44:cube/nucleo-f410-bsp1/Src/dma.c **** 
  45:cube/nucleo-f410-bsp1/Src/dma.c **** /* USER CODE BEGIN 1 */
  46:cube/nucleo-f410-bsp1/Src/dma.c **** 
  47:cube/nucleo-f410-bsp1/Src/dma.c **** /* USER CODE END 1 */
  48:cube/nucleo-f410-bsp1/Src/dma.c **** 
  49:cube/nucleo-f410-bsp1/Src/dma.c **** /** 
  50:cube/nucleo-f410-bsp1/Src/dma.c ****   * Enable DMA controller clock
  51:cube/nucleo-f410-bsp1/Src/dma.c ****   */
  52:cube/nucleo-f410-bsp1/Src/dma.c **** void MX_DMA_Init(void) 
  53:cube/nucleo-f410-bsp1/Src/dma.c **** {
  27              		.loc 1 53 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 8
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 00B5     		push	{lr}
  32              		.cfi_def_cfa_offset 4
  33              		.cfi_offset 14, -4
  34 0002 83B0     		sub	sp, sp, #12
  35              		.cfi_def_cfa_offset 16
  36              	.LBB2:
  54:cube/nucleo-f410-bsp1/Src/dma.c ****   /* DMA controller clock enable */
  55:cube/nucleo-f410-bsp1/Src/dma.c ****   __HAL_RCC_DMA1_CLK_ENABLE();
  37              		.loc 1 55 0
  38 0004 0022     		movs	r2, #0
  39 0006 0A4B     		ldr	r3, .L3
  40 0008 0192     		str	r2, [sp, #4]
  41 000a 196B     		ldr	r1, [r3, #48]
  42 000c 41F40011 		orr	r1, r1, #2097152
  43 0010 1963     		str	r1, [r3, #48]
  44 0012 1B6B     		ldr	r3, [r3, #48]
  45 0014 03F40013 		and	r3, r3, #2097152
  46 0018 0193     		str	r3, [sp, #4]
  47              	.LBE2:
  56:cube/nucleo-f410-bsp1/Src/dma.c **** 
  57:cube/nucleo-f410-bsp1/Src/dma.c ****   /* DMA interrupt init */
  58:cube/nucleo-f410-bsp1/Src/dma.c ****   HAL_NVIC_SetPriority(DMA1_Stream6_IRQn, 2, 0);
  48              		.loc 1 58 0
  49 001a 0221     		movs	r1, #2
  50 001c 1120     		movs	r0, #17
  51              	.LBB3:
  55:cube/nucleo-f410-bsp1/Src/dma.c **** 
  52              		.loc 1 55 0
  53 001e 019B     		ldr	r3, [sp, #4]
  54              	.LBE3:
  55              		.loc 1 58 0
  56 0020 FFF7FEFF 		bl	HAL_NVIC_SetPriority
  57              	.LVL0:
  59:cube/nucleo-f410-bsp1/Src/dma.c ****   HAL_NVIC_EnableIRQ(DMA1_Stream6_IRQn);
  58              		.loc 1 59 0
  59 0024 1120     		movs	r0, #17
  60 0026 FFF7FEFF 		bl	HAL_NVIC_EnableIRQ
  61              	.LVL1:
  60:cube/nucleo-f410-bsp1/Src/dma.c **** 
  61:cube/nucleo-f410-bsp1/Src/dma.c **** }
  62              		.loc 1 61 0
  63 002a 03B0     		add	sp, sp, #12
  64              		.cfi_def_cfa_offset 4
  65              		@ sp needed
  66 002c 5DF804FB 		ldr	pc, [sp], #4
  67              	.L4:
  68              		.align	2
  69              	.L3:
  70 0030 00380240 		.word	1073887232
  71              		.cfi_endproc
  72              	.LFE126:
  74              		.text
  75              	.Letext0:
  76              		.file 2 "/usr/include/newlib/machine/_default_types.h"
  77              		.file 3 "/usr/include/newlib/sys/_stdint.h"
  78              		.file 4 "../com/lib/CMSIS-hal/Include/core_cm4.h"
  79              		.file 5 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
  80              		.file 6 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
  81              		.file 7 "/usr/include/newlib/sys/lock.h"
  82              		.file 8 "/usr/include/newlib/sys/_types.h"
  83              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
  84              		.file 10 "/usr/include/newlib/sys/reent.h"
  85              		.file 11 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_cortex.h"
