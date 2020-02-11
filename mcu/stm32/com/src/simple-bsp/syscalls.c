/*
    ChibiOS/RT - Copyright (C) 2006-2013 Giovanni Di Sirio

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/
/*
* **** This file incorporates work covered by the following copyright and ****
* **** permission notice:                                                 ****
*
*  Copyright (c) 2009 by Michael Fischer. All rights reserved.
*
*  Redistribution and use in source and binary forms, with or without
*  modification, are permitted provided that the following conditions
*  are met:
*
*  1. Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*  2. Redistributions in binary form must reproduce the above copyright
*     notice, this list of conditions and the following disclaimer in the
*     documentation and/or other materials provided with the distribution.
*  3. Neither the name of the author nor the names of its contributors may
*     be used to endorse or promote products derived from this software
*     without specific prior written permission.
*
*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
*  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
*  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
*  THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
*  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
*  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
*  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
*  AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
*  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
*  THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
*  SUCH DAMAGE.
*
****************************************************************************
*  History:
*
*  28.03.09  mifi       First Version, based on the original syscall.c from
*                       newlib version 1.17.0
*  17.08.09  gdisirio   Modified the file for use under ChibiOS/RT
*  15.11.09  gdisirio   Added read and write handling
****************************************************************************/

#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "bsp-conf.h"

#ifdef USE_CHIBIOS
#include "ch.h"
#endif


#if STDOUT_USART == 1
#include "usart1.h"
#elif STDOUT_USART == 2
#include "usart2.h"
#elif STDOUT_USART == 3
#include "usart3.h"
#elif STDOUT_USART == 6
#include "usart6.h"
#endif

#ifndef __errno_r
#include <sys/reent.h>
#define __errno_r(reent) reent->_errno
#endif

/***************************************************************************/

int _read_r(struct _reent *r, int file, char * ptr, int len)
{
  (void)r;
  (void)file;
  (void)ptr;
  (void)len;
  __errno_r(r) = EINVAL;
  return -1;
}

/***************************************************************************/

int _lseek_r(struct _reent *r, int file, int ptr, int dir)
{
  (void)r;
  (void)file;
  (void)ptr;
  (void)dir;

  return 0;
}

/***************************************************************************/

int _write_r(struct _reent *r, int file, char * ptr, int len)
{
  (void)r;
  (void)file;
  (void)ptr;
#if STDOUT_USART == 1
  SendDataUSART1(ptr, (size_t)len);
#elif STDOUT_USART == 2
  SendDataUSART2(ptr, (size_t)len);
#elif STDOUT_USART == 3
  SendDataUSART3(ptr, (size_t)len);
#elif STDOUT_USART == 6
  SendDataUSART6(ptr, (size_t)len);
#endif
  return len;
}

/***************************************************************************/

int _close_r(struct _reent *r, int file)
{
  (void)r;
  (void)file;

  return 0;
}

/***************************************************************************/

#ifdef USE_CHIBIOS

caddr_t _sbrk_r(struct _reent *r, int incr)
{
#if defined(CH_USE_MEMCORE) || defined (CH_CFG_USE_MEMCORE)
  void *p;

  //chDbgCheck(incr > 0, "_sbrk_r");

  (void)r;
  p = chCoreAlloc((size_t)incr);
  if (p == NULL) {
    __errno_r(r) = ENOMEM;
    return (caddr_t)-1;
  }
  return (caddr_t)p;
#else
  __errno_r(r) = ENOMEM;
  return (caddr_t)-1;
#endif
}


#else
/* "malloc clue function" from newlib-lpc/Keil-Demo/"generic" */

/**** Locally used variables. ****/
// mt: "cleaner": extern char* end;
extern char end[];              /*  end is set in the linker command 	*/
				/* file and is the end of statically 	*/
				/* allocated data (thus start of heap).	*/

static char *heap_ptr;		/* Points to current end of the heap.	*/

/************************** _sbrk_r *************************************
 * Support function. Adjusts end of heap to provide more memory to
 * memory allocator. Simple and dumb with no sanity checks.

 *  struct _reent *r -- re-entrancy structure, used by newlib to
 *                      support multiple threads of operation.
 *  ptrdiff_t nbytes -- number of bytes to add.
 *                      Returns pointer to start of new heap area.
 *
 *  Note:  This implementation is not thread safe (despite taking a
 *         _reent structure as a parameter).
 *         Since _s_r is not used in the current implementation,
 *         the following messages must be suppressed.
 */
void * _sbrk_r(
    struct _reent *_s_r,
    ptrdiff_t nbytes)
{
	char  *base;		/*  errno should be set to  ENOMEM on error  */

	if (!heap_ptr) {	/*  Initialize if first time through.  */
		heap_ptr = end;
	}
	base = heap_ptr;	/*  Point to end of heap.  */
	heap_ptr += nbytes;	/*  Increase heap.  */

	return base;		/*  Return pointer to start of new heap area.  */
}
#endif


#if 0
#endif

/***************************************************************************/

int _fstat_r(struct _reent *r, int file, struct stat * st)
{
  (void)r;
  (void)file;

  memset(st, 0, sizeof(*st));
  //st->st_mode = S_IFCHR;
  return 0;
}

/***************************************************************************/

int _isatty_r(struct _reent *r, int fd)
{
  (void)r;
  (void)fd;

  return 1;
}

/*** EOF ***/
