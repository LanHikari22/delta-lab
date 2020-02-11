src = $(wildcard src/*.c)
obj = $(patsubst src/%, obj/%, $(src:.c=.o))
dep = $(obj:.o=.d)
libs = $(patsubst lib%, -l%, $(notdir $(basename $(wildcard libs/*.a) $(wildcard libs/*/*.a)))) \
	-lcunit
exec = $(notdir $(CURDIR))
version = 0.1.0
repo_base = ../../..

CFLAGS_INCLUDE_LIB_HEADERS = -Iinc $(patsubst %, -I%, $(dir $(wildcard libs/*/)))
LDFLAGS_INCLUDE_LIB_DIRS = -Llibs $(patsubst %, -L%, $(dir $(wildcard libs/*/)))
CFLAGS = -Wall $(CFLAGS_INCLUDE_LIB_HEADERS)
LDFLAGS = $(LDFLAGS_INCLUDE_LIB_DIRS) $(libs)

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
ifeq (,$(wildcard src/lib.c))
	$(error "making a static library in a project that doesn't contain a lib.c!")
endif
	rm -rf lib$(exec)-$(version)
	mkdir -p lib$(exec)-$(version)
	mkdir -p lib$(exec)-$(version)/$(exec)
	$(AR) rcs lib$(exec)-$(version)/lib$(exec)-$(version).a $^
	cp inc/* lib$(exec)-$(version)/$(exec)

$(exec): $(obj)
	$(CC) $(CFLAGS) -o $@-$(version) $^ $(LDFLAGS)

-include $(dep)   # include all dep files in the makefile

obj/%.o: src/%.c
	@mkdir -p obj/
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

# rule to generate a dep file by using the C preprocessor
# (see man cpp for details on the -MM and -MT options)
obj/%.d: src/%.c
	@$(CPP) $(CFLAGS) $< -MM -MT $(@:.d=.o) >$@

.PHONY: clean
clean:
	rm -f $(obj) $(exec)
	rm -f $(dep)

# rule for installing prerequesites like static libraries before execution
.PHONE: install
install:
	mkdir -p libs/
	cp -r $(repo_base)/c/cunit_utils/libcunit_utils-0.1.0 libs/

.PHONY: run
run: clean $(exec)
	./$(exec)-$(version) $(args)

.PHONY: test
test: clean $(exec)
	./$(exec)-$(version) $(args)
