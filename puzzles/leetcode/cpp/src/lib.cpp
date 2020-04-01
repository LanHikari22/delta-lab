#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "lib.h"
#include "common_macros.h"


#ifndef CUNIT_TESTS
int main(void) {
    printf("Hello Tester!\n");
    return 0;
}
#endif


#ifdef CUNIT_TESTS
#include <stdlib.h>
#include <stdbool.h>
#include <inttypes.h>
#include <time.h>
#include "CUnit/CUnit.h"
#include "CUnit/Basic.h"
#include "cunit_utils/lib.h"

int init_suite(void) {
    return 0;
}

int clean_suite(void) {
    return 0;
}

int main (void) {

    CU_pSuite suites[1] = {NULL};
    CU_ErrorCode status = CUE_SUCCESS;

    // Initialize CUnit test registry
    status = CU_initialize_registry();
    if (status != CUE_SUCCESS) return CU_get_error();

    // Add suites to registry
    status = CUU_utils_try_add_suite(&suites[0], "LinkedList Tests");
    if (status != CUE_SUCCESS) return status;

    // add tests to suites
    status = CUU_utils_try_add_test(suites[0], test_pushpop, "\n\nTesting " STR(test_pushpop) "()\n\n");
    if (status != CUE_SUCCESS) return status;

    CU_basic_run_tests(); // OUTPUT to the screen
    CU_cleanup_registry(); //Cleaning the Registry

    return CU_get_error();
}

#endif
