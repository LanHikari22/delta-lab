#include "ch.h"

// __late_init calls STM HAL SystemInit from startup code

void SystemInit(void);

void __late_init(void) {
	// call STM HAL SystemInit()
	SystemInit();
}

// SysTick_Handler required for Chibios in classic (non-tickless) mode
// Call STM HAL_ functions from here (if required)

void SysTick_Handler(void)
{
	  CH_IRQ_PROLOGUE();

	  chSysLockFromISR();
	  chSysTimerHandlerI();
	  chSysUnlockFromISR();

	  CH_IRQ_EPILOGUE();

	  HAL_IncTick();
	  //HAL_SYSTICK_IRQHandler();

}
