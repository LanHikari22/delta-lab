# common make include for libraries

reverse = $(if $(wordlist 2,2,$(1)),$(call reverse,$(wordlist 2,$(words $(1)),$(1))) $(firstword $(1)),$(1))

LIB_OUT := ../$(PJDIR)/$(ARDIR)/$(LIBNAME)
OBJ_OUT := ../$(PJDIR)/$(OBJDIR)/$(LIBNAME:.a=)

CFLAGS := $(patsubst -I%,-I../$(PJDIR)/%,$(CFLAGS))
ASFLAGS := $(patsubst -I%,-I../$(PJDIR)/%,$(ASFLAGS))

SRCS_CC := $(filter-out %template.c,$(SRCS_C))

OBJSC := $(patsubst %.c,%.o,$(SRCS_CC)) 
OBJSC := $(patsubst %,$(OBJ_OUT)/%,$(OBJSC)) 

OBJSS := $(patsubst %.s,%.o,$(SRCS_S))
OBJSS := $(patsubst %,$(OBJ_OUT)/%,$(OBJSS)) 

DEP := ../$(PJDIR)/$(ARDIR)/$(LIBNAME:.a=.d)
DEP1 := ../$(PJDIR)/$(ARDIR)/$(LIBNAME:.a=.d.d)
#DEP2 := ../$(PJDIR)/$(ARDIR)/$(LIBNAME:.a=.d.d.d)
SRCS = $(SRCS_C) $(SRCS_S)
#OBJS = $(call reverse, $(sort $(OBJSC) $(OBJSS)))
#OBJS = $(sort $(OBJSC) $(OBJSS))
OBJS = $(OBJSC) $(OBJSS)

#test1:
#	@echo $(LIB_OBJS)
#	@echo $(SRCS_C)
#	@echo $(SRCS_S)

.PHONY: all

all: $(LIB_OUT)
	@touch $(LIB_OUT)

zz:
	@echo $(OBJ_OUT)
	@echo $(LIB_OUT)
	@echo $(SRCS)
	@echo $(OBJS)

$(LIB_OUT): $(OBJS)
	@echo ar $@
	@$(AR) $(ARFLAGS) $@ $^
#	@echo $(LIB_OUT)
	@cat $(OBJS:.o=.d) \
	| sed -e 's/.*://' -e 's/\\$$//' \
	| fmt -1 | sort | uniq \
	| sed -e 's,^ \([^.]\), '../$(PJDIR)/$(LIBDIR)/'\1,' \
	| sed -n 's,'../$(PJDIR)/',,p' \
	| sed -e 's/$$/ \\/' -e '$$ s/\\$$//' -e '1 i '$(ARDIR)/$(LIBNAME)': \\' \
	> $(DEP)

.PHONY: clean
clean:
	@-rm -f $(OBJS) $(OBJS:.o=.d) $(LIB_OUT) $(DEP) $(DEP1) $(DEP2)

#depend dep: $(DEP)

#$(DEP): Src/*.c
#	$(CCDEP) $(CFLAGS) -MM $^ | sed -e 's@.*.o:@Src/&@' > $(DEP) 

#$(DEP): $(LIB_SRCS_C)
#	$(CCDEP) $(CFLAGS) -MM $^ > $(DEP) 

#$(DEP): $(SRCS)
#	@rm -f $(DEP)
#	@$(foreach SRC,$(SRCS_S),echo dep $(SRC); $(CCDEP) $(CFLAGS) -MM -MT $(OBJ_OUT)/$(SRC:.s=.o) $(SRC) >> $(DEP) || { rm $(DEP); exit 1; };)
#	@$(foreach SRC,$(SRCS_C),echo dep $(SRC); $(CCDEP) $(CFLAGS) -MM -MT $(OBJ_OUT)/$(SRC:.c=.o) $(SRC) >> $(DEP) || { rm $(DEP); exit 1; };)

#.c.o:
$(OBJSC): $(OBJ_OUT)/%.o: %.c
	@mkdir -p $(dir $@)
#	@echo cc \[$(PJNAME): $(LIBNAME)\] $<
ifeq ($(SHOWPJ),1)
	@echo cc \[$(PJNAME)\] $<
else
	@echo cc $<
endif
#	@echo $(CFLAGS)
	@$(CC) $(CFLAGS) -MMD -c -o $@ $<

#.s.o:
$(OBJSS): $(OBJ_OUT)/%.o: %.s
	@mkdir -p $(dir $@)
	@echo as $<
	@$(AS) $(ASFLAGS) -MMD -c -o $@ $<

-include $(OBJS:.o=.d)
#-include $(DEP)
	
