#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lib.h"
/* #define LOG_ERROR_RETURN_DISABLE */
#include "common_macros.h"


ll_LinkedList* ll_new(u32 data_size) {
    ll_LinkedList *out = (ll_LinkedList*)malloc(sizeof(ll_LinkedList));
    out->head = NULL;
    out->tail = NULL;
    out->data_size = data_size;
    return out;
}


/// deallocates the linkedlist and all of the nodes in it
/// also sets the pointer to NULL to detect double free
/// errors returned: 
///      - LL_ERROR_NULL_LINKED_LIST_POINTER (can happen with double free)
/// else return LL_OK
ll_Error ll_free(ll_LinkedList **self) {
    if (*self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;

    struct ll_LinkedListNode *node = (*self)->head;
    while (node) {
        struct ll_LinkedListNode *next = node->next;
        free(node);
        node = next;
    }

    free(*self);

    // set to NULL to prevent this now invalidated pointer from being used
    *self = NULL;

    return LL_OK;
}


/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_INTERNAL (logged)
/// else return LL_OK
ll_Error ll_push(ll_LinkedList *self, void *elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;

    if (self->tail == NULL) {
        if (self->head != NULL) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);
        
        self->head = malloc(sizeof(struct ll_LinkedListNode));
        self->tail = self->head;
        self->tail->prev = self->head;
        self->head->next = self->tail;
        memcpy(self->head->data, elem, self->data_size);

    } else {
        if (self->head == NULL || self->tail->prev == NULL) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);
        if (self->head != self->tail && self->tail->next != NULL) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);

        self->tail->next = malloc(sizeof(struct ll_LinkedListNode));
        self->tail->next->prev = self->tail;
        self->tail->next->next = NULL;
        memcpy(self->tail->next->data, elem, self->data_size);
        
        self->tail = self->tail->next;
    }

    return LL_OK;
}


/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_INTERNAL (logged)
/// else return LL_OK
ll_Error ll_push_front(ll_LinkedList *self, void *elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;

    ll_Error status;

    if (self->head == NULL) {
        status = ll_push(self, elem);
        if (status != LL_OK) return status;
    } else {
        if (self->head != self->tail && self->head->prev != NULL) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);
        
        self->head->prev = malloc(sizeof(struct ll_LinkedListNode));
        self->head->prev->prev = NULL;
        self->head->prev->next = self->head;
        memcpy(self->head->prev->data, elem, self->data_size);
        
        self->head = self->head->prev;
    }

    return LL_OK;
}


/// errors returned:
///      - LL_ERROR_EMPTY_LINKED_LIST
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_INTERNAL (logged)
/// else return LL_OK
ll_Error ll_pop(ll_LinkedList *self, void *out_elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (out_elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;
    if (self->head == NULL && self->tail == NULL) return LL_ERROR_EMPTY_LINKED_LIST;
    if (self->tail == NULL) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);
    if (self->tail->prev == NULL) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);
    
    struct ll_LinkedListNode *node = self->tail;
    memcpy(out_elem, self->tail->data, self->data_size);

    if (self->head == self->tail) {
        // empty after a pop
        self->head = NULL;
        self->tail = NULL;
    } else {
        if (self->tail->prev == self->tail) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);
        self->tail = self->tail->prev;
    }

    free(node);
    return LL_OK;
}


