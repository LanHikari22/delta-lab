src = $(wildcard *.c)
obj = $(src:.c=.o)
dep = $(obj:.o=.d)
libs = $(patsubst lib%, -l%, $(shell basename $(basename $(wildcard libs/*.a)))) \
	-lcunit
exec = $(shell basename $(CURDIR))
version = 0.1.0
repo_base = ../..

CFLAGS =
LDFLAGS = -Llibs $(libs)

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
run: $(exec)
	./$(exec) $(args)

.PHONY: test
test: $(exec)
	./$(exec) --test $(args)
