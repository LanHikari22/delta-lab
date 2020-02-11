# Compile chibios-16.1.4 (kernel only) library

CHIBIOS_VERSION = 16.1.4

LIBN := libchibios-$(CHIBIOS_VERSION)-kernel.a
LIBD := chibios-$(CHIBIOS_VERSION)
LIBP := chibios

ifeq '$(INCLIBS)' 'inc'
CHIBIOS := $(LIBDIR)/$(LIBD)
endif

ifeq '$(INCLIBS)' 'mk'
CHIBIOS := $(LIBD)
endif

include $(CHIBIOS)/os/rt/rt.mk
include $(CHIBIOS)/os/hal/osal/rt/osal.mk
include $(CHIBIOS)/os/rt/ports/ARMCMx/compilers/GCC/mk/port_$(CHIBIOS_ARCH).mk
include $(CHIBIOS)/os/common/ports/ARMCMx/compilers/GCC/mk/startup_$(CHIBIOS_PORT).mk

# this part is to be included at the top of the project Makefile
ifeq '$(INCLIBS)' 'inc'

$(info including $(LIBN))

LDDIR := $(STARTUPLD)

LIBS += $(ARDIR)/$(LIBN)
LIBDIRS += $(LIBDIR)/$(LIBD)
PORTDIRS += $(PORTDIR)/$(LIBP)

LDINC += $(STARTUPLD)/..
FILES_ADD += $(STARTUPLD)/rules_STM32F7xx.ld \
		     $(STARTUPLD)/../rules.ld

INC += $(KERNINC) $(PORTINC) $(STARTUPINC) $(OSALINC)

INC += $(PORTDIR)/$(LIBP)

ifeq ($(USE_PROCESS_STACKSIZE),)
  LDOPT := $(LDOPT),--defsym=__process_stack_size__=0x400
else
  LDOPT := $(LDOPT),--defsym=__process_stack_size__=$(USE_PROCESS_STACKSIZE)
endif

# Exceptions stack size
ifeq ($(USE_EXCEPTIONS_STACKSIZE),)
  LDOPT := $(LDOPT),--defsym=__main_stack_size__=0x400
else
  LDOPT := $(LDOPT),--defsym=__main_stack_size__=$(USE_EXCEPTIONS_STACKSIZE)
endif

OTHER_OPT += -nostartfiles
OTHER_OPT += -DCRT0_CALL_CONSTRUCTORS=FALSE -DCRT0_CALL_DESTRUCTORS=FALSE


#LIBSRCS += $(PORTSRC)

endif

#this part is to be called to build the lib
ifeq '$(INCLIBS)' 'mk'
export

LIBNAME := $(LIBN)

SRCS_C := $(KERNSRC) $(PORTSRC) $(STARTUPSRC)

#$(info sources: $(SRCS_C))

SRCS_S := $(STARTUPASM) $(PORTASM)

include lib.mk

endif

LIBN :=
LIBD :=
LIBP :=
