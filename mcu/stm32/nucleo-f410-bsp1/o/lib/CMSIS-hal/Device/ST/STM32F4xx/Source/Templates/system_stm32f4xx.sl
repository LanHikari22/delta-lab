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
  11              		.file	"system_stm32f4xx.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.SystemInit,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	SystemInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	SystemInit:
  25              	.LFB126:
  26              		.file 1 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c"
   1:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
   2:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   ******************************************************************************
   3:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @file    system_stm32f4xx.c
   4:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @author  MCD Application Team
   5:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @version V2.4.3
   6:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @date    22-January-2016
   7:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @brief   CMSIS Cortex-M4 Device Peripheral Access Layer System Source File.
   8:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
   9:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *   This file provides two functions and one global variable to be called from 
  10:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *   user application:
  11:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      - SystemInit(): This function is called at startup just after reset and 
  12:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                      before branch to main program. This call is made inside
  13:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                      the "startup_stm32f4xx.s" file.
  14:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
  15:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      - SystemCoreClock variable: Contains the core clock (HCLK), it can be used
  16:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                                  by the user application to setup the SysTick 
  17:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                                  timer or configure other parameters.
  18:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                                     
  19:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      - SystemCoreClockUpdate(): Updates the variable SystemCoreClock and must
  20:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                                 be called whenever the core clock is changed
  21:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                                 during program execution.
  22:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
  23:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
  24:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   ******************************************************************************
  25:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @attention
  26:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
  27:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * <h2><center>&copy; COPYRIGHT 2016 STMicroelectronics</center></h2>
  28:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
  29:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * Redistribution and use in source and binary forms, with or without modification,
  30:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * are permitted provided that the following conditions are met:
  31:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  32:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      this list of conditions and the following disclaimer.
  33:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  34:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      this list of conditions and the following disclaimer in the documentation
  35:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      and/or other materials provided with the distribution.
  36:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  37:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      may be used to endorse or promote products derived from this software
  38:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *      without specific prior written permission.
  39:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
  40:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  41:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  42:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  43:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  44:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  45:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  46:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  47:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  48:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  49:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  50:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *
  51:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   ******************************************************************************
  52:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
  53:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  54:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup CMSIS
  55:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
  56:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
  57:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  58:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup stm32f4xx_system
  59:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
  60:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */  
  61:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   
  62:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup STM32F4xx_System_Private_Includes
  63:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
  64:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
  65:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  66:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  67:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #include "stm32f4xx.h"
  68:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  69:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #if !defined  (HSE_VALUE) 
  70:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   #define HSE_VALUE    ((uint32_t)25000000) /*!< Default value of the External oscillator in Hz */
  71:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #endif /* HSE_VALUE */
  72:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  73:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #if !defined  (HSI_VALUE)
  74:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   #define HSI_VALUE    ((uint32_t)16000000) /*!< Value of the Internal oscillator in Hz*/
  75:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #endif /* HSI_VALUE */
  76:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  77:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
  78:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @}
  79:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
  80:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  81:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup STM32F4xx_System_Private_TypesDefinitions
  82:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
  83:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
  84:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  85:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
  86:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @}
  87:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
  88:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  89:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup STM32F4xx_System_Private_Defines
  90:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
  91:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
  92:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  93:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /************************* Miscellaneous Configuration ************************/
  94:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /*!< Uncomment the following line if you need to use external SRAM or SDRAM as data memory  */
  95:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #if defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx) || defined(STM32F417xx)\
  96:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****  || defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\
  97:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****  || defined(STM32F469xx) || defined(STM32F479xx)
  98:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /* #define DATA_IN_ExtSRAM */
  99:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #endif /* STM32F40xxx || STM32F41xxx || STM32F42xxx || STM32F43xxx || STM32F469xx || STM32F479xx */
 100:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****  
 101:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)\
 102:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****  || defined(STM32F446xx) || defined(STM32F469xx) || defined(STM32F479xx)
 103:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /* #define DATA_IN_ExtSDRAM */
 104:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F446xx || STM32F469xx ||
 105:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****           STM32F479xx */
 106:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 107:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /*!< Uncomment the following line if you need to relocate your vector Table in
 108:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****      Internal SRAM. */
 109:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /* #define VECT_TAB_SRAM */
 110:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #define VECT_TAB_OFFSET  0x00 /*!< Vector Table base offset field. 
 111:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****                                    This value must be a multiple of 0x200. */
 112:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /******************************************************************************/
 113:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 114:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
 115:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @}
 116:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 117:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 118:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup STM32F4xx_System_Private_Macros
 119:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
 120:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 121:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 122:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
 123:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @}
 124:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 125:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 126:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup STM32F4xx_System_Private_Variables
 127:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
 128:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 129:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* This variable is updated in three ways:
 130:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       1) by calling CMSIS function SystemCoreClockUpdate()
 131:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       2) by calling HAL API function HAL_RCC_GetHCLKFreq()
 132:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       3) each time HAL_RCC_ClockConfig() is called to configure the system clock frequency 
 133:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****          Note: If you use this function to configure the system clock; then there
 134:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****                is no need to call the 2 first functions listed above, since SystemCoreClock
 135:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****                variable is updated automatically.
 136:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 137:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   uint32_t SystemCoreClock = 16000000;
 138:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** const uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};
 139:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 140:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
 141:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @}
 142:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 143:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 144:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup STM32F4xx_System_Private_FunctionPrototypes
 145:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
 146:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 147:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 148:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #if defined (DATA_IN_ExtSRAM) || defined (DATA_IN_ExtSDRAM)
 149:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   static void SystemInit_ExtMemCtl(void); 
 150:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #endif /* DATA_IN_ExtSRAM || DATA_IN_ExtSDRAM */
 151:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 152:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
 153:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @}
 154:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 155:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 156:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /** @addtogroup STM32F4xx_System_Private_Functions
 157:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @{
 158:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 159:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 160:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
 161:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @brief  Setup the microcontroller system
 162:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         Initialize the FPU setting, vector table location and External memory 
 163:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         configuration.
 164:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @param  None
 165:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @retval None
 166:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 167:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** void SystemInit(void)
 168:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** {
  27              		.loc 1 168 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32 0000 10B4     		push	{r4}
  33              		.cfi_def_cfa_offset 4
  34              		.cfi_offset 4, -4
 169:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* FPU settings ------------------------------------------------------------*/
 170:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 171:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****     SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
  35              		.loc 1 171 0
  36 0002 1049     		ldr	r1, .L3
 172:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   #endif
 173:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Reset the RCC clock configuration to the default reset state ------------*/
 174:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Set HSION bit */
 175:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   RCC->CR |= (uint32_t)0x00000001;
  37              		.loc 1 175 0
  38 0004 104B     		ldr	r3, .L3+4
 171:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   #endif
  39              		.loc 1 171 0
  40 0006 D1F88820 		ldr	r2, [r1, #136]
 176:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 177:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Reset CFGR register */
 178:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   RCC->CFGR = 0x00000000;
 179:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 180:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Reset HSEON, CSSON and PLLON bits */
 181:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   RCC->CR &= (uint32_t)0xFEF6FFFF;
 182:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 183:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Reset PLLCFGR register */
 184:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   RCC->PLLCFGR = 0x24003010;
  41              		.loc 1 184 0
  42 000a 104C     		ldr	r4, .L3+8
 171:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   #endif
  43              		.loc 1 171 0
  44 000c 42F47002 		orr	r2, r2, #15728640
  45 0010 C1F88820 		str	r2, [r1, #136]
 175:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  46              		.loc 1 175 0
  47 0014 1A68     		ldr	r2, [r3]
 178:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  48              		.loc 1 178 0
  49 0016 0020     		movs	r0, #0
 175:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  50              		.loc 1 175 0
  51 0018 42F00102 		orr	r2, r2, #1
  52 001c 1A60     		str	r2, [r3]
 178:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  53              		.loc 1 178 0
  54 001e 9860     		str	r0, [r3, #8]
 181:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  55              		.loc 1 181 0
  56 0020 1A68     		ldr	r2, [r3]
  57 0022 22F08472 		bic	r2, r2, #17301504
  58 0026 22F48032 		bic	r2, r2, #65536
  59 002a 1A60     		str	r2, [r3]
  60              		.loc 1 184 0
  61 002c 5C60     		str	r4, [r3, #4]
 185:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 186:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Reset HSEBYP bit */
 187:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   RCC->CR &= (uint32_t)0xFFFBFFFF;
  62              		.loc 1 187 0
  63 002e 1A68     		ldr	r2, [r3]
 188:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 189:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Disable all interrupts */
 190:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   RCC->CIR = 0x00000000;
 191:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 192:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #if defined (DATA_IN_ExtSRAM) || defined (DATA_IN_ExtSDRAM)
 193:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   SystemInit_ExtMemCtl(); 
 194:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #endif /* DATA_IN_ExtSRAM || DATA_IN_ExtSDRAM */
 195:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 196:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Configure the Vector Table location add offset address ------------------*/
 197:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #ifdef VECT_TAB_SRAM
 198:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
 199:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #else
 200:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
  64              		.loc 1 200 0
  65 0030 4FF00064 		mov	r4, #134217728
 187:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  66              		.loc 1 187 0
  67 0034 22F48022 		bic	r2, r2, #262144
  68 0038 1A60     		str	r2, [r3]
 190:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
  69              		.loc 1 190 0
  70 003a D860     		str	r0, [r3, #12]
  71              		.loc 1 200 0
  72 003c 8C60     		str	r4, [r1, #8]
 201:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** #endif
 202:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** }
  73              		.loc 1 202 0
  74 003e 5DF8044B 		ldr	r4, [sp], #4
  75              		.cfi_restore 4
  76              		.cfi_def_cfa_offset 0
  77 0042 7047     		bx	lr
  78              	.L4:
  79              		.align	2
  80              	.L3:
  81 0044 00ED00E0 		.word	-536810240
  82 0048 00380240 		.word	1073887232
  83 004c 10300024 		.word	603992080
  84              		.cfi_endproc
  85              	.LFE126:
  87              		.section	.text.SystemCoreClockUpdate,"ax",%progbits
  88              		.align	1
  89              		.p2align 2,,3
  90              		.global	SystemCoreClockUpdate
  91              		.syntax unified
  92              		.thumb
  93              		.thumb_func
  94              		.fpu fpv4-sp-d16
  96              	SystemCoreClockUpdate:
  97              	.LFB127:
 203:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 204:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** /**
 205:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****    * @brief  Update SystemCoreClock variable according to Clock Register Values.
 206:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         The SystemCoreClock variable contains the core clock (HCLK), it can
 207:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         be used by the user application to setup the SysTick timer or configure
 208:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         other parameters.
 209:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *           
 210:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @note   Each time the core clock (HCLK) changes, this function must be called
 211:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         to update SystemCoreClock variable value. Otherwise, any configuration
 212:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         based on this variable will be incorrect.         
 213:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *     
 214:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @note   - The system frequency computed by this function is not the real 
 215:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *           frequency in the chip. It is calculated based on the predefined 
 216:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *           constant and the selected clock source:
 217:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *             
 218:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *           - If SYSCLK source is HSI, SystemCoreClock will contain the HSI_VALUE(*)
 219:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                                              
 220:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *           - If SYSCLK source is HSE, SystemCoreClock will contain the HSE_VALUE(**)
 221:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                          
 222:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *           - If SYSCLK source is PLL, SystemCoreClock will contain the HSE_VALUE(**) 
 223:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *             or HSI_VALUE(*) multiplied/divided by the PLL factors.
 224:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         
 225:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         (*) HSI_VALUE is a constant defined in stm32f4xx_hal_conf.h file (default value
 226:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *             16 MHz) but the real value may vary depending on the variations
 227:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *             in voltage and temperature.   
 228:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *    
 229:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         (**) HSE_VALUE is a constant defined in stm32f4xx_hal_conf.h file (its value
 230:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *              depends on the application requirements), user has to ensure that HSE_VALUE
 231:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *              is same as the real frequency of the crystal used. Otherwise, this function
 232:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *              may have wrong result.
 233:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *                
 234:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *         - The result of this function could be not correct when using fractional
 235:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *           value for HSE crystal.
 236:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   *     
 237:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @param  None
 238:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   * @retval None
 239:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   */
 240:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** void SystemCoreClockUpdate(void)
 241:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** {
  98              		.loc 1 241 0
  99              		.cfi_startproc
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103              	.LVL0:
 242:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   uint32_t tmp = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;
 243:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   
 244:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Get SYSCLK source -------------------------------------------------------*/
 245:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   tmp = RCC->CFGR & RCC_CFGR_SWS;
 104              		.loc 1 245 0
 105 0000 164A     		ldr	r2, .L13
 106 0002 9368     		ldr	r3, [r2, #8]
 107              	.LVL1:
 108 0004 03F00C03 		and	r3, r3, #12
 109              	.LVL2:
 246:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 247:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   switch (tmp)
 110              		.loc 1 247 0
 111 0008 042B     		cmp	r3, #4
 112 000a 24D0     		beq	.L11
 113 000c 082B     		cmp	r3, #8
 114 000e 0AD0     		beq	.L8
 115 0010 134B     		ldr	r3, .L13+4
 116              	.LVL3:
 117              	.L7:
 248:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   {
 249:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****     case 0x00:  /* HSI used as system clock source */
 250:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       SystemCoreClock = HSI_VALUE;
 251:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       break;
 252:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****     case 0x04:  /* HSE used as system clock source */
 253:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       SystemCoreClock = HSE_VALUE;
 254:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       break;
 255:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****     case 0x08:  /* PLL used as system clock source */
 256:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 257:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLL_M) * PLL_N
 258:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****          SYSCLK = PLL_VCO / PLL_P
 259:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****          */    
 260:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) >> 22;
 261:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 262:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       
 263:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       if (pllsource != 0)
 264:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       {
 265:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****         /* HSE used as PLL clock source */
 266:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****         pllvco = (HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
 267:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       }
 268:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       else
 269:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       {
 270:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****         /* HSI used as PLL clock source */
 271:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****         pllvco = (HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
 272:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       }
 273:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c **** 
 274:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       pllp = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >>16) + 1 ) *2;
 275:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       SystemCoreClock = pllvco/pllp;
 276:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       break;
 277:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****     default:
 278:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       SystemCoreClock = HSI_VALUE;
 279:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       break;
 280:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   }
 281:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Compute HCLK frequency --------------------------------------------------*/
 282:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* Get HCLK prescaler */
 283:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
 118              		.loc 1 283 0
 119 0012 124A     		ldr	r2, .L13
 120 0014 1348     		ldr	r0, .L13+8
 121 0016 9268     		ldr	r2, [r2, #8]
 122              	.LVL4:
 284:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* HCLK frequency */
 285:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   SystemCoreClock >>= tmp;
 123              		.loc 1 285 0
 124 0018 1349     		ldr	r1, .L13+12
 283:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   /* HCLK frequency */
 125              		.loc 1 283 0
 126 001a C2F30312 		ubfx	r2, r2, #4, #4
 127              	.LVL5:
 128 001e 825C     		ldrb	r2, [r0, r2]	@ zero_extendqisi2
 129              		.loc 1 285 0
 130 0020 D340     		lsrs	r3, r3, r2
 131 0022 0B60     		str	r3, [r1]
 132 0024 7047     		bx	lr
 133              	.LVL6:
 134              	.L8:
 260:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 135              		.loc 1 260 0
 136 0026 5068     		ldr	r0, [r2, #4]
 137              	.LVL7:
 261:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       
 138              		.loc 1 261 0
 139 0028 5168     		ldr	r1, [r2, #4]
 266:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       }
 140              		.loc 1 266 0
 141 002a 5268     		ldr	r2, [r2, #4]
 263:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       {
 142              		.loc 1 263 0
 143 002c 4302     		lsls	r3, r0, #9
 144              	.LVL8:
 271:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       }
 145              		.loc 1 271 0
 146 002e C2F38812 		ubfx	r2, r2, #6, #9
 261:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       
 147              		.loc 1 261 0
 148 0032 01F03F01 		and	r1, r1, #63
 149              	.LVL9:
 266:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       }
 150              		.loc 1 266 0
 151 0036 4CBF     		ite	mi
 152 0038 0C4B     		ldrmi	r3, .L13+16
 271:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       }
 153              		.loc 1 271 0
 154 003a 094B     		ldrpl	r3, .L13+4
 155 003c B3FBF1F3 		udiv	r3, r3, r1
 156 0040 03FB02F3 		mul	r3, r3, r2
 157              	.LVL10:
 274:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       SystemCoreClock = pllvco/pllp;
 158              		.loc 1 274 0
 159 0044 054A     		ldr	r2, .L13
 160 0046 5268     		ldr	r2, [r2, #4]
 161              	.LVL11:
 162 0048 C2F30142 		ubfx	r2, r2, #16, #2
 163              	.LVL12:
 164 004c 0132     		adds	r2, r2, #1
 165 004e 5200     		lsls	r2, r2, #1
 275:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****       break;
 166              		.loc 1 275 0
 167 0050 B3FBF2F3 		udiv	r3, r3, r2
 168              	.LVL13:
 276:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****     default:
 169              		.loc 1 276 0
 170 0054 DDE7     		b	.L7
 171              	.LVL14:
 172              	.L11:
 247:../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c ****   {
 173              		.loc 1 247 0
 174 0056 054B     		ldr	r3, .L13+16
 175              	.LVL15:
 176 0058 DBE7     		b	.L7
 177              	.L14:
 178 005a 00BF     		.align	2
 179              	.L13:
 180 005c 00380240 		.word	1073887232
 181 0060 0024F400 		.word	16000000
 182 0064 00000000 		.word	.LANCHOR1
 183 0068 00000000 		.word	.LANCHOR0
 184 006c 00127A00 		.word	8000000
 185              		.cfi_endproc
 186              	.LFE127:
 188              		.global	AHBPrescTable
 189              		.global	SystemCoreClock
 190              		.section	.data.SystemCoreClock,"aw",%progbits
 191              		.align	2
 192              		.set	.LANCHOR0,. + 0
 195              	SystemCoreClock:
 196 0000 0024F400 		.word	16000000
 197              		.section	.rodata.AHBPrescTable,"a",%progbits
 198              		.align	2
 199              		.set	.LANCHOR1,. + 0
 202              	AHBPrescTable:
 203 0000 00       		.byte	0
 204 0001 00       		.byte	0
 205 0002 00       		.byte	0
 206 0003 00       		.byte	0
 207 0004 00       		.byte	0
 208 0005 00       		.byte	0
 209 0006 00       		.byte	0
 210 0007 00       		.byte	0
 211 0008 01       		.byte	1
 212 0009 02       		.byte	2
 213 000a 03       		.byte	3
 214 000b 04       		.byte	4
 215 000c 06       		.byte	6
 216 000d 07       		.byte	7
 217 000e 08       		.byte	8
 218 000f 09       		.byte	9
 219              		.text
 220              	.Letext0:
 221              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 222              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 223              		.file 4 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 224              		.file 5 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 225              		.file 6 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
 226              		.file 7 "/usr/include/newlib/sys/lock.h"
 227              		.file 8 "/usr/include/newlib/sys/_types.h"
 228              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 229              		.file 10 "/usr/include/newlib/sys/reent.h"
