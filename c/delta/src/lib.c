#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "lib.h"
#define LOG_DEBUG_ENABLE
/* #define ERROR_RETURN_LOG_DISABLE */
/* #define ERROR_RETURN_ASSERT_FAULT_DISABLE */
#include "common_macros.h"


int iDiv(int *res, int a, int b) {
    if (b == 0) {return 1;}
    *res = a/b;
    return 0;
}

int int_iDiv(const int *self, int *res, int b) {
    if (b == 0) {return 1;}
    *res = *self/b;
    return 0;
}


int main(void) {
    int res = EXPECT(int, iDiv, 10, 3);
    LOG_DEBUG_FMT("res: %d", res);
    int a = 10;
    res = EXPECT_S(int, int_iDiv, &a, 2);
    LOG_DEBUG_FMT("res: %d", res);
    LOG_DEBUG_FMT("<anon>+<anon>: %d", EXPECT(int, iDiv, 10, 3) + EXPECT(int, iDiv, 10, 5)); // 5
    LOG_DEBUG_FMT("<anon>+<err>: %d", EXPECT(int, iDiv, 10, 3) + EXPECT_OR_ELSE(int, 10, iDiv, 10, 0)); // 13
    return 0;
}


#ifdef CUNIT_TESTS
#include <stdlib.h>
#include <stdbool.h>
#include <inttypes.h>
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
    status = CU_utils_try_add_suite(&suites[0], "LinkedList Tests");
    if (status != CUE_SUCCESS) return status;

    // add tests to suites
    status = CU_utils_try_add_test(suites[0], test_pushpop, "\n\nTesting " STR(test_pushpop) "()\n\n");
    status = CU_utils_try_add_test(suites[0], test_pushpop_front, "\n\nTesting " STR(test_pushpop_front) "()\n\n");
    status = CU_utils_try_add_test(suites[0], test_iterate_to, "\n\nTesting " STR(test_iterate_to) "()\n\n");
    if (status != CUE_SUCCESS) return status;

    CU_basic_run_tests(); // OUTPUT to the screen
    CU_cleanup_registry(); //Cleaning the Registry

    return CU_get_error();
}

#endif
