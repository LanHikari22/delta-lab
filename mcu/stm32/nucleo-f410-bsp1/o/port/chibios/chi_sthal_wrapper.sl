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
  11              		.file	"chi_sthal_wrapper.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.__late_init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	__late_init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	__late_init:
  25              	.LFB233:
  26              		.file 1 "port/chibios/chi_sthal_wrapper.c"
   1:port/chibios/chi_sthal_wrapper.c **** #include "ch.h"
   2:port/chibios/chi_sthal_wrapper.c **** 
   3:port/chibios/chi_sthal_wrapper.c **** // __late_init calls STM HAL SystemInit from startup code
   4:port/chibios/chi_sthal_wrapper.c **** 
   5:port/chibios/chi_sthal_wrapper.c **** void SystemInit(void);
   6:port/chibios/chi_sthal_wrapper.c **** 
   7:port/chibios/chi_sthal_wrapper.c **** void __late_init(void) {
  27              		.loc 1 7 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
   8:port/chibios/chi_sthal_wrapper.c **** 	// call STM HAL SystemInit()
   9:port/chibios/chi_sthal_wrapper.c **** 	SystemInit();
  32              		.loc 1 9 0
  33 0000 FFF7FEBF 		b	SystemInit
  34              	.LVL0:
  35              		.cfi_endproc
  36              	.LFE233:
  38              		.section	.text.SysTick_Handler,"ax",%progbits
  39              		.align	1
  40              		.p2align 2,,3
  41              		.global	SysTick_Handler
  42              		.syntax unified
  43              		.thumb
  44              		.thumb_func
  45              		.fpu fpv4-sp-d16
  47              	SysTick_Handler:
  48              	.LFB234:
  10:port/chibios/chi_sthal_wrapper.c **** }
  11:port/chibios/chi_sthal_wrapper.c **** 
  12:port/chibios/chi_sthal_wrapper.c **** // SysTick_Handler required for Chibios in classic (non-tickless) mode
  13:port/chibios/chi_sthal_wrapper.c **** // Call STM HAL_ functions from here (if required)
  14:port/chibios/chi_sthal_wrapper.c **** 
  15:port/chibios/chi_sthal_wrapper.c **** void SysTick_Handler(void)
  16:port/chibios/chi_sthal_wrapper.c **** {
  49              		.loc 1 16 0
  50              		.cfi_startproc
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              	.LVL1:
  54 0000 08B5     		push	{r3, lr}
  55              		.cfi_def_cfa_offset 8
  56              		.cfi_offset 3, -8
  57              		.cfi_offset 14, -4
  58              	.LBB36:
  59              	.LBB37:
  60              	.LBB38:
  61              	.LBB39:
  62              	.LBB40:
  63              		.file 2 "../com/lib/CMSIS-hal/Include/cmsis_gcc.h"
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
  64              		.loc 2 264 0
  65 0002 2023     		movs	r3, #32
  66              		.syntax unified
  67              	@ 264 "../com/lib/CMSIS-hal/Include/cmsis_gcc.h" 1
  68 0004 83F31188 		MSR basepri, r3
  69              	@ 0 "" 2
  70              	.LVL2:
  71              		.thumb
  72              		.syntax unified
  73              	.LBE40:
  74              	.LBE39:
  75              	.LBE38:
  76              	.LBE37:
  77              	.LBE36:
  17:port/chibios/chi_sthal_wrapper.c **** 	  CH_IRQ_PROLOGUE();
  18:port/chibios/chi_sthal_wrapper.c **** 
  19:port/chibios/chi_sthal_wrapper.c **** 	  chSysLockFromISR();
  20:port/chibios/chi_sthal_wrapper.c **** 	  chSysTimerHandlerI();
  78              		.loc 1 20 0
  79 0008 FFF7FEFF 		bl	chSysTimerHandlerI
  80              	.LVL3:
  81              	.LBB41:
  82              	.LBB42:
  83              	.LBB43:
  84              	.LBB44:
  85              	.LBB45:
  86              		.loc 2 264 0
  87 000c 0023     		movs	r3, #0
  88              		.syntax unified
  89              	@ 264 "../com/lib/CMSIS-hal/Include/cmsis_gcc.h" 1
  90 000e 83F31188 		MSR basepri, r3
  91              	@ 0 "" 2
  92              	.LVL4:
  93              		.thumb
  94              		.syntax unified
  95              	.LBE45:
  96              	.LBE44:
  97              	.LBE43:
  98              	.LBE42:
  99              	.LBE41:
  21:port/chibios/chi_sthal_wrapper.c **** 	  chSysUnlockFromISR();
  22:port/chibios/chi_sthal_wrapper.c **** 
  23:port/chibios/chi_sthal_wrapper.c **** 	  CH_IRQ_EPILOGUE();
 100              		.loc 1 23 0
 101 0012 FFF7FEFF 		bl	_port_irq_epilogue
 102              	.LVL5:
  24:port/chibios/chi_sthal_wrapper.c **** 
  25:port/chibios/chi_sthal_wrapper.c **** 	  HAL_IncTick();
  26:port/chibios/chi_sthal_wrapper.c **** 	  //HAL_SYSTICK_IRQHandler();
  27:port/chibios/chi_sthal_wrapper.c **** 
  28:port/chibios/chi_sthal_wrapper.c **** }
 103              		.loc 1 28 0
 104 0016 BDE80840 		pop	{r3, lr}
 105              		.cfi_restore 14
 106              		.cfi_restore 3
 107              		.cfi_def_cfa_offset 0
  25:port/chibios/chi_sthal_wrapper.c **** 	  //HAL_SYSTICK_IRQHandler();
 108              		.loc 1 25 0
 109 001a FFF7FEBF 		b	HAL_IncTick
 110              	.LVL6:
 111              		.cfi_endproc
 112              	.LFE234:
 114 001e 00BF     		.text
 115              	.Letext0:
 116              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 117              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 118              		.file 5 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/compilers/GCC/chtypes.h"
 119              		.file 6 "../com/lib/chibios-16.1.4/os/rt/include/chsystypes.h"
 120              		.file 7 "../com/lib/chibios-16.1.4/os/rt/include/chschd.h"
 121              		.file 8 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 122              		.file 9 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 123              		.file 10 "/usr/include/newlib/sys/lock.h"
 124              		.file 11 "/usr/include/newlib/sys/_types.h"
 125              		.file 12 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 126              		.file 13 "/usr/include/newlib/sys/reent.h"
 127              		.file 14 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore.h"
 128              		.file 15 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore_v7m.h"
 129              		.file 16 "../com/lib/chibios-16.1.4/os/rt/include/chsem.h"
 130              		.file 17 "../com/lib/chibios-16.1.4/os/rt/include/chmtx.h"
 131              		.file 18 "../com/lib/chibios-16.1.4/os/rt/include/chregistry.h"
 132              		.file 19 "../com/lib/chibios-16.1.4/os/rt/include/chsys.h"
 133              		.file 20 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal.h"
