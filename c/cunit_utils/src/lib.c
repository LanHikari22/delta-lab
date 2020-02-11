#include "CUnit/CUnit.h"
#include "CUnit/Basic.h"
#include <stdbool.h>
#include <inttypes.h>
#include <stdlib.h>
#include "lib.h"

int init_suite(void);
int clean_suite(void);

/// attempts to add suite to registry. reports failure otherwise and clears registry to prevent memory leaks in CUnit lib
/// returns CU_get_error() in case of failure, else CUE_SUCCESS.
CU_ErrorCode CU_utils_try_add_suite(CU_pSuite *out, const char *suite_name) {
	*out = CU_add_suite(suite_name, init_suite, clean_suite);
	if (*out == NULL) {
		CU_cleanup_registry();
		return CU_get_error();
	}
	return CUE_SUCCESS;
}

/// attempts to add a test to a suite. reports failure otherwise and clears registry to prevent memory leaks in CUnit lib
/// returns CU_get_error() in case of failure, else CUE_SUCCESS.
CU_ErrorCode CU_utils_try_add_test(CU_pSuite suite, void (*test_callback)(void), const char *msg) {
	if (CU_add_test(suite, msg, test_callback) == NULL) {
		CU_cleanup_registry();
		return CU_get_error();
	}
	return CUE_SUCCESS;
}

bool CU_impl_assert_eq_u32(uint32_t actual, uint32_t expected, const char *actual_expr, const char *expected_expr, int line, const char *file) {
    if (actual != expected) {
        char *buf = NULL;
        char msg[100];
        int size = snprintf(msg, sizeof(msg)/sizeof(char), "CU_ASSERT_EQ_U32(%s, %s): %d != %d", actual_expr, expected_expr, actual, expected);

        // faled to guess sufficient space for message -- dynamically allocate string
        if (size < 0 || size >= sizeof(msg)/sizeof(char)) {
            buf = (char *)malloc(size+1); // +'\0'
            snprintf(buf, size, "CU_ASSERT_EQ_U32(%s, %s): %d != %d", actual_expr, expected_expr, actual, expected);
        } else {
            buf = msg;
        }

        return CU_assertImplementation(((actual) == (expected)), line, (buf), file, "", false);
    } 
    return true;
}
