INC += $(CUBEDIR)/$(PJNAME)/Inc
#CSRCDIRS += $(CUBEDIR)/$(PJNAME)/Src

C_ISR_NAME := $(notdir $(wildcard $(CUBEDIR)/$(PJNAME)/Src/stm*it.c))
C_ISR_FILE := $(CUBEDIR)/$(PJNAME)/Src/cube_$(C_ISR_NAME)
C_MAIN_FILE := $(CUBEDIR)/$(PJNAME)/Src/cube_main.c 
C_DMA_FILE := $(CUBEDIR)/$(PJNAME)/Inc/cube_dma.h
ifeq ($(CHIBIOS_PORT),)
C_IRQH_FILE :=
else
C_IRQH_FILE := $(CUBEDIR)/$(PJNAME)/Inc/$(CHIBIOS_PORT)-irqs.h
endif
C_AWK_DMA := $(COMDIR)/pj/cube-hal-dma.awk
C_AWK_IRQ := $(COMDIR)/pj/cube-hal-irqs.awk

CLEAN_ADD += $(C_ISR_FILE) $(C_MAIN_FILE) $(C_DMA_FILE) $(C_IRQH_FILE)
GEN_ADD += $(C_ISR_FILE) $(C_MAIN_FILE) $(C_DMA_FILE) $(C_IRQH_FILE)
SRCS_ADD += $(patsubst %_it.c,, $(patsubst %main.c,, $(wildcard $(CUBEDIR)/$(PJNAME)/Src/*.c)))
SRCS_ADD += $(C_MAIN_FILE) $(C_ISR_FILE)
C_DEPS += $(C_DMA_FILE)
FILES_ADD += $(C_AWK_DMA) 

$(C_MAIN_FILE): $(CUBEDIR)/$(PJNAME)/Src/main.c
	@echo gen $@
#	@echo generate $(C_MAIN_FILE) calling main1\(\)
ifeq ($(CHIBIOS_PORT),)
	@cat $< \
	| sed -e '/USER CODE END PFP/ i void main1\(void\);'	\
	| sed -e '/USER CODE BEGIN WHILE/ i main1();' \
	| sed -e '/int main(void)/ i __weak' \
	> $@
else
	@cat $< \
	| sed -e '/USER CODE END PFP/ i void main1\(void\);'	\
	| sed -e '/USER CODE BEGIN WHILE/ i main1();' \
	| sed -e '/int main(void)/ i __weak' \
	| sed -e 's/SCB_EnableICache()/\/\/removed by cube-hal.mk/' \
	| sed -e 's/SCB_EnableDCache()/\/\/removed by cube-hal.mk/' \
	> $@
endif

ifeq ($(CHIBIOS_PORT),)
else
FILES_ADD += $(C_AWK_IRQ)
$(C_ISR_FILE): $(C_IRQH_FILE)

$(C_IRQH_FILE): $(C_AWK_IRQ) $(CHIBIOS_IRQ_S_FILE)
ifeq ($(CHIBIOS_IRQ_S_FILE),)
	@echo missing startup_stm32xx.s file && false -
endif
	@echo gen $@
	@test -f $(CHIBIOS_IRQ_S_FILE) && cat $(CHIBIOS_IRQ_S_FILE) \
	|sed -e 's/\r$///'  | gawk -f $(C_AWK_IRQ) \
	> $@
endif

$(C_ISR_FILE): $(CUBEDIR)/$(PJNAME)/Src/$(C_ISR_NAME)
	@echo gen $@
#	@echo generate $(C_ISR_FILE) declaring ISRs as weak symbols
ifeq ($(CHIBIOS_PORT),)
	@cat $< \
	| sed -e '/IRQHandler(void)/ i __weak'	\
	> $@
else
	@cat $< \
	| sed -e '/USER CODE END 0/ i #include "$(CHIBIOS_PORT)-irqs.h"' \
	| sed -e '/Handler(void)/ i __weak'	\
	> $@
endif
	
$(C_DMA_FILE): $(CUBEDIR)/$(PJNAME)/Src/main.c $(C_AWK_DMA)
	@echo gen $@
#	@echo generate $(C_DMA_FILE) 
	@cat $(CUBEDIR)/$(PJNAME)/Src/*.c \
	| gawk -f $(C_AWK_DMA) \
	> $(C_DMA_FILE)
