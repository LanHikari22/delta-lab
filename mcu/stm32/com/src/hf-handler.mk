CSRCD := $(call current_mk)
#CSRCD := hf-handler

ifeq '$(INCLIBS)' 'src'

$(info including $(CSRCD))

INC += $(CSRCDIR)/$(CSRCD)
CSRCDIRS += $(CSRCDIR)/$(CSRCD) 

endif
