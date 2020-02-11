DEVICE_FAMILY := STM32L4xx
DEVICE_TYPE := STM32L476xx
LDSCRIPT = STM32L476xG.ld
CHIBIOS_PORT = stm32l4xx
CHIBIOS_ARCH = v7m

#HSE_VALUE := 8000000L

CMSIS = $(LIBDIR)/CMSIS-hal
CMSIS_DEVSUP = $(CMSIS)/Device/ST/$(DEVICE_FAMILY)
CMSIS_CORESUP = $(CMSIS)/Include
CMSIS_OPT = -D$(DEVICE_TYPE) -DCORTEX_USE_FPU
#-DHSE_VALUE=$(HSE_VALUE)
OTHER_OPT := -DUSE_PROCESS_STACK -DINITIALIZE_STACK -DUSE_CHIBIOS

GCC_OPT = -Wall -fno-common -fno-strict-aliasing -Wfatal-errors
CPU_OPT = -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -ffast-math  

INC := $(INCDIR)
INC += $(CMSIS_DEVSUP)/Include $(CMSIS_CORESUP)

CHIBIOS_IRQ_S_FILE := $(shell find $(CMSIS_DEVSUP) -iname startup_$(DEVICE_TYPE).s |grep gcc)

include $(CSRCDIR)/stm-common.mk
