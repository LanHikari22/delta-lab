DEVICE_FAMILY := STM32F7xx
DEVICE_TYPE := STM32F746xx
LDSCRIPT = STM32F746xG.ld
CHIBIOS_PORT = stm32f7xx
CHIBIOS_ARCH = v7m

HSE_VALUE := 8000000L

CMSIS = $(LIBDIR)/CMSIS-hal
CMSIS_DEVSUP = $(CMSIS)/Device/ST/$(DEVICE_FAMILY)
CMSIS_CORESUP = $(CMSIS)/Include
CMSIS_OPT = -D$(DEVICE_TYPE) -DHSE_VALUE=$(HSE_VALUE) -DCORTEX_USE_FPU
OTHER_OPT := -DUSE_PROCESS_STACK -DINITIALIZE_STACK -DUSE_CHIBIOS

GCC_OPT = -Wall -fno-common -fno-strict-aliasing -Wfatal-errors
CPU_OPT = -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -ffast-math 

INC := $(INCDIR)
INC += $(CMSIS_DEVSUP)/Include $(CMSIS_CORESUP)

CHIBIOS_IRQ_S_FILE = $(CMSIS_DEVSUP)/Source/Templates/gcc/startup_stm32f746xx.s
#CHIBIOS_IRQ_S_FILE := $(shell find $(CMSIS_DEVSUP) -iname startup_$(DEVICE_TYPE).s |grep gcc)

include $(CSRCDIR)/stm-common.mk
