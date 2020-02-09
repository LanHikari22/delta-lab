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
  11              		.file	"syscalls.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text._read_r,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	_read_r
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	_read_r:
  25              	.LFB233:
  26              		.file 1 "../com/src/simple-bsp/syscalls.c"
   1:../com/src/simple-bsp/syscalls.c **** /*
   2:../com/src/simple-bsp/syscalls.c ****     ChibiOS/RT - Copyright (C) 2006-2013 Giovanni Di Sirio
   3:../com/src/simple-bsp/syscalls.c **** 
   4:../com/src/simple-bsp/syscalls.c ****     Licensed under the Apache License, Version 2.0 (the "License");
   5:../com/src/simple-bsp/syscalls.c ****     you may not use this file except in compliance with the License.
   6:../com/src/simple-bsp/syscalls.c ****     You may obtain a copy of the License at
   7:../com/src/simple-bsp/syscalls.c **** 
   8:../com/src/simple-bsp/syscalls.c ****         http://www.apache.org/licenses/LICENSE-2.0
   9:../com/src/simple-bsp/syscalls.c **** 
  10:../com/src/simple-bsp/syscalls.c ****     Unless required by applicable law or agreed to in writing, software
  11:../com/src/simple-bsp/syscalls.c ****     distributed under the License is distributed on an "AS IS" BASIS,
  12:../com/src/simple-bsp/syscalls.c ****     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  13:../com/src/simple-bsp/syscalls.c ****     See the License for the specific language governing permissions and
  14:../com/src/simple-bsp/syscalls.c ****     limitations under the License.
  15:../com/src/simple-bsp/syscalls.c **** */
  16:../com/src/simple-bsp/syscalls.c **** /*
  17:../com/src/simple-bsp/syscalls.c **** * **** This file incorporates work covered by the following copyright and ****
  18:../com/src/simple-bsp/syscalls.c **** * **** permission notice:                                                 ****
  19:../com/src/simple-bsp/syscalls.c **** *
  20:../com/src/simple-bsp/syscalls.c **** *  Copyright (c) 2009 by Michael Fischer. All rights reserved.
  21:../com/src/simple-bsp/syscalls.c **** *
  22:../com/src/simple-bsp/syscalls.c **** *  Redistribution and use in source and binary forms, with or without
  23:../com/src/simple-bsp/syscalls.c **** *  modification, are permitted provided that the following conditions
  24:../com/src/simple-bsp/syscalls.c **** *  are met:
  25:../com/src/simple-bsp/syscalls.c **** *
  26:../com/src/simple-bsp/syscalls.c **** *  1. Redistributions of source code must retain the above copyright
  27:../com/src/simple-bsp/syscalls.c **** *     notice, this list of conditions and the following disclaimer.
  28:../com/src/simple-bsp/syscalls.c **** *  2. Redistributions in binary form must reproduce the above copyright
  29:../com/src/simple-bsp/syscalls.c **** *     notice, this list of conditions and the following disclaimer in the
  30:../com/src/simple-bsp/syscalls.c **** *     documentation and/or other materials provided with the distribution.
  31:../com/src/simple-bsp/syscalls.c **** *  3. Neither the name of the author nor the names of its contributors may
  32:../com/src/simple-bsp/syscalls.c **** *     be used to endorse or promote products derived from this software
  33:../com/src/simple-bsp/syscalls.c **** *     without specific prior written permission.
  34:../com/src/simple-bsp/syscalls.c **** *
  35:../com/src/simple-bsp/syscalls.c **** *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  36:../com/src/simple-bsp/syscalls.c **** *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  37:../com/src/simple-bsp/syscalls.c **** *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
  38:../com/src/simple-bsp/syscalls.c **** *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
  39:../com/src/simple-bsp/syscalls.c **** *  THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  40:../com/src/simple-bsp/syscalls.c **** *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
  41:../com/src/simple-bsp/syscalls.c **** *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
  42:../com/src/simple-bsp/syscalls.c **** *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
  43:../com/src/simple-bsp/syscalls.c **** *  AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  44:../com/src/simple-bsp/syscalls.c **** *  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
  45:../com/src/simple-bsp/syscalls.c **** *  THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
  46:../com/src/simple-bsp/syscalls.c **** *  SUCH DAMAGE.
  47:../com/src/simple-bsp/syscalls.c **** *
  48:../com/src/simple-bsp/syscalls.c **** ****************************************************************************
  49:../com/src/simple-bsp/syscalls.c **** *  History:
  50:../com/src/simple-bsp/syscalls.c **** *
  51:../com/src/simple-bsp/syscalls.c **** *  28.03.09  mifi       First Version, based on the original syscall.c from
  52:../com/src/simple-bsp/syscalls.c **** *                       newlib version 1.17.0
  53:../com/src/simple-bsp/syscalls.c **** *  17.08.09  gdisirio   Modified the file for use under ChibiOS/RT
  54:../com/src/simple-bsp/syscalls.c **** *  15.11.09  gdisirio   Added read and write handling
  55:../com/src/simple-bsp/syscalls.c **** ****************************************************************************/
  56:../com/src/simple-bsp/syscalls.c **** 
  57:../com/src/simple-bsp/syscalls.c **** #include <stdlib.h>
  58:../com/src/simple-bsp/syscalls.c **** #include <errno.h>
  59:../com/src/simple-bsp/syscalls.c **** #include <string.h>
  60:../com/src/simple-bsp/syscalls.c **** #include <sys/stat.h>
  61:../com/src/simple-bsp/syscalls.c **** #include <sys/types.h>
  62:../com/src/simple-bsp/syscalls.c **** 
  63:../com/src/simple-bsp/syscalls.c **** #include "bsp-conf.h"
  64:../com/src/simple-bsp/syscalls.c **** 
  65:../com/src/simple-bsp/syscalls.c **** #ifdef USE_CHIBIOS
  66:../com/src/simple-bsp/syscalls.c **** #include "ch.h"
  67:../com/src/simple-bsp/syscalls.c **** #endif
  68:../com/src/simple-bsp/syscalls.c **** 
  69:../com/src/simple-bsp/syscalls.c **** 
  70:../com/src/simple-bsp/syscalls.c **** #if STDOUT_USART == 1
  71:../com/src/simple-bsp/syscalls.c **** #include "usart1.h"
  72:../com/src/simple-bsp/syscalls.c **** #elif STDOUT_USART == 2
  73:../com/src/simple-bsp/syscalls.c **** #include "usart2.h"
  74:../com/src/simple-bsp/syscalls.c **** #elif STDOUT_USART == 3
  75:../com/src/simple-bsp/syscalls.c **** #include "usart3.h"
  76:../com/src/simple-bsp/syscalls.c **** #elif STDOUT_USART == 6
  77:../com/src/simple-bsp/syscalls.c **** #include "usart6.h"
  78:../com/src/simple-bsp/syscalls.c **** #endif
  79:../com/src/simple-bsp/syscalls.c **** 
  80:../com/src/simple-bsp/syscalls.c **** #ifndef __errno_r
  81:../com/src/simple-bsp/syscalls.c **** #include <sys/reent.h>
  82:../com/src/simple-bsp/syscalls.c **** #define __errno_r(reent) reent->_errno
  83:../com/src/simple-bsp/syscalls.c **** #endif
  84:../com/src/simple-bsp/syscalls.c **** 
  85:../com/src/simple-bsp/syscalls.c **** /***************************************************************************/
  86:../com/src/simple-bsp/syscalls.c **** 
  87:../com/src/simple-bsp/syscalls.c **** int _read_r(struct _reent *r, int file, char * ptr, int len)
  88:../com/src/simple-bsp/syscalls.c **** {
  27              		.loc 1 88 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32              	.LVL0:
  89:../com/src/simple-bsp/syscalls.c ****   (void)r;
  90:../com/src/simple-bsp/syscalls.c ****   (void)file;
  91:../com/src/simple-bsp/syscalls.c ****   (void)ptr;
  92:../com/src/simple-bsp/syscalls.c ****   (void)len;
  93:../com/src/simple-bsp/syscalls.c ****   __errno_r(r) = EINVAL;
  33              		.loc 1 93 0
  34 0000 1623     		movs	r3, #22
  35              	.LVL1:
  36 0002 0360     		str	r3, [r0]
  94:../com/src/simple-bsp/syscalls.c ****   return -1;
  95:../com/src/simple-bsp/syscalls.c **** }
  37              		.loc 1 95 0
  38 0004 4FF0FF30 		mov	r0, #-1
  39              	.LVL2:
  40 0008 7047     		bx	lr
  41              		.cfi_endproc
  42              	.LFE233:
  44 000a 00BF     		.section	.text._lseek_r,"ax",%progbits
  45              		.align	1
  46              		.p2align 2,,3
  47              		.global	_lseek_r
  48              		.syntax unified
  49              		.thumb
  50              		.thumb_func
  51              		.fpu fpv4-sp-d16
  53              	_lseek_r:
  54              	.LFB234:
  96:../com/src/simple-bsp/syscalls.c **** 
  97:../com/src/simple-bsp/syscalls.c **** /***************************************************************************/
  98:../com/src/simple-bsp/syscalls.c **** 
  99:../com/src/simple-bsp/syscalls.c **** int _lseek_r(struct _reent *r, int file, int ptr, int dir)
 100:../com/src/simple-bsp/syscalls.c **** {
  55              		.loc 1 100 0
  56              		.cfi_startproc
  57              		@ args = 0, pretend = 0, frame = 0
  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59              		@ link register save eliminated.
  60              	.LVL3:
 101:../com/src/simple-bsp/syscalls.c ****   (void)r;
 102:../com/src/simple-bsp/syscalls.c ****   (void)file;
 103:../com/src/simple-bsp/syscalls.c ****   (void)ptr;
 104:../com/src/simple-bsp/syscalls.c ****   (void)dir;
 105:../com/src/simple-bsp/syscalls.c **** 
 106:../com/src/simple-bsp/syscalls.c ****   return 0;
 107:../com/src/simple-bsp/syscalls.c **** }
  61              		.loc 1 107 0
  62 0000 0020     		movs	r0, #0
  63              	.LVL4:
  64 0002 7047     		bx	lr
  65              		.cfi_endproc
  66              	.LFE234:
  68              		.section	.text._write_r,"ax",%progbits
  69              		.align	1
  70              		.p2align 2,,3
  71              		.global	_write_r
  72              		.syntax unified
  73              		.thumb
  74              		.thumb_func
  75              		.fpu fpv4-sp-d16
  77              	_write_r:
  78              	.LFB235:
 108:../com/src/simple-bsp/syscalls.c **** 
 109:../com/src/simple-bsp/syscalls.c **** /***************************************************************************/
 110:../com/src/simple-bsp/syscalls.c **** 
 111:../com/src/simple-bsp/syscalls.c **** int _write_r(struct _reent *r, int file, char * ptr, int len)
 112:../com/src/simple-bsp/syscalls.c **** {
  79              		.loc 1 112 0
  80              		.cfi_startproc
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              	.LVL5:
  84 0000 10B5     		push	{r4, lr}
  85              		.cfi_def_cfa_offset 8
  86              		.cfi_offset 4, -8
  87              		.cfi_offset 14, -4
 113:../com/src/simple-bsp/syscalls.c ****   (void)r;
 114:../com/src/simple-bsp/syscalls.c ****   (void)file;
 115:../com/src/simple-bsp/syscalls.c ****   (void)ptr;
 116:../com/src/simple-bsp/syscalls.c **** #if STDOUT_USART == 1
 117:../com/src/simple-bsp/syscalls.c ****   SendDataUSART1(ptr, (size_t)len);
 118:../com/src/simple-bsp/syscalls.c **** #elif STDOUT_USART == 2
 119:../com/src/simple-bsp/syscalls.c ****   SendDataUSART2(ptr, (size_t)len);
  88              		.loc 1 119 0
  89 0002 1046     		mov	r0, r2
  90              	.LVL6:
 112:../com/src/simple-bsp/syscalls.c ****   (void)r;
  91              		.loc 1 112 0
  92 0004 1C46     		mov	r4, r3
  93              		.loc 1 119 0
  94 0006 1946     		mov	r1, r3
  95              	.LVL7:
  96 0008 FFF7FEFF 		bl	SendDataUSART2
  97              	.LVL8:
 120:../com/src/simple-bsp/syscalls.c **** #elif STDOUT_USART == 3
 121:../com/src/simple-bsp/syscalls.c ****   SendDataUSART3(ptr, (size_t)len);
 122:../com/src/simple-bsp/syscalls.c **** #elif STDOUT_USART == 6
 123:../com/src/simple-bsp/syscalls.c ****   SendDataUSART6(ptr, (size_t)len);
 124:../com/src/simple-bsp/syscalls.c **** #endif
 125:../com/src/simple-bsp/syscalls.c ****   return len;
 126:../com/src/simple-bsp/syscalls.c **** }
  98              		.loc 1 126 0
  99 000c 2046     		mov	r0, r4
 100 000e 10BD     		pop	{r4, pc}
 101              		.cfi_endproc
 102              	.LFE235:
 104              		.section	.text._close_r,"ax",%progbits
 105              		.align	1
 106              		.p2align 2,,3
 107              		.global	_close_r
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv4-sp-d16
 113              	_close_r:
 114              	.LFB236:
 127:../com/src/simple-bsp/syscalls.c **** 
 128:../com/src/simple-bsp/syscalls.c **** /***************************************************************************/
 129:../com/src/simple-bsp/syscalls.c **** 
 130:../com/src/simple-bsp/syscalls.c **** int _close_r(struct _reent *r, int file)
 131:../com/src/simple-bsp/syscalls.c **** {
 115              		.loc 1 131 0
 116              		.cfi_startproc
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              		@ link register save eliminated.
 120              	.LVL9:
 132:../com/src/simple-bsp/syscalls.c ****   (void)r;
 133:../com/src/simple-bsp/syscalls.c ****   (void)file;
 134:../com/src/simple-bsp/syscalls.c **** 
 135:../com/src/simple-bsp/syscalls.c ****   return 0;
 136:../com/src/simple-bsp/syscalls.c **** }
 121              		.loc 1 136 0
 122 0000 0020     		movs	r0, #0
 123              	.LVL10:
 124 0002 7047     		bx	lr
 125              		.cfi_endproc
 126              	.LFE236:
 128              		.section	.text._sbrk_r,"ax",%progbits
 129              		.align	1
 130              		.p2align 2,,3
 131              		.global	_sbrk_r
 132              		.syntax unified
 133              		.thumb
 134              		.thumb_func
 135              		.fpu fpv4-sp-d16
 137              	_sbrk_r:
 138              	.LFB237:
 137:../com/src/simple-bsp/syscalls.c **** 
 138:../com/src/simple-bsp/syscalls.c **** /***************************************************************************/
 139:../com/src/simple-bsp/syscalls.c **** 
 140:../com/src/simple-bsp/syscalls.c **** #ifdef USE_CHIBIOS
 141:../com/src/simple-bsp/syscalls.c **** 
 142:../com/src/simple-bsp/syscalls.c **** caddr_t _sbrk_r(struct _reent *r, int incr)
 143:../com/src/simple-bsp/syscalls.c **** {
 139              		.loc 1 143 0
 140              		.cfi_startproc
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143              	.LVL11:
 144 0000 10B5     		push	{r4, lr}
 145              		.cfi_def_cfa_offset 8
 146              		.cfi_offset 4, -8
 147              		.cfi_offset 14, -4
 148              		.loc 1 143 0
 149 0002 0446     		mov	r4, r0
 144:../com/src/simple-bsp/syscalls.c **** #if defined(CH_USE_MEMCORE) || defined (CH_CFG_USE_MEMCORE)
 145:../com/src/simple-bsp/syscalls.c ****   void *p;
 146:../com/src/simple-bsp/syscalls.c **** 
 147:../com/src/simple-bsp/syscalls.c ****   //chDbgCheck(incr > 0, "_sbrk_r");
 148:../com/src/simple-bsp/syscalls.c **** 
 149:../com/src/simple-bsp/syscalls.c ****   (void)r;
 150:../com/src/simple-bsp/syscalls.c ****   p = chCoreAlloc((size_t)incr);
 150              		.loc 1 150 0
 151 0004 0846     		mov	r0, r1
 152              	.LVL12:
 153 0006 FFF7FEFF 		bl	chCoreAlloc
 154              	.LVL13:
 151:../com/src/simple-bsp/syscalls.c ****   if (p == NULL) {
 155              		.loc 1 151 0
 156 000a 00B1     		cbz	r0, .L11
 152:../com/src/simple-bsp/syscalls.c ****     __errno_r(r) = ENOMEM;
 153:../com/src/simple-bsp/syscalls.c ****     return (caddr_t)-1;
 154:../com/src/simple-bsp/syscalls.c ****   }
 155:../com/src/simple-bsp/syscalls.c ****   return (caddr_t)p;
 156:../com/src/simple-bsp/syscalls.c **** #else
 157:../com/src/simple-bsp/syscalls.c ****   __errno_r(r) = ENOMEM;
 158:../com/src/simple-bsp/syscalls.c ****   return (caddr_t)-1;
 159:../com/src/simple-bsp/syscalls.c **** #endif
 160:../com/src/simple-bsp/syscalls.c **** }
 157              		.loc 1 160 0
 158 000c 10BD     		pop	{r4, pc}
 159              	.LVL14:
 160              	.L11:
 152:../com/src/simple-bsp/syscalls.c ****     __errno_r(r) = ENOMEM;
 161              		.loc 1 152 0
 162 000e 0C23     		movs	r3, #12
 163 0010 2360     		str	r3, [r4]
 153:../com/src/simple-bsp/syscalls.c ****   }
 164              		.loc 1 153 0
 165 0012 4FF0FF30 		mov	r0, #-1
 166              	.LVL15:
 167              		.loc 1 160 0
 168 0016 10BD     		pop	{r4, pc}
 169              		.cfi_endproc
 170              	.LFE237:
 172              		.section	.text._fstat_r,"ax",%progbits
 173              		.align	1
 174              		.p2align 2,,3
 175              		.global	_fstat_r
 176              		.syntax unified
 177              		.thumb
 178              		.thumb_func
 179              		.fpu fpv4-sp-d16
 181              	_fstat_r:
 182              	.LFB238:
 161:../com/src/simple-bsp/syscalls.c **** 
 162:../com/src/simple-bsp/syscalls.c **** 
 163:../com/src/simple-bsp/syscalls.c **** #else
 164:../com/src/simple-bsp/syscalls.c **** /* "malloc clue function" from newlib-lpc/Keil-Demo/"generic" */
 165:../com/src/simple-bsp/syscalls.c **** 
 166:../com/src/simple-bsp/syscalls.c **** /**** Locally used variables. ****/
 167:../com/src/simple-bsp/syscalls.c **** // mt: "cleaner": extern char* end;
 168:../com/src/simple-bsp/syscalls.c **** extern char end[];              /*  end is set in the linker command 	*/
 169:../com/src/simple-bsp/syscalls.c **** 				/* file and is the end of statically 	*/
 170:../com/src/simple-bsp/syscalls.c **** 				/* allocated data (thus start of heap).	*/
 171:../com/src/simple-bsp/syscalls.c **** 
 172:../com/src/simple-bsp/syscalls.c **** static char *heap_ptr;		/* Points to current end of the heap.	*/
 173:../com/src/simple-bsp/syscalls.c **** 
 174:../com/src/simple-bsp/syscalls.c **** /************************** _sbrk_r *************************************
 175:../com/src/simple-bsp/syscalls.c ****  * Support function. Adjusts end of heap to provide more memory to
 176:../com/src/simple-bsp/syscalls.c ****  * memory allocator. Simple and dumb with no sanity checks.
 177:../com/src/simple-bsp/syscalls.c **** 
 178:../com/src/simple-bsp/syscalls.c ****  *  struct _reent *r -- re-entrancy structure, used by newlib to
 179:../com/src/simple-bsp/syscalls.c ****  *                      support multiple threads of operation.
 180:../com/src/simple-bsp/syscalls.c ****  *  ptrdiff_t nbytes -- number of bytes to add.
 181:../com/src/simple-bsp/syscalls.c ****  *                      Returns pointer to start of new heap area.
 182:../com/src/simple-bsp/syscalls.c ****  *
 183:../com/src/simple-bsp/syscalls.c ****  *  Note:  This implementation is not thread safe (despite taking a
 184:../com/src/simple-bsp/syscalls.c ****  *         _reent structure as a parameter).
 185:../com/src/simple-bsp/syscalls.c ****  *         Since _s_r is not used in the current implementation,
 186:../com/src/simple-bsp/syscalls.c ****  *         the following messages must be suppressed.
 187:../com/src/simple-bsp/syscalls.c ****  */
 188:../com/src/simple-bsp/syscalls.c **** void * _sbrk_r(
 189:../com/src/simple-bsp/syscalls.c ****     struct _reent *_s_r,
 190:../com/src/simple-bsp/syscalls.c ****     ptrdiff_t nbytes)
 191:../com/src/simple-bsp/syscalls.c **** {
 192:../com/src/simple-bsp/syscalls.c **** 	char  *base;		/*  errno should be set to  ENOMEM on error  */
 193:../com/src/simple-bsp/syscalls.c **** 
 194:../com/src/simple-bsp/syscalls.c **** 	if (!heap_ptr) {	/*  Initialize if first time through.  */
 195:../com/src/simple-bsp/syscalls.c **** 		heap_ptr = end;
 196:../com/src/simple-bsp/syscalls.c **** 	}
 197:../com/src/simple-bsp/syscalls.c **** 	base = heap_ptr;	/*  Point to end of heap.  */
 198:../com/src/simple-bsp/syscalls.c **** 	heap_ptr += nbytes;	/*  Increase heap.  */
 199:../com/src/simple-bsp/syscalls.c **** 
 200:../com/src/simple-bsp/syscalls.c **** 	return base;		/*  Return pointer to start of new heap area.  */
 201:../com/src/simple-bsp/syscalls.c **** }
 202:../com/src/simple-bsp/syscalls.c **** #endif
 203:../com/src/simple-bsp/syscalls.c **** 
 204:../com/src/simple-bsp/syscalls.c **** 
 205:../com/src/simple-bsp/syscalls.c **** #if 0
 206:../com/src/simple-bsp/syscalls.c **** #endif
 207:../com/src/simple-bsp/syscalls.c **** 
 208:../com/src/simple-bsp/syscalls.c **** /***************************************************************************/
 209:../com/src/simple-bsp/syscalls.c **** 
 210:../com/src/simple-bsp/syscalls.c **** int _fstat_r(struct _reent *r, int file, struct stat * st)
 211:../com/src/simple-bsp/syscalls.c **** {
 183              		.loc 1 211 0
 184              		.cfi_startproc
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              	.LVL16:
 188 0000 08B5     		push	{r3, lr}
 189              		.cfi_def_cfa_offset 8
 190              		.cfi_offset 3, -8
 191              		.cfi_offset 14, -4
 212:../com/src/simple-bsp/syscalls.c ****   (void)r;
 213:../com/src/simple-bsp/syscalls.c ****   (void)file;
 214:../com/src/simple-bsp/syscalls.c **** 
 215:../com/src/simple-bsp/syscalls.c ****   memset(st, 0, sizeof(*st));
 192              		.loc 1 215 0
 193 0002 1046     		mov	r0, r2
 194              	.LVL17:
 195 0004 0021     		movs	r1, #0
 196              	.LVL18:
 197 0006 3C22     		movs	r2, #60
 198              	.LVL19:
 199 0008 FFF7FEFF 		bl	memset
 200              	.LVL20:
 216:../com/src/simple-bsp/syscalls.c ****   //st->st_mode = S_IFCHR;
 217:../com/src/simple-bsp/syscalls.c ****   return 0;
 218:../com/src/simple-bsp/syscalls.c **** }
 201              		.loc 1 218 0
 202 000c 0020     		movs	r0, #0
 203 000e 08BD     		pop	{r3, pc}
 204              		.cfi_endproc
 205              	.LFE238:
 207              		.section	.text._isatty_r,"ax",%progbits
 208              		.align	1
 209              		.p2align 2,,3
 210              		.global	_isatty_r
 211              		.syntax unified
 212              		.thumb
 213              		.thumb_func
 214              		.fpu fpv4-sp-d16
 216              	_isatty_r:
 217              	.LFB239:
 219:../com/src/simple-bsp/syscalls.c **** 
 220:../com/src/simple-bsp/syscalls.c **** /***************************************************************************/
 221:../com/src/simple-bsp/syscalls.c **** 
 222:../com/src/simple-bsp/syscalls.c **** int _isatty_r(struct _reent *r, int fd)
 223:../com/src/simple-bsp/syscalls.c **** {
 218              		.loc 1 223 0
 219              		.cfi_startproc
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222              		@ link register save eliminated.
 223              	.LVL21:
 224:../com/src/simple-bsp/syscalls.c ****   (void)r;
 225:../com/src/simple-bsp/syscalls.c ****   (void)fd;
 226:../com/src/simple-bsp/syscalls.c **** 
 227:../com/src/simple-bsp/syscalls.c ****   return 1;
 228:../com/src/simple-bsp/syscalls.c **** }
 224              		.loc 1 228 0
 225 0000 0120     		movs	r0, #1
 226              	.LVL22:
 227 0002 7047     		bx	lr
 228              		.cfi_endproc
 229              	.LFE239:
 231              		.text
 232              	.Letext0:
 233              		.file 2 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 234              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 235              		.file 4 "/usr/include/newlib/sys/lock.h"
 236              		.file 5 "/usr/include/newlib/sys/_types.h"
 237              		.file 6 "/usr/include/newlib/sys/reent.h"
 238              		.file 7 "/usr/include/newlib/stdlib.h"
 239              		.file 8 "/usr/include/newlib/sys/errno.h"
 240              		.file 9 "/usr/include/newlib/sys/_stdint.h"
 241              		.file 10 "/usr/include/newlib/sys/_timeval.h"
 242              		.file 11 "/usr/include/newlib/sys/types.h"
 243              		.file 12 "/usr/include/newlib/time.h"
 244              		.file 13 "/usr/include/newlib/sys/stat.h"
 245              		.file 14 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/compilers/GCC/chtypes.h"
 246              		.file 15 "../com/lib/chibios-16.1.4/os/rt/include/chsystypes.h"
 247              		.file 16 "../com/lib/chibios-16.1.4/os/rt/include/chschd.h"
 248              		.file 17 "../com/lib/CMSIS-hal/Include/core_cm4.h"
 249              		.file 18 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
 250              		.file 19 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore.h"
 251              		.file 20 "../com/lib/chibios-16.1.4/os/rt/ports/ARMCMx/chcore_v7m.h"
 252              		.file 21 "../com/lib/chibios-16.1.4/os/rt/include/chsem.h"
 253              		.file 22 "../com/lib/chibios-16.1.4/os/rt/include/chmtx.h"
 254              		.file 23 "../com/lib/chibios-16.1.4/os/rt/include/chregistry.h"
 255              		.file 24 "../com/src/simple-bsp/usartx.h"
 256              		.file 25 "../com/lib/chibios-16.1.4/os/rt/include/chmemcore.h"
