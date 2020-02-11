#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "stm32f4xx_hal.h"
#include "mxconstants.h"
#include "gpio.h"
#include "usart2.h"

#define SET_LED_RED
#define RESET_LED_RED

#define SET_LED_BLUE
#define RESET_LED_BLUE

#define SET_LED_GREEN LD2_GPIO_Port->BSRR = LD2_Pin
#define RESET_LED_GREEN LD2_GPIO_Port->BSRR = LD2_Pin << 16

char s[128];

static THD_WORKING_AREA(waThread_uart, 1024);
static THD_FUNCTION(Thread_uart, arg) {
	(void)arg;
	int i=0, j=0;
	int len;
	chRegSetThreadName("uart");
	sprintf(s,"Thread_uart run");
	len=strlen(s);
	printf("%s %d\n",s,len);
	while (1) {
	  if (rxidl2>0) {
		  printf("idle");
		  rxidl2=-1;
	  }
	  while (rxbp2 != rxrp2) {
		  char c;
		  c=rxbuf2[rxrp2];
		  putchar(c);
		  rxrp2++;
		  if (rxrp2>=RXBUFSIZE) rxrp2=0;
		  j=0;
	  }
	  chThdSleepMilliseconds(100);
	  j++;
	  i++;
	  if (j>=10) {
		  printf("running %d\n",i);
		  j=0;
	  }
	}
}


static THD_WORKING_AREA(waThread_blink, 128);
static THD_FUNCTION(Thread_blink, arg) {
	(void)arg;
	int i=0;
	chRegSetThreadName("blinker");
	SendDataUSART2("Thread_blink run\n", 17);
	//printf("Thread_blink run\n");
    SET_LED_RED;
	SET_LED_BLUE;
	SET_LED_GREEN;

	while (1) {
		chThdSleepMilliseconds(100);
		i++;
		switch (i % 3) {
		case 0: SET_LED_BLUE;
				RESET_LED_RED;
				RESET_LED_GREEN;
		  	  	break;
		case 1: RESET_LED_BLUE;
		  	  	SET_LED_RED;
		  	  	RESET_LED_GREEN;
		  	  	break;
		case 2: RESET_LED_BLUE;
		  	  	RESET_LED_RED;
		  	  	SET_LED_GREEN;
		  	  	break;
		}
	}
}


int main1(void)
{

	  chSysInit();
	  init_USART2();
	  printf("Hello World 2\n");
	  SendDataUSART2("Hello world 1\n", 14);


	  chThdCreateStatic(waThread_blink, sizeof(waThread_blink), NORMALPRIO, Thread_blink, NULL);
	  chThdCreateStatic(waThread_uart, sizeof(waThread_uart), NORMALPRIO, Thread_uart, NULL);
	  chThdSetPriority(LOWPRIO);

	  while (1)
	  {
		    chThdSleepMilliseconds(10);
	  }
}
