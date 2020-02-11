# Compile the STM32F10x Standard Peripheral Library

LIBN := libstm32f0xxhal.a
LIBD := STM32F0xx_HAL_Driver
LIBP := fw 

# this part is to be included at the top of the project Makefile
ifeq '$(INCLIBS)' 'inc'

$(info including $(LIBN))

LIBS += $(ARDIR)/$(LIBN)
LIBDIRS += $(LIBDIR)/$(LIBD)
PORTDIRS += $(PORTDIR)/$(LIBP)
LIBS_OPT += -DUSE_HAL_DRIVER
SRCS_ADD += $(LIBDIR)/CMSIS-hal/Device/ST/STM32F0xx/Source/Templates/system_stm32f0xx.c


INC += $(LIBDIR)/$(LIBD)/Inc
INC += $(PORTDIR)/$(LIBP)

endif

#this part is to be called to build the lib
ifeq '$(INCLIBS)' 'mk'
export
#$(info making $(LIBN))

LIBNAME := $(LIBN)

SRCS_C := $(wildcard $(LIBD)/Src/*.c) 
SRCS_S := $(wildcard $(LIBD)/Src/*.s) 

include lib.mk

endif

LIBN :=
LIBD :=
LIBP :=