/// errors returned:
///      - LL_ERROR_EMPTY_LINKED_LIST
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_INTERNAL (logged)
/// else return LL_OK
ll_Error ll_pop_front(ll_LinkedList *self, void *out_elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (out_elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;
    if (self->head == NULL && self->tail == NULL) return LL_ERROR_EMPTY_LINKED_LIST;
    if (self->head == NULL || self->head->next == NULL) LOG_ERROR_RETURN(LL_ERROR_INTERNAL);
    
    struct ll_LinkedListNode *node = self->head;
    memcpy(out_elem, node->data, self->data_size);

    if (self->head == self->tail) {
        // empty after a pop
        self->head = NULL;
        self->tail = NULL;
    } else {
        self->head = self->head->next;
    }

    free(node);
    return LL_OK;
}


/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_INTERNAL (logged)
/// else return LL_OK
ll_Error ll_insert(ll_LinkedList *self, int index, void *elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;
}

ll_Error ll_get(const ll_LinkedList *self, int index, void *out);
ll_Error ll_remove(ll_LinkedList *self, int index);


ll_Error ll_buf_init(ll_BufferLinkedList *self, void *buffer, int data_size);
ll_Error ll_buf_push(ll_BufferLinkedList *self, void *elem);
ll_Error ll_buf_pop(ll_BufferLinkedList *self);
ll_Error ll_buf_insert(ll_BufferLinkedList *self, int index, void *elem);
ll_Error ll_buf_get(const ll_BufferLinkedList *self, int index, void **out);
ll_Error ll_buf_remove(ll_BufferLinkedList *self, int index);



#ifndef CUNIT_TESTS
int main(void) {
    printf("beep boop, no testing!\n");
    return 0;
}
#endif


#ifdef CUNIT_TESTS
#include <stdlib.h>
#include <stdbool.h>
#include <inttypes.h>
#include "CUnit/CUnit.h"
#include "CUnit/Basic.h"
#include "cunit_utils/lib.h"

void test_pushpop(void) {
    void assert_push_u32(ll_LinkedList *ll, u32 val) {
        ll_Error status = ll_push(ll, (u32[]){val});
        CU_ASSERT(status == LL_OK);
        CU_ASSERT_PTR_NOT_NULL(ll->tail);
        CU_ASSERT_EQ_U32(*((u32*)ll->tail->data), val);
    }

    void assert_pop_u32(ll_LinkedList *ll, u32 exp) {
        int out_val;
        ll_Error status = ll_pop(ll, &out_val);
        CU_ASSERT(status == LL_OK);
        CU_ASSERT_EQ_U32(out_val, exp);
    }

    void assert_pop_empty_u32(ll_LinkedList *ll) {
        int out_val;
        ll_Error status = ll_pop(ll, &out_val);
        CU_ASSERT(status == LL_ERROR_EMPTY_LINKED_LIST);
    }

    ll_LinkedList *ll = ll_new(/*data_size*/ 4);
    CU_ASSERT_PTR_NULL(ll->head);
    CU_ASSERT_PTR_NULL(ll->tail);
    CU_ASSERT(ll->data_size == 4);

    ll_Error status;

    assert_push_u32(ll, /*val*/ 6000);
    CU_ASSERT_PTR_NOT_NULL(ll->head);
    CU_ASSERT_EQ_U32(*((u32*)ll->head->data), 6000);

    assert_pop_u32(ll, /*exp*/ 6000);

    // assert stack-like behavior
    assert_pop_empty_u32(ll);
    assert_push_u32(ll, 0xAAAABBBB);
    assert_push_u32(ll, 0xCCCCDDDD);
    assert_push_u32(ll, 0xEEEEFFFF);
    assert_pop_u32(ll, 0xEEEEFFFF);
    assert_pop_u32(ll, 0xCCCCDDDD);
    assert_pop_u32(ll, 0xAAAABBBB);
    assert_pop_empty_u32(ll);
    
    status = ll_push(NULL, NULL);
    CU_ASSERT(status == LL_ERROR_NULL_LINKED_LIST_POINTER);
    status = ll_push(ll, NULL);
    CU_ASSERT(status == LL_ERROR_NULL_ELEMENT_POINTER);
}

void test_pushpop_front(void) {

}

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
    status = CU_utils_try_add_test(suites[0], test_pushpop, "\n\nTesting "  STRINGIFY(test_pushpop)  "\n\n");
    if (status != CUE_SUCCESS) return status;

    CU_basic_run_tests(); // OUTPUT to the screen
    CU_cleanup_registry(); //Cleaning the Registry

    return CU_get_error();
}

#endif
