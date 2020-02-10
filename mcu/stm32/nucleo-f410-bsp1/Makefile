export

#always set COMDIR (common sources, makefiles, libraries) first
COMDIR := ../com

# those are kinda hacked into other variables since make includes restricted control
CFLAGS += -Iinc
LDFLAGS +=

#set optimize/debug symbols options
OPTIMIZE := -O3 -ggdb $(CFLAGS)

#set std libs to be linked
STDLIBS := -lm $(LDFLAGS)

#include common project header
include $(COMDIR)/pj/pjhdr.mk

#include target/os/lib specific header
include $(COMDIR)/pj/f410rb-chibios.mk
#SYSTEM := /usr/local/gcc-arm-none-eabi-4_8-2014q3/bin/arm-none-eabi
#SYSTEM := /usr/local/gcc-arm-none-eabi-4_9-2015q2/bin/arm-none-eabi
#SYSTEM := /usr/local/gcc-arm-none-eabi-4_9-2015q3/bin/arm-none-eabi
#SYSTEM := /usr/local/gcc-arm-none-eabi-5_2-2015q4/bin/arm-none-eabi
#SPECS:= -specs=nano.specs


#include stm32cube header
include $(COMDIR)/pj/cube-hal.mk

#include libraries
INCLIBS := inc
include $(LIBDIR)/libstm32f4xxhal.mk
include $(LIBDIR)/libchibios-16.1.4-kernel$(BL).mk

#include common sources
INCLIBS := src

include $(CSRCDIR)/simple-bsp.mk
#include $(CSRCDIR)/hf-handler.mk

#start making
INCLIBS := mk
   
#set ocd command (interface/target)
include $(COMDIR)/pj/oocd-stm32f4xx.mk
OCD = $(OCD-nucleo)

#add sources  
SRCS_C := $(wildcard $(SRCDIR)/*.c) 
SRCS_S := $(wildcard $(SRCDIR)/*.s) 

#include common project makefile
include $(COMDIR)/pj/pj.mk

.PHONY=program
program:
	# @echo CFLAGS: $(CFLAGS)
	# @echo LDFLAGS: $(LDFLAGS)
	${STM32_PROGRAMMER_HOME}/STM32_Programmer_CLI --connect port=SWD --download nucleo-f410-bsp1.out --start
