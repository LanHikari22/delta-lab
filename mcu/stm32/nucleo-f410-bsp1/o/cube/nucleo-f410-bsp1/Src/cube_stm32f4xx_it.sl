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
  11              		.file	"cube_stm32f4xx_it.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.SysTick_Handler,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.weak	SysTick_Handler
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	SysTick_Handler:
  25              	.LFB126:
  26              		.file 1 "cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c"
   1:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /**
   2:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   ******************************************************************************
   3:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * @file    stm32f4xx_it.c
   4:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * @brief   Interrupt Service Routines.
   5:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   ******************************************************************************
   6:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *
   7:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * COPYRIGHT(c) 2016 STMicroelectronics
   8:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *
   9:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * Redistribution and use in source and binary forms, with or without modification,
  10:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * are permitted provided that the following conditions are met:
  11:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  12:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *      this list of conditions and the following disclaimer.
  13:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  14:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *      this list of conditions and the following disclaimer in the documentation
  15:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *      and/or other materials provided with the distribution.
  16:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  17:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *      may be used to endorse or promote products derived from this software
  18:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *      without specific prior written permission.
  19:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *
  20:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  21:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  22:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  23:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  24:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  25:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  26:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  27:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  28:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  29:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  30:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   *
  31:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   ******************************************************************************
  32:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   */
  33:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* Includes ------------------------------------------------------------------*/
  34:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** #include "stm32f4xx_hal.h"
  35:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** #include "stm32f4xx.h"
  36:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** #include "stm32f4xx_it.h"
  37:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  38:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* USER CODE BEGIN 0 */
  39:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  40:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** #include "stm32f4xx-irqs.h"
  41:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* USER CODE END 0 */
  42:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  43:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* External variables --------------------------------------------------------*/
  44:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** extern DMA_HandleTypeDef hdma_usart2_tx;
  45:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** extern UART_HandleTypeDef huart2;
  46:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  47:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /******************************************************************************/
  48:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /*            Cortex-M4 Processor Interruption and Exception Handlers         */ 
  49:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /******************************************************************************/
  50:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  51:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /**
  52:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** * @brief This function handles System tick timer.
  53:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** */
  54:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** __weak
  55:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** void SysTick_Handler(void)
  56:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** {
  27              		.loc 1 56 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 08B5     		push	{r3, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 3, -8
  34              		.cfi_offset 14, -4
  57:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE BEGIN SysTick_IRQn 0 */
  58:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  59:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE END SysTick_IRQn 0 */
  60:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   HAL_IncTick();
  35              		.loc 1 60 0
  36 0002 FFF7FEFF 		bl	HAL_IncTick
  37              	.LVL0:
  61:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   HAL_SYSTICK_IRQHandler();
  62:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE BEGIN SysTick_IRQn 1 */
  63:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  64:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE END SysTick_IRQn 1 */
  65:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** }
  38              		.loc 1 65 0
  39 0006 BDE80840 		pop	{r3, lr}
  40              		.cfi_restore 14
  41              		.cfi_restore 3
  42              		.cfi_def_cfa_offset 0
  61:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   HAL_SYSTICK_IRQHandler();
  43              		.loc 1 61 0
  44 000a FFF7FEBF 		b	HAL_SYSTICK_IRQHandler
  45              	.LVL1:
  46              		.cfi_endproc
  47              	.LFE126:
  49 000e 00BF     		.section	.text.Vector84,"ax",%progbits
  50              		.align	1
  51              		.p2align 2,,3
  52              		.weak	Vector84
  53              		.syntax unified
  54              		.thumb
  55              		.thumb_func
  56              		.fpu fpv4-sp-d16
  58              	Vector84:
  59              	.LFB127:
  66:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  67:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /******************************************************************************/
  68:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* STM32F4xx Peripheral Interrupt Handlers                                    */
  69:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* Add here the Interrupt Handlers for the used peripherals.                  */
  70:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* For the available peripheral interrupt handler names,                      */
  71:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /* please refer to the startup file (startup_stm32f4xx.s).                    */
  72:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /******************************************************************************/
  73:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  74:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /**
  75:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** * @brief This function handles DMA1 stream6 global interrupt.
  76:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** */
  77:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** __weak
  78:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** void DMA1_Stream6_IRQHandler(void)
  79:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** {
  60              		.loc 1 79 0
  61              		.cfi_startproc
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  80:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE BEGIN DMA1_Stream6_IRQn 0 */
  81:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  82:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE END DMA1_Stream6_IRQn 0 */
  83:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   HAL_DMA_IRQHandler(&hdma_usart2_tx);
  65              		.loc 1 83 0
  66 0000 0148     		ldr	r0, .L4
  67 0002 FFF7FEBF 		b	HAL_DMA_IRQHandler
  68              	.LVL2:
  69              	.L5:
  70 0006 00BF     		.align	2
  71              	.L4:
  72 0008 00000000 		.word	hdma_usart2_tx
  73              		.cfi_endproc
  74              	.LFE127:
  76              		.section	.text.VectorD8,"ax",%progbits
  77              		.align	1
  78              		.p2align 2,,3
  79              		.weak	VectorD8
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv4-sp-d16
  85              	VectorD8:
  86              	.LFB128:
  84:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE BEGIN DMA1_Stream6_IRQn 1 */
  85:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  86:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE END DMA1_Stream6_IRQn 1 */
  87:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** }
  88:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  89:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** /**
  90:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** * @brief This function handles USART2 global interrupt.
  91:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** */
  92:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** __weak
  93:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** void USART2_IRQHandler(void)
  94:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** {
  87              		.loc 1 94 0
  88              		.cfi_startproc
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  95:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE BEGIN USART2_IRQn 0 */
  96:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c **** 
  97:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   /* USER CODE END USART2_IRQn 0 */
  98:cube/nucleo-f410-bsp1/Src/cube_stm32f4xx_it.c ****   HAL_UART_IRQHandler(&huart2);
  92              		.loc 1 98 0
  93 0000 0148     		ldr	r0, .L7
  94 0002 FFF7FEBF 		b	HAL_UART_IRQHandler
  95              	.LVL3:
  96              	.L8:
  97 0006 00BF     		.align	2
  98              	.L7:
  99 0008 00000000 		.word	huart2
 100              		.cfi_endproc
 101              	.LFE128:
 103              		.text
 104              	.Letext0:
 105              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 106              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 107              		.file 4 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 108              		.file 5 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 109              		.file 6 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
 110              		.file 7 "/usr/include/newlib/sys/lock.h"
 111              		.file 8 "/usr/include/newlib/sys/_types.h"
 112              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 113              		.file 10 "/usr/include/newlib/sys/reent.h"
 114              		.file 11 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
 115              		.file 12 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_dma.h"
 116              		.file 13 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_uart.h"
 117              		.file 14 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal.h"
 118              		.file 15 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_cortex.h"
