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
  11              		.file	"cube_main.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.SystemClock_Config,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	SystemClock_Config
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	SystemClock_Config:
  25              	.LFB127:
  26              		.file 1 "cube/nucleo-f410-bsp1/Src/cube_main.c"
   1:cube/nucleo-f410-bsp1/Src/cube_main.c **** /**
   2:cube/nucleo-f410-bsp1/Src/cube_main.c ****   ******************************************************************************
   3:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * File Name          : main.c
   4:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * Description        : Main program body
   5:cube/nucleo-f410-bsp1/Src/cube_main.c ****   ******************************************************************************
   6:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *
   7:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * COPYRIGHT(c) 2016 STMicroelectronics
   8:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *
   9:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * Redistribution and use in source and binary forms, with or without modification,
  10:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * are permitted provided that the following conditions are met:
  11:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  12:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *      this list of conditions and the following disclaimer.
  13:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  14:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *      this list of conditions and the following disclaimer in the documentation
  15:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *      and/or other materials provided with the distribution.
  16:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  17:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *      may be used to endorse or promote products derived from this software
  18:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *      without specific prior written permission.
  19:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *
  20:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  21:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  22:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  23:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  24:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  25:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  26:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  27:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  28:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  29:cube/nucleo-f410-bsp1/Src/cube_main.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  30:cube/nucleo-f410-bsp1/Src/cube_main.c ****   *
  31:cube/nucleo-f410-bsp1/Src/cube_main.c ****   ******************************************************************************
  32:cube/nucleo-f410-bsp1/Src/cube_main.c ****   */
  33:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* Includes ------------------------------------------------------------------*/
  34:cube/nucleo-f410-bsp1/Src/cube_main.c **** #include "stm32f4xx_hal.h"
  35:cube/nucleo-f410-bsp1/Src/cube_main.c **** #include "dma.h"
  36:cube/nucleo-f410-bsp1/Src/cube_main.c **** #include "rtc.h"
  37:cube/nucleo-f410-bsp1/Src/cube_main.c **** #include "usart.h"
  38:cube/nucleo-f410-bsp1/Src/cube_main.c **** #include "gpio.h"
  39:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  40:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE BEGIN Includes */
  41:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  42:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE END Includes */
  43:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  44:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* Private variables ---------------------------------------------------------*/
  45:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  46:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE BEGIN PV */
  47:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* Private variables ---------------------------------------------------------*/
  48:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  49:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE END PV */
  50:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  51:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* Private function prototypes -----------------------------------------------*/
  52:cube/nucleo-f410-bsp1/Src/cube_main.c **** void SystemClock_Config(void);
  53:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  54:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE BEGIN PFP */
  55:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* Private function prototypes -----------------------------------------------*/
  56:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  57:cube/nucleo-f410-bsp1/Src/cube_main.c **** void main1(void);
  58:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE END PFP */
  59:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  60:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE BEGIN 0 */
  61:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  62:cube/nucleo-f410-bsp1/Src/cube_main.c **** /* USER CODE END 0 */
  63:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  64:cube/nucleo-f410-bsp1/Src/cube_main.c **** __weak
  65:cube/nucleo-f410-bsp1/Src/cube_main.c **** int main(void)
  66:cube/nucleo-f410-bsp1/Src/cube_main.c **** {
  67:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  68:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE BEGIN 1 */
  69:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  70:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE END 1 */
  71:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  72:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* MCU Configuration----------------------------------------------------------*/
  73:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  74:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  75:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_Init();
  76:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  77:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* Configure the system clock */
  78:cube/nucleo-f410-bsp1/Src/cube_main.c ****   SystemClock_Config();
  79:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  80:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* Initialize all configured peripherals */
  81:cube/nucleo-f410-bsp1/Src/cube_main.c ****   MX_GPIO_Init();
  82:cube/nucleo-f410-bsp1/Src/cube_main.c ****   MX_DMA_Init();
  83:cube/nucleo-f410-bsp1/Src/cube_main.c ****   MX_RTC_Init();
  84:cube/nucleo-f410-bsp1/Src/cube_main.c ****   MX_USART2_UART_Init();
  85:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  86:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE BEGIN 2 */
  87:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  88:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE END 2 */
  89:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  90:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* Infinite loop */
  91:cube/nucleo-f410-bsp1/Src/cube_main.c **** main1();
  92:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE BEGIN WHILE */
  93:cube/nucleo-f410-bsp1/Src/cube_main.c ****   while (1)
  94:cube/nucleo-f410-bsp1/Src/cube_main.c ****   {
  95:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE END WHILE */
  96:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  97:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE BEGIN 3 */
  98:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  99:cube/nucleo-f410-bsp1/Src/cube_main.c ****   }
 100:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE END 3 */
 101:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 102:cube/nucleo-f410-bsp1/Src/cube_main.c **** }
 103:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 104:cube/nucleo-f410-bsp1/Src/cube_main.c **** /** System Clock Configuration
 105:cube/nucleo-f410-bsp1/Src/cube_main.c **** */
 106:cube/nucleo-f410-bsp1/Src/cube_main.c **** void SystemClock_Config(void)
 107:cube/nucleo-f410-bsp1/Src/cube_main.c **** {
  27              		.loc 1 107 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 104
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  32              		.cfi_def_cfa_offset 20
  33              		.cfi_offset 4, -20
  34              		.cfi_offset 5, -16
  35              		.cfi_offset 6, -12
  36              		.cfi_offset 7, -8
  37              		.cfi_offset 14, -4
  38 0002 9BB0     		sub	sp, sp, #108
  39              		.cfi_def_cfa_offset 128
  40              	.LBB2:
 108:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 109:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitTypeDef RCC_OscInitStruct;
 110:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitTypeDef RCC_ClkInitStruct;
 111:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_PeriphCLKInitTypeDef PeriphClkInitStruct;
 112:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 113:cube/nucleo-f410-bsp1/Src/cube_main.c ****   __PWR_CLK_ENABLE();
  41              		.loc 1 113 0
  42 0004 0025     		movs	r5, #0
  43 0006 2A4A     		ldr	r2, .L3
  44 0008 0095     		str	r5, [sp]
  45 000a 116C     		ldr	r1, [r2, #64]
  46              	.LBE2:
  47              	.LBB3:
 114:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 115:cube/nucleo-f410-bsp1/Src/cube_main.c ****   __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  48              		.loc 1 115 0
  49 000c 294B     		ldr	r3, .L3+4
  50              	.LBE3:
  51              	.LBB4:
 113:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  52              		.loc 1 113 0
  53 000e 41F08051 		orr	r1, r1, #268435456
  54 0012 1164     		str	r1, [r2, #64]
  55 0014 126C     		ldr	r2, [r2, #64]
  56 0016 02F08052 		and	r2, r2, #268435456
  57 001a 0092     		str	r2, [sp]
  58 001c 009A     		ldr	r2, [sp]
  59              	.LBE4:
  60              	.LBB5:
  61              		.loc 1 115 0
  62 001e 0195     		str	r5, [sp, #4]
  63 0020 1A68     		ldr	r2, [r3]
  64 0022 42F44042 		orr	r2, r2, #49152
  65 0026 1A60     		str	r2, [r3]
  66 0028 1B68     		ldr	r3, [r3]
  67 002a 03F44043 		and	r3, r3, #49152
  68 002e 0193     		str	r3, [sp, #4]
  69              	.LBE5:
 116:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 117:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE|RCC_OSCILLATORTYPE_LSE;
 118:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
 119:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  70              		.loc 1 119 0
  71 0030 4FF0010E 		mov	lr, #1
 120:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  72              		.loc 1 120 0
  73 0034 0224     		movs	r4, #2
 121:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
 122:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLM = 8;
 123:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLN = 400;
 124:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  74              		.loc 1 124 0
  75 0036 0426     		movs	r6, #4
 117:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  76              		.loc 1 117 0
  77 0038 0523     		movs	r3, #5
 122:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLN = 400;
  78              		.loc 1 122 0
  79 003a 0821     		movs	r1, #8
 123:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  80              		.loc 1 123 0
  81 003c 4FF4C872 		mov	r2, #400
  82              	.LBB6:
 115:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
  83              		.loc 1 115 0
  84 0040 0198     		ldr	r0, [sp, #4]
  85              	.LBE6:
 119:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  86              		.loc 1 119 0
  87 0042 CDF83CE0 		str	lr, [sp, #60]
 121:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLM = 8;
  88              		.loc 1 121 0
  89 0046 4FF48007 		mov	r7, #4194304
 125:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLQ = 4;
 126:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLR = 2;
 127:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_RCC_OscConfig(&RCC_OscInitStruct);
  90              		.loc 1 127 0
  91 004a 0DA8     		add	r0, sp, #52
 117:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  92              		.loc 1 117 0
  93 004c 0D93     		str	r3, [sp, #52]
 118:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  94              		.loc 1 118 0
  95 004e 0E93     		str	r3, [sp, #56]
 122:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLN = 400;
  96              		.loc 1 122 0
  97 0050 1591     		str	r1, [sp, #84]
 123:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  98              		.loc 1 123 0
  99 0052 1692     		str	r2, [sp, #88]
 120:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
 100              		.loc 1 120 0
 101 0054 1394     		str	r4, [sp, #76]
 126:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_RCC_OscConfig(&RCC_OscInitStruct);
 102              		.loc 1 126 0
 103 0056 1994     		str	r4, [sp, #100]
 121:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLM = 8;
 104              		.loc 1 121 0
 105 0058 1497     		str	r7, [sp, #80]
 124:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLQ = 4;
 106              		.loc 1 124 0
 107 005a 1796     		str	r6, [sp, #92]
 125:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_OscInitStruct.PLL.PLLR = 2;
 108              		.loc 1 125 0
 109 005c 1896     		str	r6, [sp, #96]
 110              		.loc 1 127 0
 111 005e FFF7FEFF 		bl	HAL_RCC_OscConfig
 112              	.LVL0:
 128:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 129:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
 130:cube/nucleo-f410-bsp1/Src/cube_main.c ****                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
 131:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
 132:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 133:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
 134:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
 135:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2);
 113              		.loc 1 135 0
 114 0062 2146     		mov	r1, r4
 129:cube/nucleo-f410-bsp1/Src/cube_main.c ****                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
 115              		.loc 1 129 0
 116 0064 0F22     		movs	r2, #15
 133:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
 117              		.loc 1 133 0
 118 0066 4FF48053 		mov	r3, #4096
 119              		.loc 1 135 0
 120 006a 02A8     		add	r0, sp, #8
 129:cube/nucleo-f410-bsp1/Src/cube_main.c ****                               |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
 121              		.loc 1 129 0
 122 006c 0292     		str	r2, [sp, #8]
 133:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
 123              		.loc 1 133 0
 124 006e 0593     		str	r3, [sp, #20]
 131:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 125              		.loc 1 131 0
 126 0070 0394     		str	r4, [sp, #12]
 132:cube/nucleo-f410-bsp1/Src/cube_main.c ****   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
 127              		.loc 1 132 0
 128 0072 0495     		str	r5, [sp, #16]
 134:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2);
 129              		.loc 1 134 0
 130 0074 0695     		str	r5, [sp, #24]
 131              		.loc 1 135 0
 132 0076 FFF7FEFF 		bl	HAL_RCC_ClockConfig
 133              	.LVL1:
 136:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 137:cube/nucleo-f410-bsp1/Src/cube_main.c ****   PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_RTC;
 138:cube/nucleo-f410-bsp1/Src/cube_main.c ****   PeriphClkInitStruct.RTCClockSelection = RCC_RTCCLKSOURCE_LSE;
 134              		.loc 1 138 0
 135 007a 4FF48073 		mov	r3, #256
 139:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct);
 136              		.loc 1 139 0
 137 007e 07A8     		add	r0, sp, #28
 138:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct);
 138              		.loc 1 138 0
 139 0080 0993     		str	r3, [sp, #36]
 137:cube/nucleo-f410-bsp1/Src/cube_main.c ****   PeriphClkInitStruct.RTCClockSelection = RCC_RTCCLKSOURCE_LSE;
 140              		.loc 1 137 0
 141 0082 0796     		str	r6, [sp, #28]
 142              		.loc 1 139 0
 143 0084 FFF7FEFF 		bl	HAL_RCCEx_PeriphCLKConfig
 144              	.LVL2:
 140:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 141:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);
 145              		.loc 1 141 0
 146 0088 FFF7FEFF 		bl	HAL_RCC_GetHCLKFreq
 147              	.LVL3:
 148 008c 0A4B     		ldr	r3, .L3+8
 149 008e A3FB0030 		umull	r3, r0, r3, r0
 150 0092 8009     		lsrs	r0, r0, #6
 151 0094 FFF7FEFF 		bl	HAL_SYSTICK_Config
 152              	.LVL4:
 142:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 143:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);
 153              		.loc 1 143 0
 154 0098 3046     		mov	r0, r6
 155 009a FFF7FEFF 		bl	HAL_SYSTICK_CLKSourceConfig
 156              	.LVL5:
 144:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 145:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* SysTick_IRQn interrupt configuration */
 146:cube/nucleo-f410-bsp1/Src/cube_main.c ****   HAL_NVIC_SetPriority(SysTick_IRQn, 2, 0);
 157              		.loc 1 146 0
 158 009e 2A46     		mov	r2, r5
 159 00a0 2146     		mov	r1, r4
 160 00a2 4FF0FF30 		mov	r0, #-1
 161 00a6 FFF7FEFF 		bl	HAL_NVIC_SetPriority
 162              	.LVL6:
 147:cube/nucleo-f410-bsp1/Src/cube_main.c **** }
 163              		.loc 1 147 0
 164 00aa 1BB0     		add	sp, sp, #108
 165              		.cfi_def_cfa_offset 20
 166              		@ sp needed
 167 00ac F0BD     		pop	{r4, r5, r6, r7, pc}
 168              	.L4:
 169 00ae 00BF     		.align	2
 170              	.L3:
 171 00b0 00380240 		.word	1073887232
 172 00b4 00700040 		.word	1073770496
 173 00b8 D34D6210 		.word	274877907
 174              		.cfi_endproc
 175              	.LFE127:
 177              		.section	.text.startup.main,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.weak	main
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 186              	main:
 187              	.LFB126:
  66:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 188              		.loc 1 66 0
 189              		.cfi_startproc
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 08B5     		push	{r3, lr}
 193              		.cfi_def_cfa_offset 8
 194              		.cfi_offset 3, -8
 195              		.cfi_offset 14, -4
  75:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 196              		.loc 1 75 0
 197 0002 FFF7FEFF 		bl	HAL_Init
 198              	.LVL7:
  78:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 199              		.loc 1 78 0
 200 0006 FFF7FEFF 		bl	SystemClock_Config
 201              	.LVL8:
  81:cube/nucleo-f410-bsp1/Src/cube_main.c ****   MX_DMA_Init();
 202              		.loc 1 81 0
 203 000a FFF7FEFF 		bl	MX_GPIO_Init
 204              	.LVL9:
  82:cube/nucleo-f410-bsp1/Src/cube_main.c ****   MX_RTC_Init();
 205              		.loc 1 82 0
 206 000e FFF7FEFF 		bl	MX_DMA_Init
 207              	.LVL10:
  83:cube/nucleo-f410-bsp1/Src/cube_main.c ****   MX_USART2_UART_Init();
 208              		.loc 1 83 0
 209 0012 FFF7FEFF 		bl	MX_RTC_Init
 210              	.LVL11:
  84:cube/nucleo-f410-bsp1/Src/cube_main.c **** 
 211              		.loc 1 84 0
 212 0016 FFF7FEFF 		bl	MX_USART2_UART_Init
 213              	.LVL12:
  91:cube/nucleo-f410-bsp1/Src/cube_main.c ****   /* USER CODE BEGIN WHILE */
 214              		.loc 1 91 0
 215 001a FFF7FEFF 		bl	main1
 216              	.LVL13:
 217              	.L6:
 218 001e FEE7     		b	.L6
 219              		.cfi_endproc
 220              	.LFE126:
 222              		.text
 223              	.Letext0:
 224              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 225              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 226              		.file 4 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 227              		.file 5 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 228              		.file 6 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
 229              		.file 7 "/usr/include/newlib/sys/lock.h"
 230              		.file 8 "/usr/include/newlib/sys/_types.h"
 231              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 232              		.file 10 "/usr/include/newlib/sys/reent.h"
 233              		.file 11 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
 234              		.file 12 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_rcc_ex.h"
 235              		.file 13 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_rcc.h"
 236              		.file 14 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_dma.h"
 237              		.file 15 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_rtc.h"
 238              		.file 16 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_uart.h"
 239              		.file 17 "cube/nucleo-f410-bsp1/Inc/rtc.h"
 240              		.file 18 "cube/nucleo-f410-bsp1/Inc/usart.h"
 241              		.file 19 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_cortex.h"
 242              		.file 20 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal.h"
 243              		.file 21 "cube/nucleo-f410-bsp1/Inc/gpio.h"
 244              		.file 22 "cube/nucleo-f410-bsp1/Inc/dma.h"
