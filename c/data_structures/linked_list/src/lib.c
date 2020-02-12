#include <stdio.h>
#include <stdlib.h>

/// given an array nums, return a malloc'd array of 2 element indices such that the elements add up to 
int* twoSum(int* nums, int numsSize, int target, int* returnSize){
    for (int i=0; i<numsSize; i++) {
        for (int j=i+1; j<numsSize; j++) {
            if (nums[i] + nums[j] == target) {
                *returnSize = 2;
                int *out = (int*)malloc(2*sizeof(int));
                out[0] = i; 
                out[1] = j;
                return out;
            }
        }
    }
    return NULL;
}

#ifdef CUNIT_TESTS
int cu_main(void);
#endif

int main(void) {
    #ifdef CUNIT_TESTS
        cu_main();
        return 0;
    #endif
    printf("beep boop, no testing!\n");
    return 0;
}


#ifdef CUNIT_TESTS
#include <stdlib.h>
#include <stdbool.h>
#include <inttypes.h>
#include "CUnit/CUnit.h"
#include "CUnit/Basic.h"
#include "cunit_utils/lib.h"


void test_twoSum(void) {
    void run_test(int *arr, int arr_size, int target, int exp[2]) {
        int act_size = -1;
        int *act = twoSum(arr, arr_size, target, &act_size);
        if (act != NULL) {
            CU_ASSERT_EQ_U32(act_size, 2);
            CU_ASSERT(act[0] < arr_size);
            CU_ASSERT(act[1] < arr_size);
            CU_ASSERT_EQ_U32(act[0], exp[0]);
            CU_ASSERT_EQ_U32(act[1], exp[1]);
            CU_ASSERT_EQ_U32(arr[act[0]] + arr[act[1]], target);

            free(act);
        } else {
            CU_ASSERT_EQ_U32(act_size, -1);
            CU_ASSERT_PTR_NULL(act);
        }
    }

    #define ARR_ARG(ARR) (ARR), sizeof(ARR) != 0 ? sizeof(ARR) / (ARR)[0]
    run_test((int[]) {2, 7, 11, 15}, 4, 9, (int[2]){0, 1});
}

int init_suite(void) {
    return 0;
}

int clean_suite(void) {
    return 0;
}

int cu_main (void) {

    CU_pSuite suites[1] = {NULL};
    CU_ErrorCode status = CUE_SUCCESS;

    // Initialize CUnit test registry
    if (CUE_SUCCESS != CU_initialize_registry()) return CU_get_error();

    // Add suites to registry
    if ( (status = CU_utils_try_add_suite(&suites[0], "twoSumsTestSuit") != CUE_SUCCESS) ) return status;

    // add tests to suites
    if ( (status = CU_utils_try_add_test(suites[0], test_twoSum, "\n\nTesting Sum twoSum()\n\n")) ) return status;

    CU_basic_run_tests(); // OUTPUT to the screen
    CU_cleanup_registry(); //Cleaning the Registry

    return CU_get_error();
}

#endif
