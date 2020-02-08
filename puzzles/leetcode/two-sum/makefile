src = $(wildcard *.c)
obj = $(src:.c=.o)
dep = $(obj:.o=.d)
libs = $(patsubst lib%, -l%, $(shell basename $(basename $(wildcard libs/*.a)))) \
	-lcunit
exec = $(shell basename $(CURDIR))
repo_base = ../../..

CFLAGS =
LDFLAGS = -Llibs $(libs)

all: $(exec)

build: $(exec)

# rule for creating a library in case this is a library project
lib: $(obj)
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
	cp $(repo_base)/c/argparse/libargparse.a libs/

.PHONY: run
run: $(exec)
	./$(exec) $(args)

.PHONY: test
test: $(exec)
	./$(exec) --test $(args)
