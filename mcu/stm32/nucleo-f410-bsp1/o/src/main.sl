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
  11              		.file	"main.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.Thread_blink,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv4-sp-d16
  23              	Thread_blink:
  24              	.LFB234:
  25              		.file 1 "src/main.c"
   1:src/main.c    **** #include <stdlib.h>
   2:src/main.c    **** #include <stdio.h>
   3:src/main.c    **** #include <string.h>
   4:src/main.c    **** #include "stm32f4xx_hal.h"
   5:src/main.c    **** #include "mxconstants.h"
   6:src/main.c    **** #include "gpio.h"
   7:src/main.c    **** #include "usart2.h"
   8:src/main.c    **** 
   9:src/main.c    **** #define SET_LED_RED
  10:src/main.c    **** #define RESET_LED_RED
  11:src/main.c    **** 
  12:src/main.c    **** #define SET_LED_BLUE
  13:src/main.c    **** #define RESET_LED_BLUE
  14:src/main.c    **** 
  15:src/main.c    **** #define SET_LED_GREEN LD2_GPIO_Port->BSRR = LD2_Pin
  16:src/main.c    **** #define RESET_LED_GREEN LD2_GPIO_Port->BSRR = LD2_Pin << 16
  17:src/main.c    **** 
  18:src/main.c    **** char s[128];
  19:src/main.c    **** 
  20:src/main.c    **** static THD_WORKING_AREA(waThread_uart, 1024);
  21:src/main.c    **** static THD_FUNCTION(Thread_uart, arg) {
  22:src/main.c    **** 	(void)arg;
  23:src/main.c    **** 	int i=0, j=0;
  24:src/main.c    **** 	int len;
  25:src/main.c    **** 	chRegSetThreadName("uart");
  26:src/main.c    **** 	sprintf(s,"Thread_uart run");
  27:src/main.c    **** 	len=strlen(s);
  28:src/main.c    **** 	printf("%s %d\n",s,len);
  29:src/main.c    **** 	while (1) {
  30:src/main.c    **** 	  if (rxidl2>0) {
  31:src/main.c    **** 		  printf("idle");
  32:src/main.c    **** 		  rxidl2=-1;
  33:src/main.c    **** 	  }
  34:src/main.c    **** 	  while (rxbp2 != rxrp2) {
  35:src/main.c    **** 		  char c;
  36:src/main.c    **** 		  c=rxbuf2[rxrp2];
  37:src/main.c    **** 		  putchar(c);
  38:src/main.c    **** 		  rxrp2++;
  39:src/main.c    **** 		  if (rxrp2>=RXBUFSIZE) rxrp2=0;
  40:src/main.c    **** 		  j=0;
  41:src/main.c    **** 	  }
  42:src/main.c    **** 	  chThdSleepMilliseconds(100);
  43:src/main.c    **** 	  j++;
  44:src/main.c    **** 	  i++;
  45:src/main.c    **** 	  if (j>=10) {
  46:src/main.c    **** 		  printf("running %d\n",i);
  47:src/main.c    **** 		  j=0;
  48:src/main.c    **** 	  }
  49:src/main.c    **** 	}
  50:src/main.c    **** }
  51:src/main.c    **** 
  52:src/main.c    **** 
  53:src/main.c    **** static THD_WORKING_AREA(waThread_blink, 128);
  54:src/main.c    **** static THD_FUNCTION(Thread_blink, arg) {
  26              		.loc 1 54 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              	.LVL0:
  31 0000 70B5     		push	{r4, r5, r6, lr}
  32              		.cfi_def_cfa_offset 16
  33              		.cfi_offset 4, -16
  34              		.cfi_offset 5, -12
  35              		.cfi_offset 6, -8
  36              		.cfi_offset 14, -4
  37              	.LBB7:
  38              	.LBB8:
  39              		.file 2 "../com/lib/chibios-16.1.4/os/rt/include/chregistry.h"
   1:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*
   2:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     ChibiOS - Copyright (C) 2006..2015 Giovanni Di Sirio.
   3:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
   4:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     This file is part of ChibiOS.
   5:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
   6:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     ChibiOS is free software; you can redistribute it and/or modify
   7:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     it under the terms of the GNU General Public License as published by
   8:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     the Free Software Foundation; either version 3 of the License, or
   9:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     (at your option) any later version.
  10:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  11:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     ChibiOS is distributed in the hope that it will be useful,
  12:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     GNU General Public License for more details.
  15:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  16:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     You should have received a copy of the GNU General Public License
  17:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****     along with this program.  If not, see <http://www.gnu.org/licenses/>.
  18:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** */
  19:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  20:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /**
  21:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @file    chregistry.h
  22:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @brief   Threads registry macros and structures.
  23:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  *
  24:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @addtogroup registry
  25:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @{
  26:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  */
  27:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  28:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #ifndef _CHREGISTRY_H_
  29:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #define _CHREGISTRY_H_
  30:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  31:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #if (CH_CFG_USE_REGISTRY == TRUE) || defined(__DOXYGEN__)
  32:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  33:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  34:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /* Module constants.                                                         */
  35:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  36:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  37:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  38:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /* Module pre-compile time settings.                                         */
  39:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  40:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  41:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  42:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /* Derived constants and error checks.                                       */
  43:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  44:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  45:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  46:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /* Module data structures and types.                                         */
  47:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  48:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  49:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /**
  50:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @brief   ChibiOS/RT memory signature record.
  51:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  */
  52:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** typedef struct {
  53:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   char      ch_identifier[4];       /**< @brief Always set to "main".       */
  54:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   ch_zero;                /**< @brief Must be zero.               */
  55:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   ch_size;                /**< @brief Size of this structure.     */
  56:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint16_t  ch_version;             /**< @brief Encoded ChibiOS/RT version. */
  57:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   ch_ptrsize;             /**< @brief Size of a pointer.          */
  58:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   ch_timesize;            /**< @brief Size of a @p systime_t.     */
  59:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   ch_threadsize;          /**< @brief Size of a @p thread_t.      */
  60:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_prio;            /**< @brief Offset of @p p_prio field.  */
  61:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_ctx;             /**< @brief Offset of @p p_ctx field.   */
  62:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_newer;           /**< @brief Offset of @p p_newer field. */
  63:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_older;           /**< @brief Offset of @p p_older field. */
  64:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_name;            /**< @brief Offset of @p p_name field.  */
  65:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_stklimit;        /**< @brief Offset of @p p_stklimit
  66:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****                                                 field.                      */
  67:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_state;           /**< @brief Offset of @p p_state field. */
  68:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_flags;           /**< @brief Offset of @p p_flags field. */
  69:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_refs;            /**< @brief Offset of @p p_refs field.  */
  70:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_preempt;         /**< @brief Offset of @p p_preempt
  71:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****                                                 field.                      */
  72:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   uint8_t   cf_off_time;            /**< @brief Offset of @p p_time field.  */
  73:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** } chdebug_t;
  74:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  75:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  76:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /* Module macros.                                                            */
  77:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
  78:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  79:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /**
  80:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @brief   Removes a thread from the registry list.
  81:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @note    This macro is not meant for use in application code.
  82:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  *
  83:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @param[in] tp        thread to remove from the registry
  84:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  */
  85:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #define REG_REMOVE(tp) {                                                    \
  86:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   (tp)->p_older->p_newer = (tp)->p_newer;                                   \
  87:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   (tp)->p_newer->p_older = (tp)->p_older;                                   \
  88:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** }
  89:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
  90:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /**
  91:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @brief   Adds a thread to the registry list.
  92:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @note    This macro is not meant for use in application code.
  93:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  *
  94:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @param[in] tp        thread to add to the registry
  95:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  */
  96:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #define REG_INSERT(tp) {                                                    \
  97:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   (tp)->p_newer = (thread_t *)&ch.rlist;                                    \
  98:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   (tp)->p_older = ch.rlist.r_older;                                         \
  99:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   (tp)->p_older->p_newer = (tp);                                            \
 100:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   ch.rlist.r_older = (tp);                                                  \
 101:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** }
 102:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
 103:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
 104:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /* External declarations.                                                    */
 105:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
 106:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
 107:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #ifdef __cplusplus
 108:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** extern "C" {
 109:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #endif
 110:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   extern ROMCONST chdebug_t ch_debug;
 111:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   thread_t *chRegFirstThread(void);
 112:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   thread_t *chRegNextThread(thread_t *tp);
 113:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #ifdef __cplusplus
 114:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** }
 115:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #endif
 116:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
 117:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #endif /* CH_CFG_USE_REGISTRY == TRUE */
 118:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
 119:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
 120:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /* Module inline functions.                                                  */
 121:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /*===========================================================================*/
 122:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
 123:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** /**
 124:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @brief   Sets the current thread name.
 125:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @pre     This function only stores the pointer to the name if the option
 126:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  *          @p CH_CFG_USE_REGISTRY is enabled else no action is performed.
 127:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  *
 128:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @param[in] name      thread name as a zero terminated string
 129:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  *
 130:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  * @api
 131:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****  */
 132:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** static inline void chRegSetThreadName(const char *name) {
 133:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** 
 134:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h **** #if CH_CFG_USE_REGISTRY == TRUE
 135:../com/lib/chibios-16.1.4/os/rt/include/chregistry.h ****   ch.rlist.r_current->p_name = name;
  40              		.loc 2 135 0
  41 0002 134B     		ldr	r3, .L10
  42 0004 134A     		ldr	r2, .L10+4
  43 0006 9B69     		ldr	r3, [r3, #24]
  44              	.LBE8:
  45              	.LBE7:
  55:src/main.c    **** 	(void)arg;
  56:src/main.c    **** 	int i=0;
  57:src/main.c    **** 	chRegSetThreadName("blinker");
  58:src/main.c    **** 	SendDataUSART2("Thread_blink run\n", 17);
  46              		.loc 1 58 0
  47 0008 1348     		ldr	r0, .L10+8
  48              	.LVL1:
  49              	.LBB10:
  50              	.LBB9:
  51              		.loc 2 135 0
  52 000a 9A61     		str	r2, [r3, #24]
  53              	.LVL2:
  54              	.LBE9:
  55              	.LBE10:
  56              		.loc 1 58 0
  57 000c 1121     		movs	r1, #17
  59:src/main.c    **** 	//printf("Thread_blink run\n");
  60:src/main.c    ****     SET_LED_RED;
  61:src/main.c    **** 	SET_LED_BLUE;
  62:src/main.c    **** 	SET_LED_GREEN;
  58              		.loc 1 62 0
  59 000e 134E     		ldr	r6, .L10+12
  63:src/main.c    **** 
  64:src/main.c    **** 	while (1) {
  65:src/main.c    **** 		chThdSleepMilliseconds(100);
  66:src/main.c    **** 		i++;
  67:src/main.c    **** 		switch (i % 3) {
  60              		.loc 1 67 0
  61 0010 134D     		ldr	r5, .L10+16
  58:src/main.c    **** 	//printf("Thread_blink run\n");
  62              		.loc 1 58 0
  63 0012 FFF7FEFF 		bl	SendDataUSART2
  64              	.LVL3:
  62:src/main.c    **** 
  65              		.loc 1 62 0
  66 0016 2023     		movs	r3, #32
  67 0018 B361     		str	r3, [r6, #24]
  56:src/main.c    **** 	chRegSetThreadName("blinker");
  68              		.loc 1 56 0
  69 001a 0024     		movs	r4, #0
  70              	.LVL4:
  71              	.L2:
  66:src/main.c    **** 		switch (i % 3) {
  72              		.loc 1 66 0
  73 001c 0134     		adds	r4, r4, #1
  74              	.LVL5:
  65:src/main.c    **** 		i++;
  75              		.loc 1 65 0
  76 001e 6420     		movs	r0, #100
  77 0020 FFF7FEFF 		bl	chThdSleep
  78              	.LVL6:
  79              		.loc 1 67 0
  80 0024 85FB0423 		smull	r2, r3, r5, r4
  81 0028 A3EBE473 		sub	r3, r3, r4, asr #31
  82 002c 03EB4303 		add	r3, r3, r3, lsl #1
  83 0030 E31A     		subs	r3, r4, r3
  84 0032 012B     		cmp	r3, #1
  85 0034 07D0     		beq	.L4
  86 0036 022B     		cmp	r3, #2
  68:src/main.c    **** 		case 0: SET_LED_BLUE;
  69:src/main.c    **** 				RESET_LED_RED;
  70:src/main.c    **** 				RESET_LED_GREEN;
  71:src/main.c    **** 		  	  	break;
  72:src/main.c    **** 		case 1: RESET_LED_BLUE;
  73:src/main.c    **** 		  	  	SET_LED_RED;
  74:src/main.c    **** 		  	  	RESET_LED_GREEN;
  75:src/main.c    **** 		  	  	break;
  76:src/main.c    **** 		case 2: RESET_LED_BLUE;
  77:src/main.c    **** 		  	  	RESET_LED_RED;
  78:src/main.c    **** 		  	  	SET_LED_GREEN;
  87              		.loc 1 78 0
  88 0038 4FF02002 		mov	r2, #32
  70:src/main.c    **** 		  	  	break;
  89              		.loc 1 70 0
  90 003c 4FF40013 		mov	r3, #2097152
  67:src/main.c    **** 		case 0: SET_LED_BLUE;
  91              		.loc 1 67 0
  92 0040 03D1     		bne	.L8
  93              		.loc 1 78 0
  94 0042 B261     		str	r2, [r6, #24]
  79:src/main.c    **** 		  	  	break;
  95              		.loc 1 79 0
  96 0044 EAE7     		b	.L2
  97              	.L4:
  74:src/main.c    **** 		  	  	break;
  98              		.loc 1 74 0
  99 0046 4FF40013 		mov	r3, #2097152
 100              	.L8:
 101 004a B361     		str	r3, [r6, #24]
  75:src/main.c    **** 		case 2: RESET_LED_BLUE;
 102              		.loc 1 75 0
 103 004c E6E7     		b	.L2
 104              	.L11:
 105 004e 00BF     		.align	2
 106              	.L10:
 107 0050 00000000 		.word	ch
 108 0054 00000000 		.word	.LC0
 109 0058 08000000 		.word	.LC1
 110 005c 00000240 		.word	1073872896
 111 0060 56555555 		.word	1431655766
 112              		.cfi_endproc
 113              	.LFE234:
 115              		.section	.text.Thread_uart,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv4-sp-d16
 123              	Thread_uart:
 124              	.LFB233:
  21:src/main.c    **** 	(void)arg;
 125              		.loc 1 21 0
 126              		.cfi_startproc
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              	.LVL7:
 130 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 131              		.cfi_def_cfa_offset 40
 132              		.cfi_offset 3, -40
 133              		.cfi_offset 4, -36
 134              		.cfi_offset 5, -32
 135              		.cfi_offset 6, -28
 136              		.cfi_offset 7, -24
 137              		.cfi_offset 8, -20
 138              		.cfi_offset 9, -16
 139              		.cfi_offset 10, -12
 140              		.cfi_offset 11, -8
 141              		.cfi_offset 14, -4
 142              	.LBB16:
 143              	.LBB17:
 144              		.loc 2 135 0
 145 0004 314A     		ldr	r2, .L28
 146              	.LBE17:
 147              	.LBE16:
  26:src/main.c    **** 	len=strlen(s);
 148              		.loc 1 26 0
 149 0006 324B     		ldr	r3, .L28+4
 150              	.LBB19:
 151              	.LBB18:
 152              		.loc 2 135 0
 153 0008 9269     		ldr	r2, [r2, #24]
 154 000a 3249     		ldr	r1, .L28+8
 155 000c 9161     		str	r1, [r2, #24]
 156              	.LVL8:
 157              	.LBE18:
 158              	.LBE19:
  26:src/main.c    **** 	len=strlen(s);
 159              		.loc 1 26 0
 160 000e 0FCB     		ldm	r3, {r0, r1, r2, r3}
 161              	.LVL9:
 162 0010 314C     		ldr	r4, .L28+12
 163 0012 DFF8E080 		ldr	r8, .L28+40
 164 0016 DFF8E0A0 		ldr	r10, .L28+44
 165 001a 304E     		ldr	r6, .L28+16
 166 001c 304D     		ldr	r5, .L28+20
 167 001e 84E80F00 		stm	r4, {r0, r1, r2, r3}
 168              	.LVL10:
  28:src/main.c    **** 	while (1) {
 169              		.loc 1 28 0
 170 0022 2146     		mov	r1, r4
 171 0024 0F22     		movs	r2, #15
 172 0026 2F48     		ldr	r0, .L28+24
 173 0028 2F4C     		ldr	r4, .L28+28
 174 002a FFF7FEFF 		bl	printf
 175              	.LVL11:
  23:src/main.c    **** 	int len;
 176              		.loc 1 23 0
 177 002e 4FF0000B 		mov	fp, #0
 178 0032 5F46     		mov	r7, fp
  32:src/main.c    **** 	  }
 179              		.loc 1 32 0
 180 0034 4FF6FF79 		movw	r9, #65535
 181              	.LVL12:
 182              	.L13:
  30:src/main.c    **** 		  printf("idle");
 183              		.loc 1 30 0
 184 0038 B8F80020 		ldrh	r2, [r8]
 185 003c 12B2     		sxth	r2, r2
 186 003e 002A     		cmp	r2, #0
 187 0040 16DD     		ble	.L19
  31:src/main.c    **** 		  rxidl2=-1;
 188              		.loc 1 31 0
 189 0042 2A48     		ldr	r0, .L28+32
 190 0044 FFF7FEFF 		bl	printf
 191              	.LVL13:
  32:src/main.c    **** 	  }
 192              		.loc 1 32 0
 193 0048 A8F80090 		strh	r9, [r8]	@ movhi
 194 004c 10E0     		b	.L19
 195              	.LVL14:
 196              	.L16:
 197              	.LBB20:
 198              	.LBB21:
 199              	.LBB22:
 200              		.file 3 "/usr/include/newlib/stdio.h"
   1:/usr/include/newlib/stdio.h **** /*
   2:/usr/include/newlib/stdio.h ****  * Copyright (c) 1990 The Regents of the University of California.
   3:/usr/include/newlib/stdio.h ****  * All rights reserved.
   4:/usr/include/newlib/stdio.h ****  *
   5:/usr/include/newlib/stdio.h ****  * Redistribution and use in source and binary forms are permitted
   6:/usr/include/newlib/stdio.h ****  * provided that the above copyright notice and this paragraph are
   7:/usr/include/newlib/stdio.h ****  * duplicated in all such forms and that any documentation,
   8:/usr/include/newlib/stdio.h ****  * advertising materials, and other materials related to such
   9:/usr/include/newlib/stdio.h ****  * distribution and use acknowledge that the software was developed
  10:/usr/include/newlib/stdio.h ****  * by the University of California, Berkeley.  The name of the
  11:/usr/include/newlib/stdio.h ****  * University may not be used to endorse or promote products derived
  12:/usr/include/newlib/stdio.h ****  * from this software without specific prior written permission.
  13:/usr/include/newlib/stdio.h ****  * THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
  14:/usr/include/newlib/stdio.h ****  * IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
  15:/usr/include/newlib/stdio.h ****  * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
  16:/usr/include/newlib/stdio.h ****  *
  17:/usr/include/newlib/stdio.h ****  *	@(#)stdio.h	5.3 (Berkeley) 3/15/86
  18:/usr/include/newlib/stdio.h ****  */
  19:/usr/include/newlib/stdio.h **** 
  20:/usr/include/newlib/stdio.h **** /*
  21:/usr/include/newlib/stdio.h ****  * NB: to fit things in six character monocase externals, the
  22:/usr/include/newlib/stdio.h ****  * stdio code uses the prefix `__s' for stdio objects, typically
  23:/usr/include/newlib/stdio.h ****  * followed by a three-character attempt at a mnemonic.
  24:/usr/include/newlib/stdio.h ****  */
  25:/usr/include/newlib/stdio.h **** 
  26:/usr/include/newlib/stdio.h **** #ifndef _STDIO_H_
  27:/usr/include/newlib/stdio.h **** #define	_STDIO_H_
  28:/usr/include/newlib/stdio.h **** 
  29:/usr/include/newlib/stdio.h **** #include "_ansi.h"
  30:/usr/include/newlib/stdio.h **** 
  31:/usr/include/newlib/stdio.h **** #define	_FSTDIO			/* ``function stdio'' */
  32:/usr/include/newlib/stdio.h **** 
  33:/usr/include/newlib/stdio.h **** #define __need_size_t
  34:/usr/include/newlib/stdio.h **** #define __need_NULL
  35:/usr/include/newlib/stdio.h **** #include <sys/cdefs.h>
  36:/usr/include/newlib/stdio.h **** #include <stddef.h>
  37:/usr/include/newlib/stdio.h **** 
  38:/usr/include/newlib/stdio.h **** #define __need___va_list
  39:/usr/include/newlib/stdio.h **** #include <stdarg.h>
  40:/usr/include/newlib/stdio.h **** 
  41:/usr/include/newlib/stdio.h **** /*
  42:/usr/include/newlib/stdio.h ****  * <sys/reent.h> defines __FILE, _fpos_t.
  43:/usr/include/newlib/stdio.h ****  * They must be defined there because struct _reent needs them (and we don't
  44:/usr/include/newlib/stdio.h ****  * want reent.h to include this file.
  45:/usr/include/newlib/stdio.h ****  */
  46:/usr/include/newlib/stdio.h **** 
  47:/usr/include/newlib/stdio.h **** #include <sys/reent.h>
  48:/usr/include/newlib/stdio.h **** #include <sys/types.h>
  49:/usr/include/newlib/stdio.h **** 
  50:/usr/include/newlib/stdio.h **** _BEGIN_STD_C
  51:/usr/include/newlib/stdio.h **** 
  52:/usr/include/newlib/stdio.h **** #if !defined(__FILE_defined)
  53:/usr/include/newlib/stdio.h **** typedef __FILE FILE;
  54:/usr/include/newlib/stdio.h **** # define __FILE_defined
  55:/usr/include/newlib/stdio.h **** #endif
  56:/usr/include/newlib/stdio.h **** 
  57:/usr/include/newlib/stdio.h **** #ifdef __CYGWIN__
  58:/usr/include/newlib/stdio.h **** typedef _fpos64_t fpos_t;
  59:/usr/include/newlib/stdio.h **** #else
  60:/usr/include/newlib/stdio.h **** typedef _fpos_t fpos_t;
  61:/usr/include/newlib/stdio.h **** #ifdef __LARGE64_FILES
  62:/usr/include/newlib/stdio.h **** typedef _fpos64_t fpos64_t;
  63:/usr/include/newlib/stdio.h **** #endif
  64:/usr/include/newlib/stdio.h **** #endif /* !__CYGWIN__ */
  65:/usr/include/newlib/stdio.h **** 
  66:/usr/include/newlib/stdio.h **** #include <sys/stdio.h>
  67:/usr/include/newlib/stdio.h **** 
  68:/usr/include/newlib/stdio.h **** #define	__SLBF	0x0001		/* line buffered */
  69:/usr/include/newlib/stdio.h **** #define	__SNBF	0x0002		/* unbuffered */
  70:/usr/include/newlib/stdio.h **** #define	__SRD	0x0004		/* OK to read */
  71:/usr/include/newlib/stdio.h **** #define	__SWR	0x0008		/* OK to write */
  72:/usr/include/newlib/stdio.h **** 	/* RD and WR are never simultaneously asserted */
  73:/usr/include/newlib/stdio.h **** #define	__SRW	0x0010		/* open for reading & writing */
  74:/usr/include/newlib/stdio.h **** #define	__SEOF	0x0020		/* found EOF */
  75:/usr/include/newlib/stdio.h **** #define	__SERR	0x0040		/* found error */
  76:/usr/include/newlib/stdio.h **** #define	__SMBF	0x0080		/* _buf is from malloc */
  77:/usr/include/newlib/stdio.h **** #define	__SAPP	0x0100		/* fdopen()ed in append mode - so must  write to end */
  78:/usr/include/newlib/stdio.h **** #define	__SSTR	0x0200		/* this is an sprintf/snprintf string */
  79:/usr/include/newlib/stdio.h **** #define	__SOPT	0x0400		/* do fseek() optimisation */
  80:/usr/include/newlib/stdio.h **** #define	__SNPT	0x0800		/* do not do fseek() optimisation */
  81:/usr/include/newlib/stdio.h **** #define	__SOFF	0x1000		/* set iff _offset is in fact correct */
  82:/usr/include/newlib/stdio.h **** #define	__SORD	0x2000		/* true => stream orientation (byte/wide) decided */
  83:/usr/include/newlib/stdio.h **** #if defined(__CYGWIN__)
  84:/usr/include/newlib/stdio.h **** #  define __SCLE  0x4000        /* convert line endings CR/LF <-> NL */
  85:/usr/include/newlib/stdio.h **** #endif
  86:/usr/include/newlib/stdio.h **** #define	__SL64	0x8000		/* is 64-bit offset large file */
  87:/usr/include/newlib/stdio.h **** 
  88:/usr/include/newlib/stdio.h **** /* _flags2 flags */
  89:/usr/include/newlib/stdio.h **** #define	__SNLK  0x0001		/* stdio functions do not lock streams themselves */
  90:/usr/include/newlib/stdio.h **** #define	__SWID	0x2000		/* true => stream orientation wide, false => byte, only valid if __SORD in _
  91:/usr/include/newlib/stdio.h **** 
  92:/usr/include/newlib/stdio.h **** /*
  93:/usr/include/newlib/stdio.h ****  * The following three definitions are for ANSI C, which took them
  94:/usr/include/newlib/stdio.h ****  * from System V, which stupidly took internal interface macros and
  95:/usr/include/newlib/stdio.h ****  * made them official arguments to setvbuf(), without renaming them.
  96:/usr/include/newlib/stdio.h ****  * Hence, these ugly _IOxxx names are *supposed* to appear in user code.
  97:/usr/include/newlib/stdio.h ****  *
  98:/usr/include/newlib/stdio.h ****  * Although these happen to match their counterparts above, the
  99:/usr/include/newlib/stdio.h ****  * implementation does not rely on that (so these could be renumbered).
 100:/usr/include/newlib/stdio.h ****  */
 101:/usr/include/newlib/stdio.h **** #define	_IOFBF	0		/* setvbuf should set fully buffered */
 102:/usr/include/newlib/stdio.h **** #define	_IOLBF	1		/* setvbuf should set line buffered */
 103:/usr/include/newlib/stdio.h **** #define	_IONBF	2		/* setvbuf should set unbuffered */
 104:/usr/include/newlib/stdio.h **** 
 105:/usr/include/newlib/stdio.h **** #define	EOF	(-1)
 106:/usr/include/newlib/stdio.h **** 
 107:/usr/include/newlib/stdio.h **** #ifdef __BUFSIZ__
 108:/usr/include/newlib/stdio.h **** #define	BUFSIZ		__BUFSIZ__
 109:/usr/include/newlib/stdio.h **** #else
 110:/usr/include/newlib/stdio.h **** #define	BUFSIZ		1024
 111:/usr/include/newlib/stdio.h **** #endif
 112:/usr/include/newlib/stdio.h **** 
 113:/usr/include/newlib/stdio.h **** #ifdef __FOPEN_MAX__
 114:/usr/include/newlib/stdio.h **** #define FOPEN_MAX	__FOPEN_MAX__
 115:/usr/include/newlib/stdio.h **** #else
 116:/usr/include/newlib/stdio.h **** #define	FOPEN_MAX	20
 117:/usr/include/newlib/stdio.h **** #endif
 118:/usr/include/newlib/stdio.h **** 
 119:/usr/include/newlib/stdio.h **** #ifdef __FILENAME_MAX__
 120:/usr/include/newlib/stdio.h **** #define FILENAME_MAX    __FILENAME_MAX__
 121:/usr/include/newlib/stdio.h **** #else
 122:/usr/include/newlib/stdio.h **** #define	FILENAME_MAX	1024
 123:/usr/include/newlib/stdio.h **** #endif
 124:/usr/include/newlib/stdio.h **** 
 125:/usr/include/newlib/stdio.h **** #ifdef __L_tmpnam__
 126:/usr/include/newlib/stdio.h **** #define L_tmpnam	__L_tmpnam__
 127:/usr/include/newlib/stdio.h **** #else
 128:/usr/include/newlib/stdio.h **** #define	L_tmpnam	FILENAME_MAX
 129:/usr/include/newlib/stdio.h **** #endif
 130:/usr/include/newlib/stdio.h **** 
 131:/usr/include/newlib/stdio.h **** #if __BSD_VISIBLE || __XSI_VISIBLE
 132:/usr/include/newlib/stdio.h **** #define P_tmpdir        "/tmp"
 133:/usr/include/newlib/stdio.h **** #endif
 134:/usr/include/newlib/stdio.h **** 
 135:/usr/include/newlib/stdio.h **** #ifndef SEEK_SET
 136:/usr/include/newlib/stdio.h **** #define	SEEK_SET	0	/* set file offset to offset */
 137:/usr/include/newlib/stdio.h **** #endif
 138:/usr/include/newlib/stdio.h **** #ifndef SEEK_CUR
 139:/usr/include/newlib/stdio.h **** #define	SEEK_CUR	1	/* set file offset to current plus offset */
 140:/usr/include/newlib/stdio.h **** #endif
 141:/usr/include/newlib/stdio.h **** #ifndef SEEK_END
 142:/usr/include/newlib/stdio.h **** #define	SEEK_END	2	/* set file offset to EOF plus offset */
 143:/usr/include/newlib/stdio.h **** #endif
 144:/usr/include/newlib/stdio.h **** 
 145:/usr/include/newlib/stdio.h **** #define	TMP_MAX		26
 146:/usr/include/newlib/stdio.h **** 
 147:/usr/include/newlib/stdio.h **** #define	stdin	(_REENT->_stdin)
 148:/usr/include/newlib/stdio.h **** #define	stdout	(_REENT->_stdout)
 149:/usr/include/newlib/stdio.h **** #define	stderr	(_REENT->_stderr)
 150:/usr/include/newlib/stdio.h **** 
 151:/usr/include/newlib/stdio.h **** #define _stdin_r(x)	((x)->_stdin)
 152:/usr/include/newlib/stdio.h **** #define _stdout_r(x)	((x)->_stdout)
 153:/usr/include/newlib/stdio.h **** #define _stderr_r(x)	((x)->_stderr)
 154:/usr/include/newlib/stdio.h **** 
 155:/usr/include/newlib/stdio.h **** /*
 156:/usr/include/newlib/stdio.h ****  * Functions defined in ANSI C standard.
 157:/usr/include/newlib/stdio.h ****  */
 158:/usr/include/newlib/stdio.h **** 
 159:/usr/include/newlib/stdio.h **** #ifndef __VALIST
 160:/usr/include/newlib/stdio.h **** #ifdef __GNUC__
 161:/usr/include/newlib/stdio.h **** #define __VALIST __gnuc_va_list
 162:/usr/include/newlib/stdio.h **** #else
 163:/usr/include/newlib/stdio.h **** #define __VALIST char*
 164:/usr/include/newlib/stdio.h **** #endif
 165:/usr/include/newlib/stdio.h **** #endif
 166:/usr/include/newlib/stdio.h **** 
 167:/usr/include/newlib/stdio.h **** #if __POSIX_VISIBLE
 168:/usr/include/newlib/stdio.h **** char *	_EXFUN(ctermid, (char *));
 169:/usr/include/newlib/stdio.h **** #endif
 170:/usr/include/newlib/stdio.h **** #if __XSI_VISIBLE && __XSI_VISIBLE < 600
 171:/usr/include/newlib/stdio.h **** char *	_EXFUN(cuserid, (char *));
 172:/usr/include/newlib/stdio.h **** #endif
 173:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(tmpfile, (void));
 174:/usr/include/newlib/stdio.h **** char *	_EXFUN(tmpnam, (char *));
 175:/usr/include/newlib/stdio.h **** #if __BSD_VISIBLE || __XSI_VISIBLE || __POSIX_VISIBLE >= 200112
 176:/usr/include/newlib/stdio.h **** char *	_EXFUN(tempnam, (const char *, const char *));
 177:/usr/include/newlib/stdio.h **** #endif
 178:/usr/include/newlib/stdio.h **** int	_EXFUN(fclose, (FILE *));
 179:/usr/include/newlib/stdio.h **** int	_EXFUN(fflush, (FILE *));
 180:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(freopen, (const char *__restrict, const char *__restrict, FILE *__restrict));
 181:/usr/include/newlib/stdio.h **** void	_EXFUN(setbuf, (FILE *__restrict, char *__restrict));
 182:/usr/include/newlib/stdio.h **** int	_EXFUN(setvbuf, (FILE *__restrict, char *__restrict, int, size_t));
 183:/usr/include/newlib/stdio.h **** int	_EXFUN(fprintf, (FILE *__restrict, const char *__restrict, ...)
 184:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 185:/usr/include/newlib/stdio.h **** int	_EXFUN(fscanf, (FILE *__restrict, const char *__restrict, ...)
 186:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 3))));
 187:/usr/include/newlib/stdio.h **** int	_EXFUN(printf, (const char *__restrict, ...)
 188:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 1, 2))));
 189:/usr/include/newlib/stdio.h **** int	_EXFUN(scanf, (const char *__restrict, ...)
 190:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 1, 2))));
 191:/usr/include/newlib/stdio.h **** int	_EXFUN(sscanf, (const char *__restrict, const char *__restrict, ...)
 192:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 3))));
 193:/usr/include/newlib/stdio.h **** int	_EXFUN(vfprintf, (FILE *__restrict, const char *__restrict, __VALIST)
 194:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 195:/usr/include/newlib/stdio.h **** int	_EXFUN(vprintf, (const char *, __VALIST)
 196:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 1, 0))));
 197:/usr/include/newlib/stdio.h **** int	_EXFUN(vsprintf, (char *__restrict, const char *__restrict, __VALIST)
 198:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 199:/usr/include/newlib/stdio.h **** int	_EXFUN(fgetc, (FILE *));
 200:/usr/include/newlib/stdio.h **** char *  _EXFUN(fgets, (char *__restrict, int, FILE *__restrict));
 201:/usr/include/newlib/stdio.h **** int	_EXFUN(fputc, (int, FILE *));
 202:/usr/include/newlib/stdio.h **** int	_EXFUN(fputs, (const char *__restrict, FILE *__restrict));
 203:/usr/include/newlib/stdio.h **** int	_EXFUN(getc, (FILE *));
 204:/usr/include/newlib/stdio.h **** int	_EXFUN(getchar, (void));
 205:/usr/include/newlib/stdio.h **** char *  _EXFUN(gets, (char *));
 206:/usr/include/newlib/stdio.h **** int	_EXFUN(putc, (int, FILE *));
 207:/usr/include/newlib/stdio.h **** int	_EXFUN(putchar, (int));
 208:/usr/include/newlib/stdio.h **** int	_EXFUN(puts, (const char *));
 209:/usr/include/newlib/stdio.h **** int	_EXFUN(ungetc, (int, FILE *));
 210:/usr/include/newlib/stdio.h **** size_t	_EXFUN(fread, (_PTR __restrict, size_t _size, size_t _n, FILE *__restrict));
 211:/usr/include/newlib/stdio.h **** size_t	_EXFUN(fwrite, (const _PTR __restrict , size_t _size, size_t _n, FILE *));
 212:/usr/include/newlib/stdio.h **** #ifdef _COMPILING_NEWLIB
 213:/usr/include/newlib/stdio.h **** int	_EXFUN(fgetpos, (FILE *, _fpos_t *));
 214:/usr/include/newlib/stdio.h **** #else
 215:/usr/include/newlib/stdio.h **** int	_EXFUN(fgetpos, (FILE *__restrict, fpos_t *__restrict));
 216:/usr/include/newlib/stdio.h **** #endif
 217:/usr/include/newlib/stdio.h **** int	_EXFUN(fseek, (FILE *, long, int));
 218:/usr/include/newlib/stdio.h **** #ifdef _COMPILING_NEWLIB
 219:/usr/include/newlib/stdio.h **** int	_EXFUN(fsetpos, (FILE *, const _fpos_t *));
 220:/usr/include/newlib/stdio.h **** #else
 221:/usr/include/newlib/stdio.h **** int	_EXFUN(fsetpos, (FILE *, const fpos_t *));
 222:/usr/include/newlib/stdio.h **** #endif
 223:/usr/include/newlib/stdio.h **** long	_EXFUN(ftell, ( FILE *));
 224:/usr/include/newlib/stdio.h **** void	_EXFUN(rewind, (FILE *));
 225:/usr/include/newlib/stdio.h **** void	_EXFUN(clearerr, (FILE *));
 226:/usr/include/newlib/stdio.h **** int	_EXFUN(feof, (FILE *));
 227:/usr/include/newlib/stdio.h **** int	_EXFUN(ferror, (FILE *));
 228:/usr/include/newlib/stdio.h **** void    _EXFUN(perror, (const char *));
 229:/usr/include/newlib/stdio.h **** #ifndef _REENT_ONLY
 230:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(fopen, (const char *__restrict _name, const char *__restrict _type));
 231:/usr/include/newlib/stdio.h **** int	_EXFUN(sprintf, (char *__restrict, const char *__restrict, ...)
 232:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 233:/usr/include/newlib/stdio.h **** int	_EXFUN(remove, (const char *));
 234:/usr/include/newlib/stdio.h **** int	_EXFUN(rename, (const char *, const char *));
 235:/usr/include/newlib/stdio.h **** #ifdef _COMPILING_NEWLIB
 236:/usr/include/newlib/stdio.h **** int	_EXFUN(_rename, (const char *, const char *));
 237:/usr/include/newlib/stdio.h **** #endif
 238:/usr/include/newlib/stdio.h **** #endif
 239:/usr/include/newlib/stdio.h **** #if __LARGEFILE_VISIBLE || __POSIX_VISIBLE >= 200112
 240:/usr/include/newlib/stdio.h **** #ifdef _COMPILING_NEWLIB
 241:/usr/include/newlib/stdio.h **** int	_EXFUN(fseeko, (FILE *, _off_t, int));
 242:/usr/include/newlib/stdio.h **** _off_t	_EXFUN(ftello, ( FILE *));
 243:/usr/include/newlib/stdio.h **** #else
 244:/usr/include/newlib/stdio.h **** int	_EXFUN(fseeko, (FILE *, off_t, int));
 245:/usr/include/newlib/stdio.h **** off_t	_EXFUN(ftello, ( FILE *));
 246:/usr/include/newlib/stdio.h **** #endif
 247:/usr/include/newlib/stdio.h **** #endif
 248:/usr/include/newlib/stdio.h **** #if __GNU_VISIBLE
 249:/usr/include/newlib/stdio.h **** int	_EXFUN(fcloseall, (_VOID));
 250:/usr/include/newlib/stdio.h **** #endif
 251:/usr/include/newlib/stdio.h **** #ifndef _REENT_ONLY
 252:/usr/include/newlib/stdio.h **** #if __ISO_C_VISIBLE >= 1999
 253:/usr/include/newlib/stdio.h **** int	_EXFUN(snprintf, (char *__restrict, size_t, const char *__restrict, ...)
 254:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 255:/usr/include/newlib/stdio.h **** int	_EXFUN(vsnprintf, (char *__restrict, size_t, const char *__restrict, __VALIST)
 256:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 257:/usr/include/newlib/stdio.h **** int	_EXFUN(vfscanf, (FILE *__restrict, const char *__restrict, __VALIST)
 258:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 0))));
 259:/usr/include/newlib/stdio.h **** int	_EXFUN(vscanf, (const char *, __VALIST)
 260:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 1, 0))));
 261:/usr/include/newlib/stdio.h **** int	_EXFUN(vsscanf, (const char *__restrict, const char *__restrict, __VALIST)
 262:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 0))));
 263:/usr/include/newlib/stdio.h **** #endif
 264:/usr/include/newlib/stdio.h **** #if __GNU_VISIBLE
 265:/usr/include/newlib/stdio.h **** int	_EXFUN(asprintf, (char **__restrict, const char *__restrict, ...)
 266:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 267:/usr/include/newlib/stdio.h **** int	_EXFUN(vasprintf, (char **, const char *, __VALIST)
 268:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 269:/usr/include/newlib/stdio.h **** #endif
 270:/usr/include/newlib/stdio.h **** #if __MISC_VISIBLE /* Newlib-specific */
 271:/usr/include/newlib/stdio.h **** int	_EXFUN(asiprintf, (char **, const char *, ...)
 272:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 273:/usr/include/newlib/stdio.h **** char *	_EXFUN(asniprintf, (char *, size_t *, const char *, ...)
 274:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 275:/usr/include/newlib/stdio.h **** char *	_EXFUN(asnprintf, (char *__restrict, size_t *__restrict, const char *__restrict, ...)
 276:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 277:/usr/include/newlib/stdio.h **** #ifndef diprintf
 278:/usr/include/newlib/stdio.h **** int	_EXFUN(diprintf, (int, const char *, ...)
 279:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 280:/usr/include/newlib/stdio.h **** #endif
 281:/usr/include/newlib/stdio.h **** int	_EXFUN(fiprintf, (FILE *, const char *, ...)
 282:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 283:/usr/include/newlib/stdio.h **** int	_EXFUN(fiscanf, (FILE *, const char *, ...)
 284:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 3))));
 285:/usr/include/newlib/stdio.h **** int	_EXFUN(iprintf, (const char *, ...)
 286:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 1, 2))));
 287:/usr/include/newlib/stdio.h **** int	_EXFUN(iscanf, (const char *, ...)
 288:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 1, 2))));
 289:/usr/include/newlib/stdio.h **** int	_EXFUN(siprintf, (char *, const char *, ...)
 290:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 291:/usr/include/newlib/stdio.h **** int	_EXFUN(siscanf, (const char *, const char *, ...)
 292:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 3))));
 293:/usr/include/newlib/stdio.h **** int	_EXFUN(sniprintf, (char *, size_t, const char *, ...)
 294:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 295:/usr/include/newlib/stdio.h **** int	_EXFUN(vasiprintf, (char **, const char *, __VALIST)
 296:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 297:/usr/include/newlib/stdio.h **** char *	_EXFUN(vasniprintf, (char *, size_t *, const char *, __VALIST)
 298:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 299:/usr/include/newlib/stdio.h **** char *	_EXFUN(vasnprintf, (char *, size_t *, const char *, __VALIST)
 300:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 301:/usr/include/newlib/stdio.h **** int	_EXFUN(vdiprintf, (int, const char *, __VALIST)
 302:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 303:/usr/include/newlib/stdio.h **** int	_EXFUN(vfiprintf, (FILE *, const char *, __VALIST)
 304:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 305:/usr/include/newlib/stdio.h **** int	_EXFUN(vfiscanf, (FILE *, const char *, __VALIST)
 306:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 0))));
 307:/usr/include/newlib/stdio.h **** int	_EXFUN(viprintf, (const char *, __VALIST)
 308:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 1, 0))));
 309:/usr/include/newlib/stdio.h **** int	_EXFUN(viscanf, (const char *, __VALIST)
 310:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 1, 0))));
 311:/usr/include/newlib/stdio.h **** int	_EXFUN(vsiprintf, (char *, const char *, __VALIST)
 312:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 313:/usr/include/newlib/stdio.h **** int	_EXFUN(vsiscanf, (const char *, const char *, __VALIST)
 314:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 0))));
 315:/usr/include/newlib/stdio.h **** int	_EXFUN(vsniprintf, (char *, size_t, const char *, __VALIST)
 316:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 317:/usr/include/newlib/stdio.h **** #endif /* __MISC_VISIBLE */
 318:/usr/include/newlib/stdio.h **** #endif /* !_REENT_ONLY */
 319:/usr/include/newlib/stdio.h **** 
 320:/usr/include/newlib/stdio.h **** /*
 321:/usr/include/newlib/stdio.h ****  * Routines in POSIX 1003.1:2001.
 322:/usr/include/newlib/stdio.h ****  */
 323:/usr/include/newlib/stdio.h **** 
 324:/usr/include/newlib/stdio.h **** #if __POSIX_VISIBLE
 325:/usr/include/newlib/stdio.h **** #ifndef _REENT_ONLY
 326:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(fdopen, (int, const char *));
 327:/usr/include/newlib/stdio.h **** #endif
 328:/usr/include/newlib/stdio.h **** int	_EXFUN(fileno, (FILE *));
 329:/usr/include/newlib/stdio.h **** #endif
 330:/usr/include/newlib/stdio.h **** #if __MISC_VISIBLE || __POSIX_VISIBLE >= 199209
 331:/usr/include/newlib/stdio.h **** int	_EXFUN(pclose, (FILE *));
 332:/usr/include/newlib/stdio.h **** FILE *  _EXFUN(popen, (const char *, const char *));
 333:/usr/include/newlib/stdio.h **** #endif
 334:/usr/include/newlib/stdio.h **** 
 335:/usr/include/newlib/stdio.h **** #if __BSD_VISIBLE
 336:/usr/include/newlib/stdio.h **** void    _EXFUN(setbuffer, (FILE *, char *, int));
 337:/usr/include/newlib/stdio.h **** int	_EXFUN(setlinebuf, (FILE *));
 338:/usr/include/newlib/stdio.h **** #endif
 339:/usr/include/newlib/stdio.h **** 
 340:/usr/include/newlib/stdio.h **** #if __MISC_VISIBLE || (__XSI_VISIBLE && __POSIX_VISIBLE < 200112)
 341:/usr/include/newlib/stdio.h **** int	_EXFUN(getw, (FILE *));
 342:/usr/include/newlib/stdio.h **** int	_EXFUN(putw, (int, FILE *));
 343:/usr/include/newlib/stdio.h **** #endif
 344:/usr/include/newlib/stdio.h **** #if __MISC_VISIBLE || __POSIX_VISIBLE
 345:/usr/include/newlib/stdio.h **** int	_EXFUN(getc_unlocked, (FILE *));
 346:/usr/include/newlib/stdio.h **** int	_EXFUN(getchar_unlocked, (void));
 347:/usr/include/newlib/stdio.h **** void	_EXFUN(flockfile, (FILE *));
 348:/usr/include/newlib/stdio.h **** int	_EXFUN(ftrylockfile, (FILE *));
 349:/usr/include/newlib/stdio.h **** void	_EXFUN(funlockfile, (FILE *));
 350:/usr/include/newlib/stdio.h **** int	_EXFUN(putc_unlocked, (int, FILE *));
 351:/usr/include/newlib/stdio.h **** int	_EXFUN(putchar_unlocked, (int));
 352:/usr/include/newlib/stdio.h **** #endif
 353:/usr/include/newlib/stdio.h **** 
 354:/usr/include/newlib/stdio.h **** /*
 355:/usr/include/newlib/stdio.h ****  * Routines in POSIX 1003.1:200x.
 356:/usr/include/newlib/stdio.h ****  */
 357:/usr/include/newlib/stdio.h **** 
 358:/usr/include/newlib/stdio.h **** #if __POSIX_VISIBLE >= 200809
 359:/usr/include/newlib/stdio.h **** # ifndef _REENT_ONLY
 360:/usr/include/newlib/stdio.h **** #  ifndef dprintf
 361:/usr/include/newlib/stdio.h **** int	_EXFUN(dprintf, (int, const char *__restrict, ...)
 362:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 363:/usr/include/newlib/stdio.h **** #  endif
 364:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(fmemopen, (void *__restrict, size_t, const char *__restrict));
 365:/usr/include/newlib/stdio.h **** /* getdelim - see __getdelim for now */
 366:/usr/include/newlib/stdio.h **** /* getline - see __getline for now */
 367:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(open_memstream, (char **, size_t *));
 368:/usr/include/newlib/stdio.h **** int	_EXFUN(vdprintf, (int, const char *__restrict, __VALIST)
 369:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 370:/usr/include/newlib/stdio.h **** # endif
 371:/usr/include/newlib/stdio.h **** #endif
 372:/usr/include/newlib/stdio.h **** #if __ATFILE_VISIBLE
 373:/usr/include/newlib/stdio.h **** int	_EXFUN(renameat, (int, const char *, int, const char *));
 374:/usr/include/newlib/stdio.h **** #endif
 375:/usr/include/newlib/stdio.h **** 
 376:/usr/include/newlib/stdio.h **** /*
 377:/usr/include/newlib/stdio.h ****  * Recursive versions of the above.
 378:/usr/include/newlib/stdio.h ****  */
 379:/usr/include/newlib/stdio.h **** 
 380:/usr/include/newlib/stdio.h **** int	_EXFUN(_asiprintf_r, (struct _reent *, char **, const char *, ...)
 381:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 382:/usr/include/newlib/stdio.h **** char *	_EXFUN(_asniprintf_r, (struct _reent *, char *, size_t *, const char *, ...)
 383:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 5))));
 384:/usr/include/newlib/stdio.h **** char *	_EXFUN(_asnprintf_r, (struct _reent *, char *__restrict, size_t *__restrict, const char *__r
 385:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 5))));
 386:/usr/include/newlib/stdio.h **** int	_EXFUN(_asprintf_r, (struct _reent *, char **__restrict, const char *__restrict, ...)
 387:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 388:/usr/include/newlib/stdio.h **** int	_EXFUN(_diprintf_r, (struct _reent *, int, const char *, ...)
 389:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 390:/usr/include/newlib/stdio.h **** int	_EXFUN(_dprintf_r, (struct _reent *, int, const char *__restrict, ...)
 391:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 392:/usr/include/newlib/stdio.h **** int	_EXFUN(_fclose_r, (struct _reent *, FILE *));
 393:/usr/include/newlib/stdio.h **** int	_EXFUN(_fcloseall_r, (struct _reent *));
 394:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(_fdopen_r, (struct _reent *, int, const char *));
 395:/usr/include/newlib/stdio.h **** int	_EXFUN(_fflush_r, (struct _reent *, FILE *));
 396:/usr/include/newlib/stdio.h **** int	_EXFUN(_fgetc_r, (struct _reent *, FILE *));
 397:/usr/include/newlib/stdio.h **** int	_EXFUN(_fgetc_unlocked_r, (struct _reent *, FILE *));
 398:/usr/include/newlib/stdio.h **** char *  _EXFUN(_fgets_r, (struct _reent *, char *__restrict, int, FILE *__restrict));
 399:/usr/include/newlib/stdio.h **** char *  _EXFUN(_fgets_unlocked_r, (struct _reent *, char *__restrict, int, FILE *__restrict));
 400:/usr/include/newlib/stdio.h **** #ifdef _COMPILING_NEWLIB
 401:/usr/include/newlib/stdio.h **** int	_EXFUN(_fgetpos_r, (struct _reent *, FILE *__restrict, _fpos_t *__restrict));
 402:/usr/include/newlib/stdio.h **** int	_EXFUN(_fsetpos_r, (struct _reent *, FILE *, const _fpos_t *));
 403:/usr/include/newlib/stdio.h **** #else
 404:/usr/include/newlib/stdio.h **** int	_EXFUN(_fgetpos_r, (struct _reent *, FILE *, fpos_t *));
 405:/usr/include/newlib/stdio.h **** int	_EXFUN(_fsetpos_r, (struct _reent *, FILE *, const fpos_t *));
 406:/usr/include/newlib/stdio.h **** #endif
 407:/usr/include/newlib/stdio.h **** int	_EXFUN(_fiprintf_r, (struct _reent *, FILE *, const char *, ...)
 408:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 409:/usr/include/newlib/stdio.h **** int	_EXFUN(_fiscanf_r, (struct _reent *, FILE *, const char *, ...)
 410:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 4))));
 411:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(_fmemopen_r, (struct _reent *, void *__restrict, size_t, const char *__restrict));
 412:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(_fopen_r, (struct _reent *, const char *__restrict, const char *__restrict));
 413:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(_freopen_r, (struct _reent *, const char *__restrict, const char *__restrict, FILE *_
 414:/usr/include/newlib/stdio.h **** int	_EXFUN(_fprintf_r, (struct _reent *, FILE *__restrict, const char *__restrict, ...)
 415:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 416:/usr/include/newlib/stdio.h **** int	_EXFUN(_fpurge_r, (struct _reent *, FILE *));
 417:/usr/include/newlib/stdio.h **** int	_EXFUN(_fputc_r, (struct _reent *, int, FILE *));
 418:/usr/include/newlib/stdio.h **** int	_EXFUN(_fputc_unlocked_r, (struct _reent *, int, FILE *));
 419:/usr/include/newlib/stdio.h **** int	_EXFUN(_fputs_r, (struct _reent *, const char *__restrict, FILE *__restrict));
 420:/usr/include/newlib/stdio.h **** int	_EXFUN(_fputs_unlocked_r, (struct _reent *, const char *__restrict, FILE *__restrict));
 421:/usr/include/newlib/stdio.h **** size_t	_EXFUN(_fread_r, (struct _reent *, _PTR __restrict, size_t _size, size_t _n, FILE *__restric
 422:/usr/include/newlib/stdio.h **** size_t	_EXFUN(_fread_unlocked_r, (struct _reent *, _PTR __restrict, size_t _size, size_t _n, FILE *
 423:/usr/include/newlib/stdio.h **** int	_EXFUN(_fscanf_r, (struct _reent *, FILE *__restrict, const char *__restrict, ...)
 424:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 4))));
 425:/usr/include/newlib/stdio.h **** int	_EXFUN(_fseek_r, (struct _reent *, FILE *, long, int));
 426:/usr/include/newlib/stdio.h **** int	_EXFUN(_fseeko_r,(struct _reent *, FILE *, _off_t, int));
 427:/usr/include/newlib/stdio.h **** long	_EXFUN(_ftell_r, (struct _reent *, FILE *));
 428:/usr/include/newlib/stdio.h **** _off_t	_EXFUN(_ftello_r,(struct _reent *, FILE *));
 429:/usr/include/newlib/stdio.h **** void	_EXFUN(_rewind_r, (struct _reent *, FILE *));
 430:/usr/include/newlib/stdio.h **** size_t	_EXFUN(_fwrite_r, (struct _reent *, const _PTR __restrict, size_t _size, size_t _n, FILE *__
 431:/usr/include/newlib/stdio.h **** size_t	_EXFUN(_fwrite_unlocked_r, (struct _reent *, const _PTR __restrict, size_t _size, size_t _n,
 432:/usr/include/newlib/stdio.h **** int	_EXFUN(_getc_r, (struct _reent *, FILE *));
 433:/usr/include/newlib/stdio.h **** int	_EXFUN(_getc_unlocked_r, (struct _reent *, FILE *));
 434:/usr/include/newlib/stdio.h **** int	_EXFUN(_getchar_r, (struct _reent *));
 435:/usr/include/newlib/stdio.h **** int	_EXFUN(_getchar_unlocked_r, (struct _reent *));
 436:/usr/include/newlib/stdio.h **** char *	_EXFUN(_gets_r, (struct _reent *, char *));
 437:/usr/include/newlib/stdio.h **** int	_EXFUN(_iprintf_r, (struct _reent *, const char *, ...)
 438:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 439:/usr/include/newlib/stdio.h **** int	_EXFUN(_iscanf_r, (struct _reent *, const char *, ...)
 440:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 3))));
 441:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(_open_memstream_r, (struct _reent *, char **, size_t *));
 442:/usr/include/newlib/stdio.h **** void	_EXFUN(_perror_r, (struct _reent *, const char *));
 443:/usr/include/newlib/stdio.h **** int	_EXFUN(_printf_r, (struct _reent *, const char *__restrict, ...)
 444:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 3))));
 445:/usr/include/newlib/stdio.h **** int	_EXFUN(_putc_r, (struct _reent *, int, FILE *));
 446:/usr/include/newlib/stdio.h **** int	_EXFUN(_putc_unlocked_r, (struct _reent *, int, FILE *));
 447:/usr/include/newlib/stdio.h **** int	_EXFUN(_putchar_unlocked_r, (struct _reent *, int));
 448:/usr/include/newlib/stdio.h **** int	_EXFUN(_putchar_r, (struct _reent *, int));
 449:/usr/include/newlib/stdio.h **** int	_EXFUN(_puts_r, (struct _reent *, const char *));
 450:/usr/include/newlib/stdio.h **** int	_EXFUN(_remove_r, (struct _reent *, const char *));
 451:/usr/include/newlib/stdio.h **** int	_EXFUN(_rename_r, (struct _reent *,
 452:/usr/include/newlib/stdio.h **** 			   const char *_old, const char *_new));
 453:/usr/include/newlib/stdio.h **** int	_EXFUN(_scanf_r, (struct _reent *, const char *__restrict, ...)
 454:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 3))));
 455:/usr/include/newlib/stdio.h **** int	_EXFUN(_siprintf_r, (struct _reent *, char *, const char *, ...)
 456:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 457:/usr/include/newlib/stdio.h **** int	_EXFUN(_siscanf_r, (struct _reent *, const char *, const char *, ...)
 458:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 4))));
 459:/usr/include/newlib/stdio.h **** int	_EXFUN(_sniprintf_r, (struct _reent *, char *, size_t, const char *, ...)
 460:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 5))));
 461:/usr/include/newlib/stdio.h **** int	_EXFUN(_snprintf_r, (struct _reent *, char *__restrict, size_t, const char *__restrict, ...)
 462:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 5))));
 463:/usr/include/newlib/stdio.h **** int	_EXFUN(_sprintf_r, (struct _reent *, char *__restrict, const char *__restrict, ...)
 464:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 4))));
 465:/usr/include/newlib/stdio.h **** int	_EXFUN(_sscanf_r, (struct _reent *, const char *__restrict, const char *__restrict, ...)
 466:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 4))));
 467:/usr/include/newlib/stdio.h **** char *	_EXFUN(_tempnam_r, (struct _reent *, const char *, const char *));
 468:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(_tmpfile_r, (struct _reent *));
 469:/usr/include/newlib/stdio.h **** char *	_EXFUN(_tmpnam_r, (struct _reent *, char *));
 470:/usr/include/newlib/stdio.h **** int	_EXFUN(_ungetc_r, (struct _reent *, int, FILE *));
 471:/usr/include/newlib/stdio.h **** int	_EXFUN(_vasiprintf_r, (struct _reent *, char **, const char *, __VALIST)
 472:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 473:/usr/include/newlib/stdio.h **** char *	_EXFUN(_vasniprintf_r, (struct _reent*, char *, size_t *, const char *, __VALIST)
 474:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 0))));
 475:/usr/include/newlib/stdio.h **** char *	_EXFUN(_vasnprintf_r, (struct _reent*, char *, size_t *, const char *, __VALIST)
 476:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 0))));
 477:/usr/include/newlib/stdio.h **** int	_EXFUN(_vasprintf_r, (struct _reent *, char **, const char *, __VALIST)
 478:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 479:/usr/include/newlib/stdio.h **** int	_EXFUN(_vdiprintf_r, (struct _reent *, int, const char *, __VALIST)
 480:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 481:/usr/include/newlib/stdio.h **** int	_EXFUN(_vdprintf_r, (struct _reent *, int, const char *__restrict, __VALIST)
 482:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 483:/usr/include/newlib/stdio.h **** int	_EXFUN(_vfiprintf_r, (struct _reent *, FILE *, const char *, __VALIST)
 484:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 485:/usr/include/newlib/stdio.h **** int	_EXFUN(_vfiscanf_r, (struct _reent *, FILE *, const char *, __VALIST)
 486:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 0))));
 487:/usr/include/newlib/stdio.h **** int	_EXFUN(_vfprintf_r, (struct _reent *, FILE *__restrict, const char *__restrict, __VALIST)
 488:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 489:/usr/include/newlib/stdio.h **** int	_EXFUN(_vfscanf_r, (struct _reent *, FILE *__restrict, const char *__restrict, __VALIST)
 490:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 0))));
 491:/usr/include/newlib/stdio.h **** int	_EXFUN(_viprintf_r, (struct _reent *, const char *, __VALIST)
 492:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 493:/usr/include/newlib/stdio.h **** int	_EXFUN(_viscanf_r, (struct _reent *, const char *, __VALIST)
 494:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 0))));
 495:/usr/include/newlib/stdio.h **** int	_EXFUN(_vprintf_r, (struct _reent *, const char *__restrict, __VALIST)
 496:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 2, 0))));
 497:/usr/include/newlib/stdio.h **** int	_EXFUN(_vscanf_r, (struct _reent *, const char *__restrict, __VALIST)
 498:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 2, 0))));
 499:/usr/include/newlib/stdio.h **** int	_EXFUN(_vsiprintf_r, (struct _reent *, char *, const char *, __VALIST)
 500:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 501:/usr/include/newlib/stdio.h **** int	_EXFUN(_vsiscanf_r, (struct _reent *, const char *, const char *, __VALIST)
 502:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 0))));
 503:/usr/include/newlib/stdio.h **** int	_EXFUN(_vsniprintf_r, (struct _reent *, char *, size_t, const char *, __VALIST)
 504:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 0))));
 505:/usr/include/newlib/stdio.h **** int	_EXFUN(_vsnprintf_r, (struct _reent *, char *__restrict, size_t, const char *__restrict, __VALI
 506:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 4, 0))));
 507:/usr/include/newlib/stdio.h **** int	_EXFUN(_vsprintf_r, (struct _reent *, char *__restrict, const char *__restrict, __VALIST)
 508:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__printf__, 3, 0))));
 509:/usr/include/newlib/stdio.h **** int	_EXFUN(_vsscanf_r, (struct _reent *, const char *__restrict, const char *__restrict, __VALIST)
 510:/usr/include/newlib/stdio.h ****                _ATTRIBUTE ((__format__ (__scanf__, 3, 0))));
 511:/usr/include/newlib/stdio.h **** 
 512:/usr/include/newlib/stdio.h **** /* Other extensions.  */
 513:/usr/include/newlib/stdio.h **** 
 514:/usr/include/newlib/stdio.h **** int	_EXFUN(fpurge, (FILE *));
 515:/usr/include/newlib/stdio.h **** ssize_t _EXFUN(__getdelim, (char **, size_t *, int, FILE *));
 516:/usr/include/newlib/stdio.h **** ssize_t _EXFUN(__getline, (char **, size_t *, FILE *));
 517:/usr/include/newlib/stdio.h **** 
 518:/usr/include/newlib/stdio.h **** #if __MISC_VISIBLE
 519:/usr/include/newlib/stdio.h **** void	_EXFUN(clearerr_unlocked, (FILE *));
 520:/usr/include/newlib/stdio.h **** int	_EXFUN(feof_unlocked, (FILE *));
 521:/usr/include/newlib/stdio.h **** int	_EXFUN(ferror_unlocked, (FILE *));
 522:/usr/include/newlib/stdio.h **** int	_EXFUN(fileno_unlocked, (FILE *));
 523:/usr/include/newlib/stdio.h **** int	_EXFUN(fflush_unlocked, (FILE *));
 524:/usr/include/newlib/stdio.h **** int	_EXFUN(fgetc_unlocked, (FILE *));
 525:/usr/include/newlib/stdio.h **** int	_EXFUN(fputc_unlocked, (int, FILE *));
 526:/usr/include/newlib/stdio.h **** size_t	_EXFUN(fread_unlocked, (_PTR __restrict, size_t _size, size_t _n, FILE *__restrict));
 527:/usr/include/newlib/stdio.h **** size_t	_EXFUN(fwrite_unlocked, (const _PTR __restrict , size_t _size, size_t _n, FILE *));
 528:/usr/include/newlib/stdio.h **** #endif
 529:/usr/include/newlib/stdio.h **** 
 530:/usr/include/newlib/stdio.h **** #if __GNU_VISIBLE
 531:/usr/include/newlib/stdio.h **** char *  _EXFUN(fgets_unlocked, (char *__restrict, int, FILE *__restrict));
 532:/usr/include/newlib/stdio.h **** int	_EXFUN(fputs_unlocked, (const char *__restrict, FILE *__restrict));
 533:/usr/include/newlib/stdio.h **** #endif
 534:/usr/include/newlib/stdio.h **** 
 535:/usr/include/newlib/stdio.h **** #ifdef __LARGE64_FILES
 536:/usr/include/newlib/stdio.h **** #if !defined(__CYGWIN__) || defined(_COMPILING_NEWLIB)
 537:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(fdopen64, (int, const char *));
 538:/usr/include/newlib/stdio.h **** FILE *  _EXFUN(fopen64, (const char *, const char *));
 539:/usr/include/newlib/stdio.h **** FILE *  _EXFUN(freopen64, (_CONST char *, _CONST char *, FILE *));
 540:/usr/include/newlib/stdio.h **** _off64_t _EXFUN(ftello64, (FILE *));
 541:/usr/include/newlib/stdio.h **** _off64_t _EXFUN(fseeko64, (FILE *, _off64_t, int));
 542:/usr/include/newlib/stdio.h **** int     _EXFUN(fgetpos64, (FILE *, _fpos64_t *));
 543:/usr/include/newlib/stdio.h **** int     _EXFUN(fsetpos64, (FILE *, const _fpos64_t *));
 544:/usr/include/newlib/stdio.h **** FILE *  _EXFUN(tmpfile64, (void));
 545:/usr/include/newlib/stdio.h **** 
 546:/usr/include/newlib/stdio.h **** FILE *	_EXFUN(_fdopen64_r, (struct _reent *, int, const char *));
 547:/usr/include/newlib/stdio.h **** FILE *  _EXFUN(_fopen64_r, (struct _reent *,const char *, const char *));
 548:/usr/include/newlib/stdio.h **** FILE *  _EXFUN(_freopen64_r, (struct _reent *, _CONST char *, _CONST char *, FILE *));
 549:/usr/include/newlib/stdio.h **** _off64_t _EXFUN(_ftello64_r, (struct _reent *, FILE *));
 550:/usr/include/newlib/stdio.h **** _off64_t _EXFUN(_fseeko64_r, (struct _reent *, FILE *, _off64_t, int));
 551:/usr/include/newlib/stdio.h **** int     _EXFUN(_fgetpos64_r, (struct _reent *, FILE *, _fpos64_t *));
 552:/usr/include/newlib/stdio.h **** int     _EXFUN(_fsetpos64_r, (struct _reent *, FILE *, const _fpos64_t *));
 553:/usr/include/newlib/stdio.h **** FILE *  _EXFUN(_tmpfile64_r, (struct _reent *));
 554:/usr/include/newlib/stdio.h **** #endif /* !__CYGWIN__ */
 555:/usr/include/newlib/stdio.h **** #endif /* __LARGE64_FILES */
 556:/usr/include/newlib/stdio.h **** 
 557:/usr/include/newlib/stdio.h **** /*
 558:/usr/include/newlib/stdio.h ****  * Routines internal to the implementation.
 559:/usr/include/newlib/stdio.h ****  */
 560:/usr/include/newlib/stdio.h **** 
 561:/usr/include/newlib/stdio.h **** int	_EXFUN(__srget_r, (struct _reent *, FILE *));
 562:/usr/include/newlib/stdio.h **** int	_EXFUN(__swbuf_r, (struct _reent *, int, FILE *));
 563:/usr/include/newlib/stdio.h **** 
 564:/usr/include/newlib/stdio.h **** /*
 565:/usr/include/newlib/stdio.h ****  * Stdio function-access interface.
 566:/usr/include/newlib/stdio.h ****  */
 567:/usr/include/newlib/stdio.h **** 
 568:/usr/include/newlib/stdio.h **** #if __BSD_VISIBLE
 569:/usr/include/newlib/stdio.h **** # ifdef __LARGE64_FILES
 570:/usr/include/newlib/stdio.h **** FILE	*_EXFUN(funopen,(const _PTR __cookie,
 571:/usr/include/newlib/stdio.h **** 		int (*__readfn)(_PTR __c, char *__buf,
 572:/usr/include/newlib/stdio.h **** 				_READ_WRITE_BUFSIZE_TYPE __n),
 573:/usr/include/newlib/stdio.h **** 		int (*__writefn)(_PTR __c, const char *__buf,
 574:/usr/include/newlib/stdio.h **** 				 _READ_WRITE_BUFSIZE_TYPE __n),
 575:/usr/include/newlib/stdio.h **** 		_fpos64_t (*__seekfn)(_PTR __c, _fpos64_t __off, int __whence),
 576:/usr/include/newlib/stdio.h **** 		int (*__closefn)(_PTR __c)));
 577:/usr/include/newlib/stdio.h **** FILE	*_EXFUN(_funopen_r,(struct _reent *, const _PTR __cookie,
 578:/usr/include/newlib/stdio.h **** 		int (*__readfn)(_PTR __c, char *__buf,
 579:/usr/include/newlib/stdio.h **** 				_READ_WRITE_BUFSIZE_TYPE __n),
 580:/usr/include/newlib/stdio.h **** 		int (*__writefn)(_PTR __c, const char *__buf,
 581:/usr/include/newlib/stdio.h **** 				 _READ_WRITE_BUFSIZE_TYPE __n),
 582:/usr/include/newlib/stdio.h **** 		_fpos64_t (*__seekfn)(_PTR __c, _fpos64_t __off, int __whence),
 583:/usr/include/newlib/stdio.h **** 		int (*__closefn)(_PTR __c)));
 584:/usr/include/newlib/stdio.h **** # else
 585:/usr/include/newlib/stdio.h **** FILE	*_EXFUN(funopen,(const _PTR __cookie,
 586:/usr/include/newlib/stdio.h **** 		int (*__readfn)(_PTR __cookie, char *__buf,
 587:/usr/include/newlib/stdio.h **** 				_READ_WRITE_BUFSIZE_TYPE __n),
 588:/usr/include/newlib/stdio.h **** 		int (*__writefn)(_PTR __cookie, const char *__buf,
 589:/usr/include/newlib/stdio.h **** 				 _READ_WRITE_BUFSIZE_TYPE __n),
 590:/usr/include/newlib/stdio.h **** 		fpos_t (*__seekfn)(_PTR __cookie, fpos_t __off, int __whence),
 591:/usr/include/newlib/stdio.h **** 		int (*__closefn)(_PTR __cookie)));
 592:/usr/include/newlib/stdio.h **** FILE	*_EXFUN(_funopen_r,(struct _reent *, const _PTR __cookie,
 593:/usr/include/newlib/stdio.h **** 		int (*__readfn)(_PTR __cookie, char *__buf,
 594:/usr/include/newlib/stdio.h **** 				_READ_WRITE_BUFSIZE_TYPE __n),
 595:/usr/include/newlib/stdio.h **** 		int (*__writefn)(_PTR __cookie, const char *__buf,
 596:/usr/include/newlib/stdio.h **** 				 _READ_WRITE_BUFSIZE_TYPE __n),
 597:/usr/include/newlib/stdio.h **** 		fpos_t (*__seekfn)(_PTR __cookie, fpos_t __off, int __whence),
 598:/usr/include/newlib/stdio.h **** 		int (*__closefn)(_PTR __cookie)));
 599:/usr/include/newlib/stdio.h **** # endif /* !__LARGE64_FILES */
 600:/usr/include/newlib/stdio.h **** 
 601:/usr/include/newlib/stdio.h **** # define	fropen(__cookie, __fn) funopen(__cookie, __fn, (int (*)())0, \
 602:/usr/include/newlib/stdio.h **** 					       (fpos_t (*)())0, (int (*)())0)
 603:/usr/include/newlib/stdio.h **** # define	fwopen(__cookie, __fn) funopen(__cookie, (int (*)())0, __fn, \
 604:/usr/include/newlib/stdio.h **** 					       (fpos_t (*)())0, (int (*)())0)
 605:/usr/include/newlib/stdio.h **** #endif /* __BSD_VISIBLE */
 606:/usr/include/newlib/stdio.h **** 
 607:/usr/include/newlib/stdio.h **** #if __GNU_VISIBLE
 608:/usr/include/newlib/stdio.h **** typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
 609:/usr/include/newlib/stdio.h **** typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
 610:/usr/include/newlib/stdio.h **** 					size_t __n);
 611:/usr/include/newlib/stdio.h **** # ifdef __LARGE64_FILES
 612:/usr/include/newlib/stdio.h **** typedef int cookie_seek_function_t(void *__cookie, _off64_t *__off,
 613:/usr/include/newlib/stdio.h **** 				   int __whence);
 614:/usr/include/newlib/stdio.h **** # else
 615:/usr/include/newlib/stdio.h **** typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);
 616:/usr/include/newlib/stdio.h **** # endif /* !__LARGE64_FILES */
 617:/usr/include/newlib/stdio.h **** typedef int cookie_close_function_t(void *__cookie);
 618:/usr/include/newlib/stdio.h **** typedef struct
 619:/usr/include/newlib/stdio.h **** {
 620:/usr/include/newlib/stdio.h ****   /* These four struct member names are dictated by Linux; hopefully,
 621:/usr/include/newlib/stdio.h ****      they don't conflict with any macros.  */
 622:/usr/include/newlib/stdio.h ****   cookie_read_function_t  *read;
 623:/usr/include/newlib/stdio.h ****   cookie_write_function_t *write;
 624:/usr/include/newlib/stdio.h ****   cookie_seek_function_t  *seek;
 625:/usr/include/newlib/stdio.h ****   cookie_close_function_t *close;
 626:/usr/include/newlib/stdio.h **** } cookie_io_functions_t;
 627:/usr/include/newlib/stdio.h **** FILE *_EXFUN(fopencookie,(void *__cookie,
 628:/usr/include/newlib/stdio.h **** 		const char *__mode, cookie_io_functions_t __functions));
 629:/usr/include/newlib/stdio.h **** FILE *_EXFUN(_fopencookie_r,(struct _reent *, void *__cookie,
 630:/usr/include/newlib/stdio.h **** 		const char *__mode, cookie_io_functions_t __functions));
 631:/usr/include/newlib/stdio.h **** #endif /* __GNU_VISIBLE */
 632:/usr/include/newlib/stdio.h **** 
 633:/usr/include/newlib/stdio.h **** #ifndef __CUSTOM_FILE_IO__
 634:/usr/include/newlib/stdio.h **** /*
 635:/usr/include/newlib/stdio.h ****  * The __sfoo macros are here so that we can 
 636:/usr/include/newlib/stdio.h ****  * define function versions in the C library.
 637:/usr/include/newlib/stdio.h ****  */
 638:/usr/include/newlib/stdio.h **** #define       __sgetc_raw_r(__ptr, __f) (--(__f)->_r < 0 ? __srget_r(__ptr, __f) : (int)(*(__f)->_p
 639:/usr/include/newlib/stdio.h **** 
 640:/usr/include/newlib/stdio.h **** #ifdef __SCLE
 641:/usr/include/newlib/stdio.h **** /*  For a platform with CR/LF, additional logic is required by
 642:/usr/include/newlib/stdio.h ****   __sgetc_r which would otherwise simply be a macro; therefore we
 643:/usr/include/newlib/stdio.h ****   use an inlined function.  The function is only meant to be inlined
 644:/usr/include/newlib/stdio.h ****   in place as used and the function body should never be emitted.  
 645:/usr/include/newlib/stdio.h **** 
 646:/usr/include/newlib/stdio.h ****   There are two possible means to this end when compiling with GCC,
 647:/usr/include/newlib/stdio.h ****   one when compiling with a standard C99 compiler, and for other
 648:/usr/include/newlib/stdio.h ****   compilers we're just stuck.  At the moment, this issue only
 649:/usr/include/newlib/stdio.h ****   affects the Cygwin target, so we'll most likely be using GCC. */
 650:/usr/include/newlib/stdio.h **** 
 651:/usr/include/newlib/stdio.h **** _ELIDABLE_INLINE int __sgetc_r(struct _reent *__ptr, FILE *__p);
 652:/usr/include/newlib/stdio.h **** 
 653:/usr/include/newlib/stdio.h **** _ELIDABLE_INLINE int __sgetc_r(struct _reent *__ptr, FILE *__p)
 654:/usr/include/newlib/stdio.h ****   {
 655:/usr/include/newlib/stdio.h ****     int __c = __sgetc_raw_r(__ptr, __p);
 656:/usr/include/newlib/stdio.h ****     if ((__p->_flags & __SCLE) && (__c == '\r'))
 657:/usr/include/newlib/stdio.h ****       {
 658:/usr/include/newlib/stdio.h ****       int __c2 = __sgetc_raw_r(__ptr, __p);
 659:/usr/include/newlib/stdio.h ****       if (__c2 == '\n')
 660:/usr/include/newlib/stdio.h ****         __c = __c2;
 661:/usr/include/newlib/stdio.h ****       else
 662:/usr/include/newlib/stdio.h ****         ungetc(__c2, __p);
 663:/usr/include/newlib/stdio.h ****       }
 664:/usr/include/newlib/stdio.h ****     return __c;
 665:/usr/include/newlib/stdio.h ****   }
 666:/usr/include/newlib/stdio.h **** #else
 667:/usr/include/newlib/stdio.h **** #define __sgetc_r(__ptr, __p) __sgetc_raw_r(__ptr, __p)
 668:/usr/include/newlib/stdio.h **** #endif
 669:/usr/include/newlib/stdio.h **** 
 670:/usr/include/newlib/stdio.h **** #ifdef __GNUC__
 671:/usr/include/newlib/stdio.h **** _ELIDABLE_INLINE int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {
 672:/usr/include/newlib/stdio.h **** #ifdef __SCLE
 673:/usr/include/newlib/stdio.h **** 	if ((_p->_flags & __SCLE) && _c == '\n')
 674:/usr/include/newlib/stdio.h **** 	  __sputc_r (_ptr, '\r', _p);
 675:/usr/include/newlib/stdio.h **** #endif
 676:/usr/include/newlib/stdio.h **** 	if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
 677:/usr/include/newlib/stdio.h **** 		return (*_p->_p++ = _c);
 201              		.loc 3 677 0
 202 004e 1A68     		ldr	r2, [r3]
 203 0050 511C     		adds	r1, r2, #1
 204 0052 1960     		str	r1, [r3]
 205 0054 82F800C0 		strb	ip, [r2]
 206              	.LVL15:
 207              	.L18:
 208              	.LBE22:
 209              	.LBE21:
  38:src/main.c    **** 		  if (rxrp2>=RXBUFSIZE) rxrp2=0;
 210              		.loc 1 38 0
 211 0058 2288     		ldrh	r2, [r4]
 212 005a 0132     		adds	r2, r2, #1
 213 005c 12B2     		sxth	r2, r2
 214 005e 2280     		strh	r2, [r4]	@ movhi
  39:src/main.c    **** 		  j=0;
 215              		.loc 1 39 0
 216 0060 2288     		ldrh	r2, [r4]
 217 0062 12B2     		sxth	r2, r2
  40:src/main.c    **** 	  }
 218              		.loc 1 40 0
 219 0064 4FF0000B 		mov	fp, #0
  39:src/main.c    **** 		  j=0;
 220              		.loc 1 39 0
 221 0068 FF2A     		cmp	r2, #255
 222 006a C8BF     		it	gt
 223 006c A4F800B0 		strhgt	fp, [r4]	@ movhi
 224              	.L19:
 225              	.LBE20:
  34:src/main.c    **** 		  char c;
 226              		.loc 1 34 0
 227 0070 2888     		ldrh	r0, [r5]
 228 0072 2288     		ldrh	r2, [r4]
 229 0074 00B2     		sxth	r0, r0
 230 0076 12B2     		sxth	r2, r2
 231 0078 9042     		cmp	r0, r2
 232 007a 15D0     		beq	.L27
 233              	.LBB29:
  37:src/main.c    **** 		  rxrp2++;
 234              		.loc 1 37 0
 235 007c 3068     		ldr	r0, [r6]
  36:src/main.c    **** 		  putchar(c);
 236              		.loc 1 36 0
 237 007e 2188     		ldrh	r1, [r4]
  37:src/main.c    **** 		  rxrp2++;
 238              		.loc 1 37 0
 239 0080 8368     		ldr	r3, [r0, #8]
 240              	.LBB26:
 241              	.LBB23:
 676:/usr/include/newlib/stdio.h **** 		return (*_p->_p++ = _c);
 242              		.loc 3 676 0
 243 0082 9A68     		ldr	r2, [r3, #8]
 244              	.LBE23:
 245              	.LBE26:
  36:src/main.c    **** 		  putchar(c);
 246              		.loc 1 36 0
 247 0084 09B2     		sxth	r1, r1
 248              	.LBB27:
 249              	.LBB24:
 676:/usr/include/newlib/stdio.h **** 		return (*_p->_p++ = _c);
 250              		.loc 3 676 0
 251 0086 013A     		subs	r2, r2, #1
 252 0088 002A     		cmp	r2, #0
 253              	.LBE24:
 254              	.LBE27:
  36:src/main.c    **** 		  putchar(c);
 255              		.loc 1 36 0
 256 008a 1AF801C0 		ldrb	ip, [r10, r1]	@ zero_extendqisi2
 257              	.LVL16:
 258              	.LBB28:
 259              	.LBB25:
 676:/usr/include/newlib/stdio.h **** 		return (*_p->_p++ = _c);
 260              		.loc 3 676 0
 261 008e 9A60     		str	r2, [r3, #8]
 262 0090 DDDA     		bge	.L16
 263 0092 9969     		ldr	r1, [r3, #24]
 264 0094 8A42     		cmp	r2, r1
 678:/usr/include/newlib/stdio.h **** 	else
 679:/usr/include/newlib/stdio.h **** 		return (__swbuf_r(_ptr, _c, _p));
 265              		.loc 3 679 0
 266 0096 1A46     		mov	r2, r3
 267 0098 6146     		mov	r1, ip
 676:/usr/include/newlib/stdio.h **** 		return (*_p->_p++ = _c);
 268              		.loc 3 676 0
 269 009a 02DB     		blt	.L17
 270 009c BCF10A0F 		cmp	ip, #10
 271 00a0 D5D1     		bne	.L16
 272              	.L17:
 273              		.loc 3 679 0
 274 00a2 FFF7FEFF 		bl	__swbuf_r
 275              	.LVL17:
 276 00a6 D7E7     		b	.L18
 277              	.L27:
 278              	.LBE25:
 279              	.LBE28:
 280              	.LBE29:
  43:src/main.c    **** 	  i++;
 281              		.loc 1 43 0
 282 00a8 0BF1010B 		add	fp, fp, #1
  42:src/main.c    **** 	  j++;
 283              		.loc 1 42 0
 284 00ac 6420     		movs	r0, #100
 285 00ae FFF7FEFF 		bl	chThdSleep
 286              	.LVL18:
  45:src/main.c    **** 		  printf("running %d\n",i);
 287              		.loc 1 45 0
 288 00b2 BBF1090F 		cmp	fp, #9
  44:src/main.c    **** 	  if (j>=10) {
 289              		.loc 1 44 0
 290 00b6 07F10107 		add	r7, r7, #1
 291              	.LVL19:
  45:src/main.c    **** 		  printf("running %d\n",i);
 292              		.loc 1 45 0
 293 00ba BDDD     		ble	.L13
  46:src/main.c    **** 		  j=0;
 294              		.loc 1 46 0
 295 00bc 3946     		mov	r1, r7
 296 00be 0C48     		ldr	r0, .L28+36
 297 00c0 FFF7FEFF 		bl	printf
 298              	.LVL20:
  47:src/main.c    **** 	  }
 299              		.loc 1 47 0
 300 00c4 4FF0000B 		mov	fp, #0
 301 00c8 B6E7     		b	.L13
 302              	.L29:
 303 00ca 00BF     		.align	2
 304              	.L28:
 305 00cc 00000000 		.word	ch
 306 00d0 08000000 		.word	.LC3
 307 00d4 00000000 		.word	.LC2
 308 00d8 00000000 		.word	.LANCHOR0
 309 00dc 00000000 		.word	_impure_ptr
 310 00e0 00000000 		.word	rxbp2
 311 00e4 18000000 		.word	.LC4
 312 00e8 00000000 		.word	rxrp2
 313 00ec 20000000 		.word	.LC5
 314 00f0 28000000 		.word	.LC6
 315 00f4 00000000 		.word	rxidl2
 316 00f8 00000000 		.word	rxbuf2
 317              		.cfi_endproc
 318              	.LFE233:
 320              		.section	.text.main1,"ax",%progbits
 321              		.align	1
 322              		.p2align 2,,3
 323              		.global	main1
 324              		.syntax unified
 325              		.thumb
 326              		.thumb_func
 327              		.fpu fpv4-sp-d16
 329              	main1:
 330              	.LFB235:
  80:src/main.c    **** 		}
  81:src/main.c    **** 	}
  82:src/main.c    **** }
  83:src/main.c    **** 
  84:src/main.c    **** 
  85:src/main.c    **** int main1(void)
  86:src/main.c    **** {
 331              		.loc 1 86 0
 332              		.cfi_startproc
 333              		@ Volatile: function does not return.
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336 0000 00B5     		push	{lr}
 337              		.cfi_def_cfa_offset 4
 338              		.cfi_offset 14, -4
 339 0002 83B0     		sub	sp, sp, #12
 340              		.cfi_def_cfa_offset 16
  87:src/main.c    **** 
  88:src/main.c    **** 	  chSysInit();
 341              		.loc 1 88 0
 342 0004 FFF7FEFF 		bl	chSysInit
 343              	.LVL21:
  89:src/main.c    **** 	  init_USART2();
 344              		.loc 1 89 0
 345 0008 FFF7FEFF 		bl	init_USART2
 346              	.LVL22:
  90:src/main.c    **** 	  printf("Hello World 2\n");
 347              		.loc 1 90 0
 348 000c 0F48     		ldr	r0, .L33
 349 000e FFF7FEFF 		bl	puts
 350              	.LVL23:
  91:src/main.c    **** 	  SendDataUSART2("Hello world 1\n", 14);
  92:src/main.c    **** 
  93:src/main.c    **** 
  94:src/main.c    **** 	  chThdCreateStatic(waThread_blink, sizeof(waThread_blink), NORMALPRIO, Thread_blink, NULL);
 351              		.loc 1 94 0
 352 0012 0024     		movs	r4, #0
  91:src/main.c    **** 	  SendDataUSART2("Hello world 1\n", 14);
 353              		.loc 1 91 0
 354 0014 0E21     		movs	r1, #14
 355 0016 0E48     		ldr	r0, .L33+4
 356 0018 FFF7FEFF 		bl	SendDataUSART2
 357              	.LVL24:
 358              		.loc 1 94 0
 359 001c 0D4B     		ldr	r3, .L33+8
 360 001e 0094     		str	r4, [sp]
 361 0020 4022     		movs	r2, #64
 362 0022 4FF4E871 		mov	r1, #464
 363 0026 0C48     		ldr	r0, .L33+12
 364 0028 FFF7FEFF 		bl	chThdCreateStatic
 365              	.LVL25:
  95:src/main.c    **** 	  chThdCreateStatic(waThread_uart, sizeof(waThread_uart), NORMALPRIO, Thread_uart, NULL);
 366              		.loc 1 95 0
 367 002c 0094     		str	r4, [sp]
 368 002e 0B4B     		ldr	r3, .L33+16
 369 0030 0B48     		ldr	r0, .L33+20
 370 0032 4022     		movs	r2, #64
 371 0034 4FF4AA61 		mov	r1, #1360
 372 0038 FFF7FEFF 		bl	chThdCreateStatic
 373              	.LVL26:
  96:src/main.c    **** 	  chThdSetPriority(LOWPRIO);
 374              		.loc 1 96 0
 375 003c 0220     		movs	r0, #2
 376 003e FFF7FEFF 		bl	chThdSetPriority
 377              	.LVL27:
 378              	.L31:
  97:src/main.c    **** 
  98:src/main.c    **** 	  while (1)
  99:src/main.c    **** 	  {
 100:src/main.c    **** 		    chThdSleepMilliseconds(10);
 379              		.loc 1 100 0 discriminator 1
 380 0042 0A20     		movs	r0, #10
 381 0044 FFF7FEFF 		bl	chThdSleep
 382              	.LVL28:
 383 0048 FBE7     		b	.L31
 384              	.L34:
 385 004a 00BF     		.align	2
 386              	.L33:
 387 004c 00000000 		.word	.LC7
 388 0050 10000000 		.word	.LC8
 389 0054 00000000 		.word	Thread_blink
 390 0058 00000000 		.word	.LANCHOR1
 391 005c 00000000 		.word	Thread_uart
 392 0060 00000000 		.word	.LANCHOR2
 393              		.cfi_endproc
 394              	.LFE235:
 396              		.global	s
 397              		.section	.bss.s,"aw",%nobits
 398              		.align	2
 399              		.set	.LANCHOR0,. + 0
 402              	s:
 403 0000 00000000 		.space	128
 403      00000000 
 403      00000000 
 403      00000000 
 403      00000000 
 404              		.section	.bss.waThread_blink,"aw",%nobits
 405              		.align	3
 406              		.set	.LANCHOR1,. + 0
 409              	waThread_blink:
 410 0000 00000000 		.space	464
 410      00000000 
 410      00000000 
 410      00000000 
 410      00000000 
 411              		.section	.bss.waThread_uart,"aw",%nobits
 412              		.align	3
 413              		.set	.LANCHOR2,. + 0
 416              	waThread_uart:
 417 0000 00000000 		.space	1360
 417      00000000 
 417      00000000 
 417      00000000 
 417      00000000 
 418              		.section	.rodata.Thread_blink.str1.4,"aMS",%progbits,1
 419              		.align	2
 420              	.LC0:
 421 0000 626C696E 		.ascii	"blinker\000"
 421      6B657200 
 422              	.LC1:
 423 0008 54687265 		.ascii	"Thread_blink run\012\000"
 423      61645F62 
 423      6C696E6B 
 423      2072756E 
 423      0A00
 424              		.section	.rodata.Thread_uart.str1.4,"aMS",%progbits,1
 425              		.align	2
 426              	.LC2:
 427 0000 75617274 		.ascii	"uart\000"
 427      00
 428 0005 000000   		.space	3
 429              	.LC3:
 430 0008 54687265 		.ascii	"Thread_uart run\000"
 430      61645F75 
 430      61727420 
 430      72756E00 
 431              	.LC4:
 432 0018 25732025 		.ascii	"%s %d\012\000"
 432      640A00
 433 001f 00       		.space	1
 434              	.LC5:
 435 0020 69646C65 		.ascii	"idle\000"
 435      00
 436 0025 000000   		.space	3
 437              	.LC6:
 438 0028 72756E6E 		.ascii	"running %d\012\000"
 438      696E6720 
 438      25640A00 
 439              		.section	.rodata.main1.str1.4,"aMS",%progbits,1
 440              		.align	2
 441              	.LC7:
 442 0000 48656C6C 		.ascii	"Hello World 2\000"
 442      6F20576F 
 442      726C6420 
 442      3200
 443 000e 0000     		.space	2
 444              	.LC8:
 445 0010 48656C6C 		.ascii	"Hello world 1\012\000"
 445      6F20776F 
 445      726C6420 
 445      310A00
 446              		.text
 447              	.Letext0:
 448              		.file 4 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 449              		.file 5 "/usr/include/newlib/machine/_default_types.h"
 450              		.file 6 "/usr/include/newlib/sys/lock.h"
 451              		.file 7 "/usr/include/newlib/sys/_types.h"
 452              		.file 8 "/usr/include/newlib/sys/reent.h"
 453              		.file 9 "/usr/include/newlib/stdlib.h"
 454              		.file 10 "/usr/include/newlib/sys/_stdint.h"
 455              		.file 11 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 456              		.file 12 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 457              		.file 13 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f410rx.h"
 458              		.file 14 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/compilers/GCC/chtypes.h"
 459              		.file 15 "../com/lib/chibios-16.1.4/os/rt/include/chsystypes.h"
 460              		.file 16 "../com/lib/chibios-16.1.4/os/rt/include/chschd.h"
 461              		.file 17 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore.h"
 462              		.file 18 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore_v7m.h"
 463              		.file 19 "../com/lib/chibios-16.1.4/os/rt/include/chsem.h"
 464              		.file 20 "../com/lib/chibios-16.1.4/os/rt/include/chmtx.h"
 465              		.file 21 "../com/src/simple-bsp/usartx.h"
 466              		.file 22 "../com/lib/chibios-16.1.4/os/rt/include/chsys.h"
 467              		.file 23 "../com/lib/chibios-16.1.4/os/rt/include/chthreads.h"
 468              		.file 24 "<built-in>"
