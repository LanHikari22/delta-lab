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
  11              		.file	"gpio.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.MX_GPIO_Init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	MX_GPIO_Init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	MX_GPIO_Init:
  25              	.LFB126:
  26              		.file 1 "cube/nucleo-f410-bsp1/Src/gpio.c"
   1:cube/nucleo-f410-bsp1/Src/gpio.c **** /**
   2:cube/nucleo-f410-bsp1/Src/gpio.c ****   ******************************************************************************
   3:cube/nucleo-f410-bsp1/Src/gpio.c ****   * File Name          : gpio.c
   4:cube/nucleo-f410-bsp1/Src/gpio.c ****   * Description        : This file provides code for the configuration
   5:cube/nucleo-f410-bsp1/Src/gpio.c ****   *                      of all used GPIO pins.
   6:cube/nucleo-f410-bsp1/Src/gpio.c ****   ******************************************************************************
   7:cube/nucleo-f410-bsp1/Src/gpio.c ****   *
   8:cube/nucleo-f410-bsp1/Src/gpio.c ****   * COPYRIGHT(c) 2016 STMicroelectronics
   9:cube/nucleo-f410-bsp1/Src/gpio.c ****   *
  10:cube/nucleo-f410-bsp1/Src/gpio.c ****   * Redistribution and use in source and binary forms, with or without modification,
  11:cube/nucleo-f410-bsp1/Src/gpio.c ****   * are permitted provided that the following conditions are met:
  12:cube/nucleo-f410-bsp1/Src/gpio.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  13:cube/nucleo-f410-bsp1/Src/gpio.c ****   *      this list of conditions and the following disclaimer.
  14:cube/nucleo-f410-bsp1/Src/gpio.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  15:cube/nucleo-f410-bsp1/Src/gpio.c ****   *      this list of conditions and the following disclaimer in the documentation
  16:cube/nucleo-f410-bsp1/Src/gpio.c ****   *      and/or other materials provided with the distribution.
  17:cube/nucleo-f410-bsp1/Src/gpio.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  18:cube/nucleo-f410-bsp1/Src/gpio.c ****   *      may be used to endorse or promote products derived from this software
  19:cube/nucleo-f410-bsp1/Src/gpio.c ****   *      without specific prior written permission.
  20:cube/nucleo-f410-bsp1/Src/gpio.c ****   *
  21:cube/nucleo-f410-bsp1/Src/gpio.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:cube/nucleo-f410-bsp1/Src/gpio.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:cube/nucleo-f410-bsp1/Src/gpio.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  24:cube/nucleo-f410-bsp1/Src/gpio.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  25:cube/nucleo-f410-bsp1/Src/gpio.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  26:cube/nucleo-f410-bsp1/Src/gpio.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  27:cube/nucleo-f410-bsp1/Src/gpio.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  28:cube/nucleo-f410-bsp1/Src/gpio.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  29:cube/nucleo-f410-bsp1/Src/gpio.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  30:cube/nucleo-f410-bsp1/Src/gpio.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  31:cube/nucleo-f410-bsp1/Src/gpio.c ****   *
  32:cube/nucleo-f410-bsp1/Src/gpio.c ****   ******************************************************************************
  33:cube/nucleo-f410-bsp1/Src/gpio.c ****   */
  34:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  35:cube/nucleo-f410-bsp1/Src/gpio.c **** /* Includes ------------------------------------------------------------------*/
  36:cube/nucleo-f410-bsp1/Src/gpio.c **** #include "gpio.h"
  37:cube/nucleo-f410-bsp1/Src/gpio.c **** /* USER CODE BEGIN 0 */
  38:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  39:cube/nucleo-f410-bsp1/Src/gpio.c **** /* USER CODE END 0 */
  40:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  41:cube/nucleo-f410-bsp1/Src/gpio.c **** /*----------------------------------------------------------------------------*/
  42:cube/nucleo-f410-bsp1/Src/gpio.c **** /* Configure GPIO                                                             */
  43:cube/nucleo-f410-bsp1/Src/gpio.c **** /*----------------------------------------------------------------------------*/
  44:cube/nucleo-f410-bsp1/Src/gpio.c **** /* USER CODE BEGIN 1 */
  45:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  46:cube/nucleo-f410-bsp1/Src/gpio.c **** /* USER CODE END 1 */
  47:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  48:cube/nucleo-f410-bsp1/Src/gpio.c **** /** Configure pins as 
  49:cube/nucleo-f410-bsp1/Src/gpio.c ****         * Analog 
  50:cube/nucleo-f410-bsp1/Src/gpio.c ****         * Input 
  51:cube/nucleo-f410-bsp1/Src/gpio.c ****         * Output
  52:cube/nucleo-f410-bsp1/Src/gpio.c ****         * EVENT_OUT
  53:cube/nucleo-f410-bsp1/Src/gpio.c ****         * EXTI
  54:cube/nucleo-f410-bsp1/Src/gpio.c ****         * Free pins are configured automatically as Analog (this feature is enabled through 
  55:cube/nucleo-f410-bsp1/Src/gpio.c ****         * the Code Generation settings)
  56:cube/nucleo-f410-bsp1/Src/gpio.c **** */
  57:cube/nucleo-f410-bsp1/Src/gpio.c **** void MX_GPIO_Init(void)
  58:cube/nucleo-f410-bsp1/Src/gpio.c **** {
  27              		.loc 1 58 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 40
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  32              		.cfi_def_cfa_offset 20
  33              		.cfi_offset 4, -20
  34              		.cfi_offset 5, -16
  35              		.cfi_offset 6, -12
  36              		.cfi_offset 7, -8
  37              		.cfi_offset 14, -4
  38 0002 8BB0     		sub	sp, sp, #44
  39              		.cfi_def_cfa_offset 64
  40              	.LBB2:
  59:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  60:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitTypeDef GPIO_InitStruct;
  61:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  62:cube/nucleo-f410-bsp1/Src/gpio.c ****   /* GPIO Ports Clock Enable */
  63:cube/nucleo-f410-bsp1/Src/gpio.c ****   __GPIOC_CLK_ENABLE();
  41              		.loc 1 63 0
  42 0004 0024     		movs	r4, #0
  43 0006 314B     		ldr	r3, .L3
  44 0008 0194     		str	r4, [sp, #4]
  45 000a 1A6B     		ldr	r2, [r3, #48]
  46              	.LBE2:
  64:cube/nucleo-f410-bsp1/Src/gpio.c ****   __GPIOH_CLK_ENABLE();
  65:cube/nucleo-f410-bsp1/Src/gpio.c ****   __GPIOA_CLK_ENABLE();
  66:cube/nucleo-f410-bsp1/Src/gpio.c ****   __GPIOB_CLK_ENABLE();
  67:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  68:cube/nucleo-f410-bsp1/Src/gpio.c ****   /*Configure GPIO pin : PtPin */
  69:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pin = B1_Pin;
  70:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  71:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
  72:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);
  47              		.loc 1 72 0
  48 000c 304F     		ldr	r7, .L3+4
  73:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  74:cube/nucleo-f410-bsp1/Src/gpio.c ****   /*Configure GPIO pins : PC0 PC1 PC2 PC3 
  75:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PC4 PC5 PC6 PC7 
  76:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PC8 PC9 PC10 PC11 
  77:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PC12 */
  78:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3 
  79:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7 
  80:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_8|GPIO_PIN_9|GPIO_PIN_10|GPIO_PIN_11 
  81:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_12;
  82:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  83:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
  84:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
  85:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  86:cube/nucleo-f410-bsp1/Src/gpio.c ****   /*Configure GPIO pins : PA0 PA1 PA4 PA6 
  87:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PA7 PA8 PA9 PA10 
  88:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PA11 PA12 PA15 */
  89:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_4|GPIO_PIN_6 
  90:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9|GPIO_PIN_10 
  91:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_15;
  92:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  93:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
  94:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
  49              		.loc 1 94 0
  50 000e 314D     		ldr	r5, .L3+8
  70:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
  51              		.loc 1 70 0
  52 0010 314E     		ldr	r6, .L3+12
  53              	.LBB3:
  63:cube/nucleo-f410-bsp1/Src/gpio.c ****   __GPIOH_CLK_ENABLE();
  54              		.loc 1 63 0
  55 0012 42F00402 		orr	r2, r2, #4
  56 0016 1A63     		str	r2, [r3, #48]
  57 0018 1A6B     		ldr	r2, [r3, #48]
  58 001a 02F00402 		and	r2, r2, #4
  59 001e 0192     		str	r2, [sp, #4]
  60 0020 019A     		ldr	r2, [sp, #4]
  61              	.LBE3:
  62              	.LBB4:
  64:cube/nucleo-f410-bsp1/Src/gpio.c ****   __GPIOA_CLK_ENABLE();
  63              		.loc 1 64 0
  64 0022 0294     		str	r4, [sp, #8]
  65 0024 1A6B     		ldr	r2, [r3, #48]
  66 0026 42F08002 		orr	r2, r2, #128
  67 002a 1A63     		str	r2, [r3, #48]
  68 002c 1A6B     		ldr	r2, [r3, #48]
  69 002e 02F08002 		and	r2, r2, #128
  70 0032 0292     		str	r2, [sp, #8]
  71 0034 029A     		ldr	r2, [sp, #8]
  72              	.LBE4:
  73              	.LBB5:
  65:cube/nucleo-f410-bsp1/Src/gpio.c ****   __GPIOB_CLK_ENABLE();
  74              		.loc 1 65 0
  75 0036 0394     		str	r4, [sp, #12]
  76 0038 1A6B     		ldr	r2, [r3, #48]
  77 003a 42F00102 		orr	r2, r2, #1
  78 003e 1A63     		str	r2, [r3, #48]
  79 0040 1A6B     		ldr	r2, [r3, #48]
  80 0042 02F00102 		and	r2, r2, #1
  81 0046 0392     		str	r2, [sp, #12]
  82 0048 039A     		ldr	r2, [sp, #12]
  83              	.LBE5:
  84              	.LBB6:
  66:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  85              		.loc 1 66 0
  86 004a 0494     		str	r4, [sp, #16]
  87 004c 1A6B     		ldr	r2, [r3, #48]
  88 004e 42F00202 		orr	r2, r2, #2
  89 0052 1A63     		str	r2, [r3, #48]
  90 0054 1B6B     		ldr	r3, [r3, #48]
  91              	.LBE6:
  70:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
  92              		.loc 1 70 0
  93 0056 0696     		str	r6, [sp, #24]
  94              	.LBB7:
  66:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  95              		.loc 1 66 0
  96 0058 03F00203 		and	r3, r3, #2
  97 005c 0493     		str	r3, [sp, #16]
  98              	.LBE7:
  72:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  99              		.loc 1 72 0
 100 005e 3846     		mov	r0, r7
 101 0060 05A9     		add	r1, sp, #20
  69:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
 102              		.loc 1 69 0
 103 0062 4FF40053 		mov	r3, #8192
 104              	.LBB8:
  66:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 105              		.loc 1 66 0
 106 0066 049A     		ldr	r2, [sp, #16]
 107              	.LBE8:
  69:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
 108              		.loc 1 69 0
 109 0068 0593     		str	r3, [sp, #20]
  82:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 110              		.loc 1 82 0
 111 006a 0326     		movs	r6, #3
  71:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);
 112              		.loc 1 71 0
 113 006c 0794     		str	r4, [sp, #28]
  72:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 114              		.loc 1 72 0
 115 006e FFF7FEFF 		bl	HAL_GPIO_Init
 116              	.LVL0:
  84:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 117              		.loc 1 84 0
 118 0072 3846     		mov	r0, r7
 119 0074 05A9     		add	r1, sp, #20
  78:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7 
 120              		.loc 1 78 0
 121 0076 41F6FF73 		movw	r3, #8191
 122 007a 0593     		str	r3, [sp, #20]
  83:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
 123              		.loc 1 83 0
 124 007c 0794     		str	r4, [sp, #28]
  82:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 125              		.loc 1 82 0
 126 007e 0696     		str	r6, [sp, #24]
  84:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 127              		.loc 1 84 0
 128 0080 FFF7FEFF 		bl	HAL_GPIO_Init
 129              	.LVL1:
 130              		.loc 1 94 0
 131 0084 05A9     		add	r1, sp, #20
 132 0086 2846     		mov	r0, r5
  89:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9|GPIO_PIN_10 
 133              		.loc 1 89 0
 134 0088 49F6D373 		movw	r3, #40915
 135 008c 0593     		str	r3, [sp, #20]
  95:cube/nucleo-f410-bsp1/Src/gpio.c **** 
  96:cube/nucleo-f410-bsp1/Src/gpio.c ****   /*Configure GPIO pin : PtPin */
  97:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pin = LD2_Pin;
 136              		.loc 1 97 0
 137 008e 2027     		movs	r7, #32
  92:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 138              		.loc 1 92 0
 139 0090 0696     		str	r6, [sp, #24]
  93:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 140              		.loc 1 93 0
 141 0092 0794     		str	r4, [sp, #28]
  94:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 142              		.loc 1 94 0
 143 0094 FFF7FEFF 		bl	HAL_GPIO_Init
 144              	.LVL2:
  98:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  99:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 100:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 101:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);
 145              		.loc 1 101 0
 146 0098 05A9     		add	r1, sp, #20
 147 009a 2846     		mov	r0, r5
  98:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 148              		.loc 1 98 0
 149 009c 0123     		movs	r3, #1
 150 009e 0693     		str	r3, [sp, #24]
  99:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 151              		.loc 1 99 0
 152 00a0 0794     		str	r4, [sp, #28]
 100:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);
 153              		.loc 1 100 0
 154 00a2 0894     		str	r4, [sp, #32]
  97:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 155              		.loc 1 97 0
 156 00a4 0597     		str	r7, [sp, #20]
 157              		.loc 1 101 0
 158 00a6 FFF7FEFF 		bl	HAL_GPIO_Init
 159              	.LVL3:
 102:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 103:cube/nucleo-f410-bsp1/Src/gpio.c ****   /*Configure GPIO pins : PB0 PB1 PB2 PB10 
 104:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PB12 PB13 PB14 PB15 
 105:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PB11 PB4 PB5 PB6 
 106:cube/nucleo-f410-bsp1/Src/gpio.c ****                            PB7 PB8 PB9 */
 107:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_10 
 160              		.loc 1 107 0
 161 00aa 4FF6F773 		movw	r3, #65527
 108:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15 
 109:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_11|GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6 
 110:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9;
 111:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
 112:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 113:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
 162              		.loc 1 113 0
 163 00ae 05A9     		add	r1, sp, #20
 164 00b0 0A48     		ldr	r0, .L3+16
 107:cube/nucleo-f410-bsp1/Src/gpio.c ****                           |GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15 
 165              		.loc 1 107 0
 166 00b2 0593     		str	r3, [sp, #20]
 111:cube/nucleo-f410-bsp1/Src/gpio.c ****   GPIO_InitStruct.Pull = GPIO_NOPULL;
 167              		.loc 1 111 0
 168 00b4 0696     		str	r6, [sp, #24]
 112:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
 169              		.loc 1 112 0
 170 00b6 0794     		str	r4, [sp, #28]
 171              		.loc 1 113 0
 172 00b8 FFF7FEFF 		bl	HAL_GPIO_Init
 173              	.LVL4:
 114:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 115:cube/nucleo-f410-bsp1/Src/gpio.c ****   /*Configure GPIO pin Output Level */
 116:cube/nucleo-f410-bsp1/Src/gpio.c ****   HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);
 174              		.loc 1 116 0
 175 00bc 2246     		mov	r2, r4
 176 00be 3946     		mov	r1, r7
 177 00c0 2846     		mov	r0, r5
 178 00c2 FFF7FEFF 		bl	HAL_GPIO_WritePin
 179              	.LVL5:
 117:cube/nucleo-f410-bsp1/Src/gpio.c **** 
 118:cube/nucleo-f410-bsp1/Src/gpio.c **** }
 180              		.loc 1 118 0
 181 00c6 0BB0     		add	sp, sp, #44
 182              		.cfi_def_cfa_offset 20
 183              		@ sp needed
 184 00c8 F0BD     		pop	{r4, r5, r6, r7, pc}
 185              	.L4:
 186 00ca 00BF     		.align	2
 187              	.L3:
 188 00cc 00380240 		.word	1073887232
 189 00d0 00080240 		.word	1073874944
 190 00d4 00000240 		.word	1073872896
 191 00d8 00002110 		.word	270598144
 192 00dc 00040240 		.word	1073873920
 193              		.cfi_endproc
 194              	.LFE126:
 196              		.text
 197              	.Letext0:
 198              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 199              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 200              		.file 4 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 201              		.file 5 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 202              		.file 6 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
 203              		.file 7 "/usr/include/newlib/sys/lock.h"
 204              		.file 8 "/usr/include/newlib/sys/_types.h"
 205              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 206              		.file 10 "/usr/include/newlib/sys/reent.h"
 207              		.file 11 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_gpio.h"
