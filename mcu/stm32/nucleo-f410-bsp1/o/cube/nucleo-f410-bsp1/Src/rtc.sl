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
  11              		.file	"rtc.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.text.MX_RTC_Init,"ax",%progbits
  16              		.align	1
  17              		.p2align 2,,3
  18              		.global	MX_RTC_Init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv4-sp-d16
  24              	MX_RTC_Init:
  25              	.LFB126:
  26              		.file 1 "cube/nucleo-f410-bsp1/Src/rtc.c"
   1:cube/nucleo-f410-bsp1/Src/rtc.c **** /**
   2:cube/nucleo-f410-bsp1/Src/rtc.c ****   ******************************************************************************
   3:cube/nucleo-f410-bsp1/Src/rtc.c ****   * File Name          : RTC.c
   4:cube/nucleo-f410-bsp1/Src/rtc.c ****   * Description        : This file provides code for the configuration
   5:cube/nucleo-f410-bsp1/Src/rtc.c ****   *                      of the RTC instances.
   6:cube/nucleo-f410-bsp1/Src/rtc.c ****   ******************************************************************************
   7:cube/nucleo-f410-bsp1/Src/rtc.c ****   *
   8:cube/nucleo-f410-bsp1/Src/rtc.c ****   * COPYRIGHT(c) 2016 STMicroelectronics
   9:cube/nucleo-f410-bsp1/Src/rtc.c ****   *
  10:cube/nucleo-f410-bsp1/Src/rtc.c ****   * Redistribution and use in source and binary forms, with or without modification,
  11:cube/nucleo-f410-bsp1/Src/rtc.c ****   * are permitted provided that the following conditions are met:
  12:cube/nucleo-f410-bsp1/Src/rtc.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  13:cube/nucleo-f410-bsp1/Src/rtc.c ****   *      this list of conditions and the following disclaimer.
  14:cube/nucleo-f410-bsp1/Src/rtc.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  15:cube/nucleo-f410-bsp1/Src/rtc.c ****   *      this list of conditions and the following disclaimer in the documentation
  16:cube/nucleo-f410-bsp1/Src/rtc.c ****   *      and/or other materials provided with the distribution.
  17:cube/nucleo-f410-bsp1/Src/rtc.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  18:cube/nucleo-f410-bsp1/Src/rtc.c ****   *      may be used to endorse or promote products derived from this software
  19:cube/nucleo-f410-bsp1/Src/rtc.c ****   *      without specific prior written permission.
  20:cube/nucleo-f410-bsp1/Src/rtc.c ****   *
  21:cube/nucleo-f410-bsp1/Src/rtc.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:cube/nucleo-f410-bsp1/Src/rtc.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:cube/nucleo-f410-bsp1/Src/rtc.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  24:cube/nucleo-f410-bsp1/Src/rtc.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  25:cube/nucleo-f410-bsp1/Src/rtc.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  26:cube/nucleo-f410-bsp1/Src/rtc.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  27:cube/nucleo-f410-bsp1/Src/rtc.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  28:cube/nucleo-f410-bsp1/Src/rtc.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  29:cube/nucleo-f410-bsp1/Src/rtc.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  30:cube/nucleo-f410-bsp1/Src/rtc.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  31:cube/nucleo-f410-bsp1/Src/rtc.c ****   *
  32:cube/nucleo-f410-bsp1/Src/rtc.c ****   ******************************************************************************
  33:cube/nucleo-f410-bsp1/Src/rtc.c ****   */
  34:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  35:cube/nucleo-f410-bsp1/Src/rtc.c **** /* Includes ------------------------------------------------------------------*/
  36:cube/nucleo-f410-bsp1/Src/rtc.c **** #include "rtc.h"
  37:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  38:cube/nucleo-f410-bsp1/Src/rtc.c **** /* USER CODE BEGIN 0 */
  39:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  40:cube/nucleo-f410-bsp1/Src/rtc.c **** /* USER CODE END 0 */
  41:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  42:cube/nucleo-f410-bsp1/Src/rtc.c **** RTC_HandleTypeDef hrtc;
  43:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  44:cube/nucleo-f410-bsp1/Src/rtc.c **** /* RTC init function */
  45:cube/nucleo-f410-bsp1/Src/rtc.c **** void MX_RTC_Init(void)
  46:cube/nucleo-f410-bsp1/Src/rtc.c **** {
  27              		.loc 1 46 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 64
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 30B5     		push	{r4, r5, lr}
  32              		.cfi_def_cfa_offset 12
  33              		.cfi_offset 4, -12
  34              		.cfi_offset 5, -8
  35              		.cfi_offset 14, -4
  47:cube/nucleo-f410-bsp1/Src/rtc.c ****   RTC_TimeTypeDef sTime;
  48:cube/nucleo-f410-bsp1/Src/rtc.c ****   RTC_DateTypeDef sDate;
  49:cube/nucleo-f410-bsp1/Src/rtc.c ****   RTC_AlarmTypeDef sAlarm;
  50:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  51:cube/nucleo-f410-bsp1/Src/rtc.c ****     /**Initialize RTC and set the Time and Date 
  52:cube/nucleo-f410-bsp1/Src/rtc.c ****     */
  53:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Instance = RTC;
  36              		.loc 1 53 0
  37 0002 1F4D     		ldr	r5, .L3
  38 0004 1F4B     		ldr	r3, .L3+4
  39 0006 2B60     		str	r3, [r5]
  46:cube/nucleo-f410-bsp1/Src/rtc.c ****   RTC_TimeTypeDef sTime;
  40              		.loc 1 46 0
  41 0008 91B0     		sub	sp, sp, #68
  42              		.cfi_def_cfa_offset 80
  54:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.HourFormat = RTC_HOURFORMAT_24;
  43              		.loc 1 54 0
  44 000a 0024     		movs	r4, #0
  55:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.AsynchPrediv = 127;
  56:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.SynchPrediv = 255;
  45              		.loc 1 56 0
  46 000c FF23     		movs	r3, #255
  55:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.AsynchPrediv = 127;
  47              		.loc 1 55 0
  48 000e 7F22     		movs	r2, #127
  57:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
  58:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
  59:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;
  60:cube/nucleo-f410-bsp1/Src/rtc.c ****   HAL_RTC_Init(&hrtc);
  49              		.loc 1 60 0
  50 0010 2846     		mov	r0, r5
  56:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
  51              		.loc 1 56 0
  52 0012 EB60     		str	r3, [r5, #12]
  55:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.AsynchPrediv = 127;
  53              		.loc 1 55 0
  54 0014 AA60     		str	r2, [r5, #8]
  54:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.AsynchPrediv = 127;
  55              		.loc 1 54 0
  56 0016 6C60     		str	r4, [r5, #4]
  57:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.OutPut = RTC_OUTPUT_DISABLE;
  57              		.loc 1 57 0
  58 0018 2C61     		str	r4, [r5, #16]
  58:cube/nucleo-f410-bsp1/Src/rtc.c ****   hrtc.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;
  59              		.loc 1 58 0
  60 001a 6C61     		str	r4, [r5, #20]
  59:cube/nucleo-f410-bsp1/Src/rtc.c ****   HAL_RTC_Init(&hrtc);
  61              		.loc 1 59 0
  62 001c AC61     		str	r4, [r5, #24]
  63              		.loc 1 60 0
  64 001e FFF7FEFF 		bl	HAL_RTC_Init
  65              	.LVL0:
  61:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  62:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.Hours = 0x0;
  63:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.Minutes = 0x0;
  64:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.Seconds = 0x0;
  65:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
  66:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.StoreOperation = RTC_STOREOPERATION_RESET;
  67:cube/nucleo-f410-bsp1/Src/rtc.c ****   HAL_RTC_SetTime(&hrtc, &sTime, FORMAT_BCD);
  66              		.loc 1 67 0
  67 0022 01A9     		add	r1, sp, #4
  68 0024 2846     		mov	r0, r5
  69 0026 0122     		movs	r2, #1
  62:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.Minutes = 0x0;
  70              		.loc 1 62 0
  71 0028 8DF80440 		strb	r4, [sp, #4]
  63:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.Seconds = 0x0;
  72              		.loc 1 63 0
  73 002c 8DF80540 		strb	r4, [sp, #5]
  64:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
  74              		.loc 1 64 0
  75 0030 8DF80640 		strb	r4, [sp, #6]
  65:cube/nucleo-f410-bsp1/Src/rtc.c ****   sTime.StoreOperation = RTC_STOREOPERATION_RESET;
  76              		.loc 1 65 0
  77 0034 0494     		str	r4, [sp, #16]
  66:cube/nucleo-f410-bsp1/Src/rtc.c ****   HAL_RTC_SetTime(&hrtc, &sTime, FORMAT_BCD);
  78              		.loc 1 66 0
  79 0036 0594     		str	r4, [sp, #20]
  80              		.loc 1 67 0
  81 0038 FFF7FEFF 		bl	HAL_RTC_SetTime
  82              	.LVL1:
  68:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  69:cube/nucleo-f410-bsp1/Src/rtc.c ****   sDate.WeekDay = RTC_WEEKDAY_MONDAY;
  83              		.loc 1 69 0
  84 003c 10A9     		add	r1, sp, #64
  85 003e 124B     		ldr	r3, .L3+8
  86 0040 41F8403D 		str	r3, [r1, #-64]!
  70:cube/nucleo-f410-bsp1/Src/rtc.c ****   sDate.Month = RTC_MONTH_JANUARY;
  71:cube/nucleo-f410-bsp1/Src/rtc.c ****   sDate.Date = 0x1;
  72:cube/nucleo-f410-bsp1/Src/rtc.c ****   sDate.Year = 0x0;
  73:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  74:cube/nucleo-f410-bsp1/Src/rtc.c ****   HAL_RTC_SetDate(&hrtc, &sDate, FORMAT_BCD);
  87              		.loc 1 74 0
  88 0044 2846     		mov	r0, r5
  89 0046 0122     		movs	r2, #1
  90 0048 FFF7FEFF 		bl	HAL_RTC_SetDate
  91              	.LVL2:
  75:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  76:cube/nucleo-f410-bsp1/Src/rtc.c ****     /**Enable the Alarm A 
  77:cube/nucleo-f410-bsp1/Src/rtc.c ****     */
  78:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.Hours = 0x0;
  79:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.Minutes = 0x0;
  80:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.Seconds = 0x0;
  81:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.SubSeconds = 0x0;
  82:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
  83:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.StoreOperation = RTC_STOREOPERATION_RESET;
  84:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmMask = RTC_ALARMMASK_NONE;
  85:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmSubSecondMask = RTC_ALARMSUBSECONDMASK_ALL;
  86:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmDateWeekDaySel = RTC_ALARMDATEWEEKDAYSEL_DATE;
  87:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmDateWeekDay = 0x1;
  92              		.loc 1 87 0
  93 004c 0123     		movs	r3, #1
  88:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.Alarm = RTC_ALARM_A;
  89:cube/nucleo-f410-bsp1/Src/rtc.c ****   HAL_RTC_SetAlarm(&hrtc, &sAlarm, FORMAT_BCD);
  94              		.loc 1 89 0
  95 004e 2846     		mov	r0, r5
  96 0050 1A46     		mov	r2, r3
  88:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.Alarm = RTC_ALARM_A;
  97              		.loc 1 88 0
  98 0052 4FF48075 		mov	r5, #256
  99              		.loc 1 89 0
 100 0056 06A9     		add	r1, sp, #24
  78:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.Minutes = 0x0;
 101              		.loc 1 78 0
 102 0058 8DF81840 		strb	r4, [sp, #24]
  79:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.Seconds = 0x0;
 103              		.loc 1 79 0
 104 005c 8DF81940 		strb	r4, [sp, #25]
  80:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.SubSeconds = 0x0;
 105              		.loc 1 80 0
 106 0060 8DF81A40 		strb	r4, [sp, #26]
  81:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
 107              		.loc 1 81 0
 108 0064 0794     		str	r4, [sp, #28]
  82:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmTime.StoreOperation = RTC_STOREOPERATION_RESET;
 109              		.loc 1 82 0
 110 0066 0994     		str	r4, [sp, #36]
  83:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmMask = RTC_ALARMMASK_NONE;
 111              		.loc 1 83 0
 112 0068 0A94     		str	r4, [sp, #40]
  84:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmSubSecondMask = RTC_ALARMSUBSECONDMASK_ALL;
 113              		.loc 1 84 0
 114 006a 0B94     		str	r4, [sp, #44]
  85:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmDateWeekDaySel = RTC_ALARMDATEWEEKDAYSEL_DATE;
 115              		.loc 1 85 0
 116 006c 0C94     		str	r4, [sp, #48]
  86:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.AlarmDateWeekDay = 0x1;
 117              		.loc 1 86 0
 118 006e 0D94     		str	r4, [sp, #52]
  87:cube/nucleo-f410-bsp1/Src/rtc.c ****   sAlarm.Alarm = RTC_ALARM_A;
 119              		.loc 1 87 0
 120 0070 8DF83830 		strb	r3, [sp, #56]
  88:cube/nucleo-f410-bsp1/Src/rtc.c ****   HAL_RTC_SetAlarm(&hrtc, &sAlarm, FORMAT_BCD);
 121              		.loc 1 88 0
 122 0074 0F95     		str	r5, [sp, #60]
 123              		.loc 1 89 0
 124 0076 FFF7FEFF 		bl	HAL_RTC_SetAlarm
 125              	.LVL3:
  90:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  91:cube/nucleo-f410-bsp1/Src/rtc.c **** }
 126              		.loc 1 91 0
 127 007a 11B0     		add	sp, sp, #68
 128              		.cfi_def_cfa_offset 12
 129              		@ sp needed
 130 007c 30BD     		pop	{r4, r5, pc}
 131              	.L4:
 132 007e 00BF     		.align	2
 133              	.L3:
 134 0080 00000000 		.word	.LANCHOR0
 135 0084 00280040 		.word	1073752064
 136 0088 01010100 		.word	65793
 137              		.cfi_endproc
 138              	.LFE126:
 140              		.section	.text.HAL_RTC_MspInit,"ax",%progbits
 141              		.align	1
 142              		.p2align 2,,3
 143              		.global	HAL_RTC_MspInit
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv4-sp-d16
 149              	HAL_RTC_MspInit:
 150              	.LFB127:
  92:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  93:cube/nucleo-f410-bsp1/Src/rtc.c **** void HAL_RTC_MspInit(RTC_HandleTypeDef* hrtc)
  94:cube/nucleo-f410-bsp1/Src/rtc.c **** {
 151              		.loc 1 94 0
 152              		.cfi_startproc
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 156              	.LVL4:
  95:cube/nucleo-f410-bsp1/Src/rtc.c **** 
  96:cube/nucleo-f410-bsp1/Src/rtc.c ****   if(hrtc->Instance==RTC)
 157              		.loc 1 96 0
 158 0000 0268     		ldr	r2, [r0]
 159 0002 044B     		ldr	r3, .L9
 160 0004 9A42     		cmp	r2, r3
 161 0006 00D0     		beq	.L8
 162 0008 7047     		bx	lr
 163              	.L8:
  97:cube/nucleo-f410-bsp1/Src/rtc.c ****   {
  98:cube/nucleo-f410-bsp1/Src/rtc.c ****   /* USER CODE BEGIN RTC_MspInit 0 */
  99:cube/nucleo-f410-bsp1/Src/rtc.c **** 
 100:cube/nucleo-f410-bsp1/Src/rtc.c ****   /* USER CODE END RTC_MspInit 0 */
 101:cube/nucleo-f410-bsp1/Src/rtc.c ****     /* Peripheral clock enable */
 102:cube/nucleo-f410-bsp1/Src/rtc.c ****     __HAL_RCC_RTC_ENABLE();
 164              		.loc 1 102 0
 165 000a 034B     		ldr	r3, .L9+4
 166 000c 0122     		movs	r2, #1
 167 000e 1A60     		str	r2, [r3]
 168 0010 7047     		bx	lr
 169              	.L10:
 170 0012 00BF     		.align	2
 171              	.L9:
 172 0014 00280040 		.word	1073752064
 173 0018 3C0E4742 		.word	1111952956
 174              		.cfi_endproc
 175              	.LFE127:
 177              		.section	.text.HAL_RTC_MspDeInit,"ax",%progbits
 178              		.align	1
 179              		.p2align 2,,3
 180              		.global	HAL_RTC_MspDeInit
 181              		.syntax unified
 182              		.thumb
 183              		.thumb_func
 184              		.fpu fpv4-sp-d16
 186              	HAL_RTC_MspDeInit:
 187              	.LFB128:
 103:cube/nucleo-f410-bsp1/Src/rtc.c ****   /* USER CODE BEGIN RTC_MspInit 1 */
 104:cube/nucleo-f410-bsp1/Src/rtc.c **** 
 105:cube/nucleo-f410-bsp1/Src/rtc.c ****   /* USER CODE END RTC_MspInit 1 */
 106:cube/nucleo-f410-bsp1/Src/rtc.c ****   }
 107:cube/nucleo-f410-bsp1/Src/rtc.c **** }
 108:cube/nucleo-f410-bsp1/Src/rtc.c **** 
 109:cube/nucleo-f410-bsp1/Src/rtc.c **** void HAL_RTC_MspDeInit(RTC_HandleTypeDef* hrtc)
 110:cube/nucleo-f410-bsp1/Src/rtc.c **** {
 188              		.loc 1 110 0
 189              		.cfi_startproc
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193              	.LVL5:
 111:cube/nucleo-f410-bsp1/Src/rtc.c **** 
 112:cube/nucleo-f410-bsp1/Src/rtc.c ****   if(hrtc->Instance==RTC)
 194              		.loc 1 112 0
 195 0000 0268     		ldr	r2, [r0]
 196 0002 044B     		ldr	r3, .L14
 197 0004 9A42     		cmp	r2, r3
 198 0006 00D0     		beq	.L13
 199 0008 7047     		bx	lr
 200              	.L13:
 113:cube/nucleo-f410-bsp1/Src/rtc.c ****   {
 114:cube/nucleo-f410-bsp1/Src/rtc.c ****   /* USER CODE BEGIN RTC_MspDeInit 0 */
 115:cube/nucleo-f410-bsp1/Src/rtc.c **** 
 116:cube/nucleo-f410-bsp1/Src/rtc.c ****   /* USER CODE END RTC_MspDeInit 0 */
 117:cube/nucleo-f410-bsp1/Src/rtc.c ****     /* Peripheral clock disable */
 118:cube/nucleo-f410-bsp1/Src/rtc.c ****     __HAL_RCC_RTC_DISABLE();
 201              		.loc 1 118 0
 202 000a 034B     		ldr	r3, .L14+4
 203 000c 0022     		movs	r2, #0
 204 000e 1A60     		str	r2, [r3]
 205 0010 7047     		bx	lr
 206              	.L15:
 207 0012 00BF     		.align	2
 208              	.L14:
 209 0014 00280040 		.word	1073752064
 210 0018 3C0E4742 		.word	1111952956
 211              		.cfi_endproc
 212              	.LFE128:
 214              		.global	hrtc
 215              		.section	.bss.hrtc,"aw",%nobits
 216              		.align	2
 217              		.set	.LANCHOR0,. + 0
 220              	hrtc:
 221 0000 00000000 		.space	32
 221      00000000 
 221      00000000 
 221      00000000 
 221      00000000 
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
 233              		.file 11 "../com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/stm32f4xx.h"
 234              		.file 12 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_def.h"
 235              		.file 13 "../com/lib/STM32F4xx_HAL_Driver/Inc/stm32f4xx_hal_rtc.h"
 236              		.file 14 "cube/nucleo-f410-bsp1/Inc/rtc.h"
