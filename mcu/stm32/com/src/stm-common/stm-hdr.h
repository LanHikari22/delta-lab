#if defined (STM32F756xx) || defined (STM32F746xx) || defined (STM32F745xx)
#define STM32F7
#endif

#if defined (STM32F405xx) || defined (STM32F415xx) || defined (STM32F407xx) || defined (STM32F417xx) || \
    defined (STM32F427xx) || defined (STM32F437xx) || defined (STM32F429xx) || defined (STM32F439xx) || \
    defined (STM32F401xC) || defined (STM32F401xE) || defined (STM32F410Tx) || defined (STM32F410Cx) || \
    defined (STM32F410Rx) || defined (STM32F411xE) || defined (STM32F446xx) || defined (STM32F469xx) || \
    defined (STM32F479xx)
#define STM32F4
#endif

#if defined (STM32F301x8) || defined (STM32F302x8) || defined (STM32F318xx) || \
    defined (STM32F302xC) || defined (STM32F303xC) || defined (STM32F358xx) || \
    defined (STM32F303x8) || defined (STM32F334x8) || defined (STM32F328xx) || \
    defined (STM32F302xE) || defined (STM32F303xE) || defined (STM32F398xx) || \
    defined (STM32F373xC) || defined (STM32F378xx)
#define STM32F3
#endif

#if defined (STM32F100xB) || defined (STM32F100xE) || defined (STM32F101x6) || \
    defined (STM32F101xB) || defined (STM32F101xE) || defined (STM32F101xG) || defined (STM32F102x6) || defined (STM32F102xB) || defined (STM32F103x6) || \
    defined (STM32F103xB) || defined (STM32F103xE) || defined (STM32F103xG) || defined (STM32F105xC) || defined (STM32F107xC)
#define STM32F1
#endif

#if defined (STM32F030x6) || defined (STM32F030x8) ||                           \
    defined (STM32F031x6) || defined (STM32F038xx) ||                           \
    defined (STM32F042x6) || defined (STM32F048xx) || defined (STM32F070x6) || \
    defined (STM32F051x8) || defined (STM32F058xx) ||                           \
    defined (STM32F071xB) || defined (STM32F072xB) || defined (STM32F078xx) || defined (STM32F070xB) || \
    defined (STM32F091xC) || defined (STM32F098xx) || defined (STM32F030xC)
#define STM32F0
#if defined (STM32F030x6) || defined (STM32F030x8) || \
	defined (STM32F030xC) || defined (STM32F031x6) || defined (STM32F038xx) || \
	defined (STM32F042x6) || defined (STM32F048xx) || defined (STM32F051x8) || \
	defined (STM32F058xx) || defined (STM32F070x6)
#define DMA6ch
#endif
#if defined (STM32F071xB) || defined (STM32F072xB) || defined (STM32F078xx)
#define DMA8ch
#endif
#endif

#if defined (STM32L471xx) || defined (STM32L475xx) || defined (STM32L476xx) || \
	defined (STM32L485xx) || defined (STM32L486xx)
#define STM32L4
#endif

#ifdef STM32F0
#include "stm32f0xx_hal.h"
#include "stm32f0xx_hal_usart.h"
#ifdef USE_CHIBIOS
#include "ch.h"
#include "stm32f0xx-irqs.h"
#if defined(DMA6ch)
#define DMA1_Channel4_IRQHandler DMA1_Channel4_5_IRQHandler
#define DMA1_Channel5_IRQHandler DMA1_Channel4_5_IRQHandler
#elif defined (DMA8ch)
#define DMA1_Channel4_IRQHandler DMA1_Channel4_5_6_7_IRQHandler
#define DMA1_Channel5_IRQHandler DMA1_Channel4_5_6_7_IRQHandler
#define DMA1_Channel6_IRQHandler DMA1_Channel4_5_6_7_IRQHandler
#define DMA1_Channel7_IRQHandler DMA1_Channel4_5_6_7_IRQHandler
#endif
#define DMA1_Channel2_IRQHandler DMA1_Channel2_3_IRQHandler
#define DMA1_Channel3_IRQHandler DMA1_Channel2_3_IRQHandler
#endif
#define USARTv2
#define DMAv1
#endif

#ifdef STM32F1
#include "stm32f1xx_hal.h"
#include "stm32f1xx_hal_usart.h"
#ifdef USE_CHIBIOS
#include "ch.h"
#include "stm32f1xx-irqs.h"
#endif
#define USARTv1
#define DMAv1
#endif

#ifdef STM32F3
#include "stm32f3xx_hal.h"
#include "stm32f3xx_hal_usart.h"
#ifdef USE_CHIBIOS
#include "ch.h"
#include "stm32f3xx-irqs.h"
#endif
#define USARTv2
#define DMAv1
#endif


#ifdef STM32F4
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_usart.h"
#ifdef USE_CHIBIOS
#include "ch.h"
#include "stm32f4xx-irqs.h"
#endif
#define USARTv1
#define DMAv2
#endif


#ifdef STM32F7
#include "stm32f7xx_hal.h"
#include "stm32f7xx_hal_usart.h"
#ifdef USE_CHIBIOS
#include "ch.h"
#include "stm32f7xx-irqs.h"
#endif
#define USARTv2
#define DMAv2
#endif

#ifdef STM32L4
#include "stm32l4xx_hal.h"
#include "stm32l4xx_hal_usart.h"
#ifdef USE_CHIBIOS
#include "ch.h"
#include "stm32l4xx-irqs.h"
#endif
#define USARTv2
#define DMAv1
#endif
