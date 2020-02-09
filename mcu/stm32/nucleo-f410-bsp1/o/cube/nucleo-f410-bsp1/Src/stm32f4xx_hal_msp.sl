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
  11              		.file	"stm32f4xx_hal_msp.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.HAL_MspInit,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	HAL_MspInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	HAL_MspInit:
  25              	.LFB126:
  26              		.file 1 "cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c"
   1:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** /**tttttttttt
   2:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   ******************************************************************************
   3:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * File Name          : stm32f4xx_hal_msp.c
   4:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * Description        : This file provides code for the MSP Initialization 
   5:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *                      and de-Initialization codes.
   6:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   ******************************************************************************
   7:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *
   8:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * COPYRIGHT(c) 2016 STMicroelectronics
   9:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *
  10:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * Redistribution and use in source and binary forms, with or without modification,
  11:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * are permitted provided that the following conditions are met:
  12:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  13:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *      this list of conditions and the following disclaimer.
  14:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  15:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *      this list of conditions and the following disclaimer in the documentation
  16:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *      and/or other materials provided with the distribution.
  17:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  18:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *      may be used to endorse or promote products derived from this software
  19:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *      without specific prior written permission.
  20:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *
  21:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  24:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  25:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  26:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  27:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  28:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  29:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  30:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  31:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   *
  32:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   ******************************************************************************
  33:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   */
  34:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** /* Includes ------------------------------------------------------------------*/
  35:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** #include "stm32f4xx_hal.h"
  36:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  37:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** /* USER CODE BEGIN 0 */
  38:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  39:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** /* USER CODE END 0 */
  40:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  41:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** /**
  42:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   * Initializes the Global MSP.
  43:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   */
  44:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** void HAL_MspInit(void)
  45:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** {
  27              		.loc 1 45 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 08B5     		push	{r3, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 3, -8
  34              		.cfi_offset 14, -4
  46:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   /* USER CODE BEGIN MspInit 0 */
  47:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  48:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   /* USER CODE END MspInit 0 */
  49:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  50:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
  35              		.loc 1 50 0
  36 0002 0320     		movs	r0, #3
  37 0004 FFF7FEFF 		bl	HAL_NVIC_SetPriorityGrouping
  38              	.LVL0:
  51:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  52:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   /* System interrupt init*/
  53:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   /* SysTick_IRQn interrupt configuration */
  54:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   HAL_NVIC_SetPriority(SysTick_IRQn, 2, 0);
  39              		.loc 1 54 0
  40 0008 0022     		movs	r2, #0
  41 000a 0221     		movs	r1, #2
  42 000c 4FF0FF30 		mov	r0, #-1
  55:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  56:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   /* USER CODE BEGIN MspInit 1 */
  57:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  58:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c ****   /* USER CODE END MspInit 1 */
  59:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** }
  43              		.loc 1 59 0
  44 0010 BDE80840 		pop	{r3, lr}
  45              		.cfi_restore 14
  46              		.cfi_restore 3
  47              		.cfi_def_cfa_offset 0
  54:cube/nucleo-f410-bsp1/Src/stm32f4xx_hal_msp.c **** 
  48              		.loc 1 54 0
  49 0014 FFF7FEBF 		b	HAL_NVIC_SetPriority
  50              	.LVL1:
  51              		.cfi_endproc
  52              	.LFE126:
  54              		.text
  55              	.Letext0:
  56              		.file 2 "/usr/include/newlib/machine/_default_types.h"
  57              		.file 3 "/usr/include/newlib/sys/_stdint.h"
  58              		.file 4 "../com/lib/CMSIS-hal/Include/core_cm4.h"
  59              		.file 5 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
  60              		.file 6 "/usr/include/newlib/sys/lock.h"
  61              		.file 7 "/usr/include/newlib/sys/_types.h"
  62              		.file 8 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
  63              		.file 9 "/usr/include/newlib/sys/reent.h"
  64              		.file 10 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_cortex.h"
  65              		.file 11 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
