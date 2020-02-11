CC = arm-none-eabi-gcc
AR = arm-none-eabi-ar
CPP = arm-none-eabi-cpp

src = $(wildcard *.c)
obj = $(src:.c=.o)
dep = $(obj:.o=.d)
libs = $(patsubst lib%, -l%, $(notdir $(basename $(wildcard libs/*.a)))) \
	# -lcunit
exec = $(shell basename $(CURDIR))
version = 0.1.0
repo_base = ../../..

# --specs=nosys.specs: needed to be able to compile for another target, otherwise you get _exit error
CFLAGS = -Wall --specs=nosys.specs -I${STM32F4xx_INC_PATH} -I${repo_base}/mcu/stm32/nucleo-f410-bsp1/cube/nucleo-f410-bsp1/Inc \
	-I${repo_base}/mcu/stm32/com/lib/CMSIS-hal/Device/ST/STM32F4xx/Include/
LDFLAGS = -Llibs $(libs)

# for testing, enable conditional compilation macro to compile CUnit tests
ifeq ($(MAKECMDGOALS), test)
	CFLAGS += -D CUNIT_TESTS
endif

all: $(exec)

build: $(exec)

# rule for creating a library in case this is a library project
# an assumption is made that intead of main, a library requires a "lib.c"
# this is used so that this rule isn't accidentally ran on projects that aren't meant to be library projects
lib: $(obj)
ifeq (,$(wildcard lib.c))
	$(error "making a static library in a project that doesn't contain a lib.c!")
endif
	$(AR) rcs lib$(exec).a $^

$(exec): $(obj)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

-include $(dep)   # include all dep files in the makefile

# this rule has a default if not specified
%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

# rule to generate a dep file by using the C preprocessor
# (see man cpp for details on the -MM and -MT options)
%.d: %.c
	@$(CPP) $(CFLAGS) $< -MM -MT $(@:.d=.o) >$@

.PHONY: clean
clean:
	rm -f $(obj) $(exec)
	rm -f $(dep)
	rm -f $(exec)
	rm -f lib$(exec).a

# rule for installing prerequesites like static libraries before execution
.PHONE: install
install:
	mkdir -p libs/

.PHONY: run
run: clean $(exec)
	./$(exec) $(args)

.PHONY: test
test: clean $(exec)
	./$(exec) $(args)
