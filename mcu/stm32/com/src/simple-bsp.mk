CSRCD := $(call current_mk)
#CSRCD := simple-bsp

ifeq '$(INCLIBS)' 'src'

$(info including $(CSRCD))

INC += $(CSRCDIR)/$(CSRCD)
CSRCDIRS += $(CSRCDIR)/$(CSRCD)

A_DEPS := $(wildcard $(patsubst %,%/*.c,$(CSRCDIR)/$(CSRCD)))  
A_DEPS := $(patsubst %.c,%.o,$(A_DEPS)) 
A_DEPS := $(patsubst $(COMDIR)/%,$(OBJDIR)/%,$(A_DEPS)) 

$(A_DEPS): $(C_DEPS)

A_DEPS :=

#test1:
#	@echo $(A_DEPS)
#	@echo $(C_DEPS)

endif
