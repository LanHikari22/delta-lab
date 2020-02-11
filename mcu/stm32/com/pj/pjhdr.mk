ZZZ := $(shell rm -fv cln)

ifeq ($(NOPAR),1)
else
CORES := $(shell expr `grep -c ^processor /proc/cpuinfo` + 1)
NUMJOBS := -j $(CORES)
MAKEFLAGS += $(NUMJOBS)
endif 

#$(info $(CORES))

PJNAME := $(notdir $(CURDIR))
PJDIR := ../$(notdir $(CURDIR))

ifeq ($(EXPDIR),)
EXPDIR := ../../export
endif

OBJDIR := o
ARDIR := a
SRCDIR := src
INCDIR := inc
LDDIR  := $(COMDIR)/ld
LDINC  :=
LDOPT  :=
LIBDIR := $(COMDIR)/lib
CSRCDIR := $(COMDIR)/src
PORTDIR := port
CUBEDIR := cube

LIBS :=
LIBDIRS :=
LIBSRCS :=
PORTDIRS :=
CSRCDIRS :=
LIBS_OPT :=
SRCS_ADD :=
CLEAN_ADD :=

current_mk = $(patsubst %.mk,%, $(notdir $(lastword $(MAKEFILE_LIST))))

.phony all:
