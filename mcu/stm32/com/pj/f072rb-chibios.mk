DEVICE_FAMILY := STM32F0xx
DEVICE_TYPE := STM32F072xB
LDSCRIPT = STM32F072xB.ld
CHIBIOS_PORT = stm32f0xx
CHIBIOS_ARCH = v6m

#HSE_VALUE := 8000000L

CMSIS = $(LIBDIR)/CMSIS-hal
CMSIS_DEVSUP = $(CMSIS)/Device/ST/$(DEVICE_FAMILY)
CMSIS_CORESUP = $(CMSIS)/Include
CMSIS_OPT = -D$(DEVICE_TYPE) 
#-DHSE_VALUE=$(HSE_VALUE)
OTHER_OPT := -DUSE_PROCESS_STACK -DINITIALIZE_STACK -DUSE_CHIBIOS

GCC_OPT = -Wall -fno-common -fno-strict-aliasing -Wfatal-errors
CPU_OPT = -mcpu=cortex-m0 -mthumb  

INC := $(INCDIR)
INC += $(CMSIS_DEVSUP)/Include $(CMSIS_CORESUP)

#CHIBIOS_IRQ_S_FILE = $(CMSIS_DEVSUP)/Source/Templates/gcc/startup_stm32f072xx.s
CHIBIOS_IRQ_S_FILE := $(shell find $(CMSIS_DEVSUP) -iname startup_$(DEVICE_TYPE).s |grep gcc)

include $(CSRCDIR)/stm-common.mk
