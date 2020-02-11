typedef enum {
	AP_SUCCESS,

}ArgparseError;


#ifdef CUNIT_TESTS
#include "CUnit/CUnit.h"
#include "CUnit/Basic.h"

int init_suite(void) {
	return 0;
}

int clean_suite(void) {
	return 0;
}

void test_sum(void) {
	/* CU_ASSERT(5==sum(3,2)); */
	/* CU_ASSERT(9==sum(3,6)); */
	/* CU_ASSERT(3==sum(-3,6)); */
	/* CU_ASSERT(6==sum(0,6)); */
}

void test_diff(void) {
	/* CU_ASSERT(1==diff(3,2)); */
	/* CU_ASSERT(-3==diff(3,6)); */
	/* CU_ASSERT(-9==diff(-3,6)); */
	/* CU_ASSERT(-6==diff(0,6)); */
}

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


int main (void) {

	CU_pSuite pSuite1 = NULL, pSuite2 = NULL;
	CU_ErrorCode status = CUE_SUCCESS;

	// Initialize CUnit test registry
	if (CUE_SUCCESS != CU_initialize_registry()) return CU_get_error();

	// Add suites to registry
	if ( (status = CU_utils_try_add_suite(&pSuite1, "Basic_Test_Suite1") != CUE_SUCCESS) ) return status;
	if ( (status = CU_utils_try_add_suite(&pSuite2, "Basic_Test_Suite2") != CUE_SUCCESS) ) return status;

	// add tests to suites
	if ( (status = CU_utils_try_add_test(pSuite1, test_sum, "\n\n……… Testing Sum function……..\n\n")) ) return status;
	if ( (status = CU_utils_try_add_test(pSuite1, test_diff, "\n\n……… Testing diff function……..\n\n")) ) return status;

	CU_basic_run_tests(); // OUTPUT to the screen
	CU_cleanup_registry(); //Cleaning the Registry

	return CU_get_error();
}

#endif
