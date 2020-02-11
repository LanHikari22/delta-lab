#Common makefile include for all projectes

ifeq ($(SPECS),none)
  SPECS :=
else
ifeq ($(SPECS),)
  SPECS := -specs=nano.specs
endif
endif

ifeq ($(SYSTEM),)
S_GCC :=
ifeq ($(S_GCC),)
SYSTEM := $(shell  ls -rd /usr/local/gcc-arm-none-eabi-* 2>/dev/null |head -n 1)/bin/arm-none-eabi
S_GCC := $(shell which $(SYSTEM)-gcc 2>/dev/null)
endif
ifeq ($(S_GCC),)
SYSTEM := arm-none-eabi
S_GCC := $(shell which $(SYSTEM)-gcc 2>/dev/null)
endif
ifeq ($(S_GCC),)
SYSTEM := echo "arm-none-eabi toolchain not found "; false -
S_GCC :=
endif
$(info using gcc: $(S_GCC) ) 
endif

SRCS_C += $(SRCS_ADD)
SRCS_C += $(wildcard $(patsubst %,%/*.c,$(PORTDIRS))) 
SRCS_C += $(wildcard $(patsubst %,%/*.c,$(CSRCDIRS)))
SRCS_C += $(LIBSRCS)
VPATH := $(COMDIR)

GLBL_GCC =  -ffunction-sections -fdata-sections -fmessage-length=0
CFLAGS1 = $(CPU_OPT) $(CMSIS_OPT) $(OTHER_OPT) $(LIBS_OPT) $(GCC_OPT) $(OPTIMIZE) $(GLBL_GCC)
CFLAGS  = $(CFLAGS1) $(patsubst %,-I%,$(INC)) 
ASFLAGS = $(CFLAGS) -x assembler-with-cpp
LDFLAGS = $(CFLAGS1) $(SPECS) -Wl,--gc-sections,-Map=$(MAP),-cref$(LDOPT) -T $(LDDIR)/$(LDSCRIPT) $(patsubst %,-L%,$(LDINC)) 
ARFLAGS = cr
OBJCOPYBIN = -Obinary
OBJCOPYHEX = -Oihex
OBJCOPYS19 = -Osrec
OBJDUMPFLAGS = -S

CC      = $(SYSTEM)-gcc
CCDEP   = $(SYSTEM)-gcc
LD      = $(SYSTEM)-gcc
AR      = $(SYSTEM)-ar
AS      = $(SYSTEM)-gcc
OBJCOPY = $(SYSTEM)-objcopy
OBJDUMP	= $(SYSTEM)-objdump
SIZE	= $(SYSTEM)-size
GDB		= $(SYSTEM)-gdb

OBJ_OUT = $(OBJDIR)

OUT = $(PJNAME).out
BIN = $(PJNAME).bin
LST = $(PJNAME).list
HEX = $(PJNAME).hex
S19 = $(PJNAME).s19
MAP = $(PJNAME).map
DEP = $(PJNAME).d

OBJSC := $(patsubst %.c,%.o,$(SRCS_C)) 
OBJSC := $(patsubst $(COMDIR)/%,%,$(OBJSC)) 
OBJSC := $(patsubst %,$(OBJ_OUT)/%,$(OBJSC)) 
#OBJSC := $(abspath $(OBJSC)) 

OBJSS := $(patsubst %.s,%.o,$(SRCS_S))
OBJSS := $(patsubst $(COMDIR)/%,%,$(OBJSS)) 
OBJSS := $(patsubst %,$(OBJ_OUT)/%,$(OBJSS)) 
#OBJSS := $(abspath $(OBJSS)) 

SRCS = $(SRCS_C) $(SRCS_S)
OBJS = $(OBJSC) $(OBJSS) $(STARTUP_OBJ) $(SYSTEM_OBJ)

info:
	$(info using cc toolchain : $(SYSTEM))
	$(info using cc options   : $(CFLAGS))
#	$(info using as options   : $(ASFLAGS))
	$(info using ld options   : $(LDFLAGS))
#	$(info c sources : $(SRCS_C))
#	@$(CC) --version

all: $(BIN)

filelist: $(OUT)
	make --debug=v |grep -E "(Prerequisite )|(makefile )" |sed -e s/\`/\'/ |cut -d "'"  -f 2 |sort |uniq |grep -v -E "([.][ado])|([.]out)\$$"  >filelist
	-test -d cube && find cube/ -iname "*.ioc" >>filelist 
	@echo $(FILES_ADD) >>filelist 

pjexport: filelist
	-mkdir -p $(EXPDIR)/$(PJNAME)
	-mkdir -p $(EXPDIR)/$(PJNAME)/a
	-mkdir -p $(EXPDIR)/$(PJNAME)/o
	cp -v --parents `cat filelist` ../Makefile $(EXPDIR)/$(PJNAME)	

reset:
	$(OCD_RESET)

flash: $(BIN) $(HEX)
ifeq '$(BL)' '-bl'
	$(BLTCS) -i $(BIN) -o $(BIN).out
	$(OCD_BFLASH)	
else
	$(OCD_FLASH)
endif
						
gdb:
	$(OCD_GDB)
	
boot: $(S19) $(BLTCMD)
	$(BLT) $(S19)

$(HEX): $(OUT)
	@echo objcopy $(HEX)
	@$(OBJCOPY) $(OBJCOPYHEX) $(OUT) $(HEX)

$(S19): $(BIN) $(BLTCS)
	$(BLTCS) -i $(BIN) -o $(BIN).out
	$(SREC) $(BIN).out -binary -offset $(VTOR_INIT) -o $(S19)
	$(SREC_INFO) $(S19)
	-rm -f $(BIN).out
	
$(BIN): $(OUT)
	@echo objcopy $(BIN)
	@$(OBJCOPY) $(OBJCOPYBIN) $(OUT) $(BIN)
	@echo objdump $(LST)
	@$(OBJDUMP) $(OBJDUMPFLAGS) $(OUT) > $(LST)
	@echo size $(OUT)
	@$(SIZE) $(OUT)
	@echo Make finished

$(OUT): $(GEN_ADD) $(LIBS) $(OBJS) $(LDDIR)/$(LDSCRIPT)
	@echo ld $@
#	@echo $(LD) $(LDFLAGS) -o $@
	@$(LD) $(LDFLAGS) -o $@ $(OBJS) -Wl,--start-group,--whole-archive $(LIBS) -Wl,--end-group,--no-whole-archive $(STDLIBS)

#$(LIBS):
#	${MAKE} -C $@
#	@$(foreach LIB,$(LIBDIRS),${MAKE} -C $(LIB) || exit 1;)
	
-include $(LIBS:.a=.d)

gen: clean-gen $(GEN_ADD)

clean:
	@-rm -f $(OBJS) $(OBJS:.o=.d) $(OBJS:.o=.sl) $(OUT) $(BIN) $(HEX) $(S19) $(LST) $(MAP) $(DEP) $(CLEAN_ADD)
	@$(foreach LIB,$(LIBS),${MAKE} -s -C $(LIBDIR) -f $(patsubst $(ARDIR)/%.a,%.mk,$(LIB)) clean || exit 1;)
	@-rm -f jlink.reset jlink.flash filelist

clean-nl:
	@-rm -f $(OBJS) $(OBJS:.o=.d) $(OBJS:.o=.sl) $(OUT) $(BIN) $(HEX) $(S19) $(LST) $(MAP) $(DEP)
#	@$(foreach LIB,$(LIBS),${MAKE} -s -C $(LIBDIR) -f $(patsubst $(ARDIR)/%.a,%.mk,$(LIB)) clean || exit 1;)
	@-rm -f jlink.reset jlink.flash filelist

clean-add:
	@-rm -f $(CLEAN_ADD)

clean-gen:
	@-rm -f $(GEN_ADD)

depend dep: $(DEP)

#$(DEP): Src/*.c
#	$(CCDEP) $(CFLAGS) -MM $^ | sed -e 's@.*.o:@Src/&@' > $(DEP) 

#$(DEP): $(LIB_SRCS_C)
#	$(CCDEP) $(CFLAGS) -MM $^ > $(DEP) 

#$(DEP): $(SRCS)
#	@rm -f $(DEP)
#	@$(foreach SRC,$(SRCS_S),echo dep $(SRC); $(CCDEP) $(CFLAGS) -MM -MT $(OBJ_OUT)/$(SRC:.s=.o) $(SRC) >> $(DEP);)
#	@$(foreach SRC,$(SRCS_C),echo dep $(SRC); $(CCDEP) $(CFLAGS) -MM -MT $(OBJ_OUT)/$(SRC:.c=.o) $(SRC) >> $(DEP);)

$(LIBS): %.a:
	@-mkdir -p a
	${MAKE} -C $(LIBDIR) -f $(patsubst $(ARDIR)/%,%,$*).mk

$(SYSTEM_OBJ): $(SYSTEM_SRC)
	@echo cc $<
	@$(CC) $(CFLAGS) -MMD -c -o $@ $<

$(STARTUP_OBJ): $(STARTUP_SRC)
	@echo as $<
	@$(AS) $(CFLAGS) -MMD -c -o $@ $<

$(OBJSC): $(OBJ_OUT)/%.o: %.c
	@mkdir -p $(dir $@)
ifeq ($(SHOWPJ),1)
	@echo cc \[$(PJNAME)\] $<
else
	@echo cc $<
endif
#	@echo $(CFLAGS) 
	@$(CC) $(CFLAGS) -MMD -c -o $@ -Wa,-adhln=$(@:.o=.sl) $<
#	@$(CC) $(CFLAGS) --save-temps -MMD -c -o $@ $<
#	@$(CC) $(CFLAGS) -MMD -c -o $@ $<

$(OBJSS): $(OBJ_OUT)/%.o: %.s
	@mkdir -p $(dir $@)
	@echo as $<
	@$(AS) $(ASFLAGS) -MMD -c -o $@ $<

-include $(OBJS:.o=.d)
#-include $(DEP)

$(OBJS) $(LIBS): Makefile $(COMDIR)/pj/pjhdr.mk $(COMDIR)/pj/pj.mk $(COMDIR)/lib/lib.mk
