#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "lib.h"
#define LOG_DEBUG_ENABLE
/* #define ERROR_RETURN_LOG_DISABLE */
/* #define ERROR_RETURN_ASSERT_FAULT_DISABLE */
#include "common_macros.h"


/// returns NULL on failure
ll_LinkedList* ll_new(u32 data_size) {
    ll_LinkedList *out = (ll_LinkedList*)malloc(sizeof(ll_LinkedList));
    if (out == NULL) return NULL;
    out->head = NULL;
    out->tail = NULL;
    out->data_size = data_size;
    out->len = 0;
    return out;
}


/// deallocates the linkedlist and all of the nodes in it
/// also sets the pointer to NULL to detect double free
/// errors returned: 
///      - LL_ERROR_NULL_LINKED_LIST_POINTER (can happen with double free)
/// else returns LL_OK
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


inline bool ll_is_empty(const ll_LinkedList *self) {
    return (self != NULL 
            && self->head == NULL && self->tail == NULL
            && self->len == 0);
}


/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_MALLOC_FAILURE
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
ll_Error ll_push(ll_LinkedList *self, void *elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;

    if (self->tail == NULL) {
        if (self->head != NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
        
        self->head = malloc(sizeof(struct ll_LinkedListNode));
        if (self->head == NULL) ERROR_RETURN(LL_ERROR_MALLOC_FAILURE);
        self->tail = self->head;
        self->tail->prev = self->head;
        self->head->next = self->tail;
        memcpy(self->head->data, elem, self->data_size);

    } else {
        if (self->head == NULL || self->tail->prev == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
        if (self->head != self->tail && self->tail->next != NULL) ERROR_RETURN(LL_ERROR_INTERNAL);

        self->tail->next = malloc(sizeof(struct ll_LinkedListNode));
        if (self->tail->next == NULL) ERROR_RETURN(LL_ERROR_MALLOC_FAILURE);
        self->tail->next->prev = self->tail;
        self->tail->next->next = NULL;
        memcpy(self->tail->next->data, elem, self->data_size);
        
        self->tail = self->tail->next;
    }

    if (self->len < 0) ERROR_RETURN(LL_ERROR_INTERNAL);
    self->len++;

    return LL_OK;
}


/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_MALLOC_FAILURE
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
ll_Error ll_push_front(ll_LinkedList *self, void *elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;

    ll_Error status;

    if (ll_is_empty(self)) {
        status = ll_push(self, elem);
        if (status != LL_OK) ERROR_RETURN(status);
    } else {
        // in case this isn't only one element (head=tail), then head->prev should be NULL
        if (self->head != self->tail && self->head->prev != NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
        
        self->head->prev = malloc(sizeof(struct ll_LinkedListNode));
        if (self->head->prev == NULL) ERROR_RETURN(LL_ERROR_MALLOC_FAILURE);
        self->head->prev->prev = NULL;
        self->head->prev->next = self->head;
        memcpy(self->head->prev->data, elem, self->data_size);
        
        self->head = self->head->prev;
    
        if (self->len < 0) ERROR_RETURN(LL_ERROR_INTERNAL);
        self->len++;
    }

    return LL_OK;
}


/// param out_elem: node element is written to it, or ignored if NULL.
/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_EMPTY_LINKED_LIST
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
ll_Error ll_pop(ll_LinkedList *self, void *out_elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (ll_is_empty(self)) return LL_ERROR_EMPTY_LINKED_LIST;
    if (self->tail == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
    if (self->head != self->tail && self->tail->prev == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
    
    // copy node data to out_elem if not NULL
    struct ll_LinkedListNode *node = self->tail;
    if (out_elem != NULL) memcpy(out_elem, self->tail->data, self->data_size);

    if (self->head == self->tail && self->len == 1) {
        // empty after a pop
        self->head = NULL;
        self->tail = NULL;
    } else {
        if (self->tail->prev == self->tail) ERROR_RETURN(LL_ERROR_INTERNAL);
        self->tail = self->tail->prev;
    }

    if (self->len <= 0) ERROR_RETURN(LL_ERROR_INTERNAL);
    self->len--;

    free(node);
    return LL_OK;
}


/// param out_elem: node element is written to it, or ignored if NULL.
/// errors returned:
///      - LL_ERROR_EMPTY_LINKED_LIST
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
ll_Error ll_pop_front(ll_LinkedList *self, void *out_elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (ll_is_empty(self)) return LL_ERROR_EMPTY_LINKED_LIST;
    if (self->head == NULL || self->head->next == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
    
    // copy node data to out_elem if not NULL
    struct ll_LinkedListNode *node = self->head;
    /* LOG_DEBUG_FMT("out_elem: %p", out_elem); */
    /* LOG_DEBUG_FMT("node->data: %d", *(u16*)node->data); */
    if (out_elem != NULL) memcpy(out_elem, node->data, self->data_size);
    /* if (out_elem != NULL) LOG_DEBUG_FMT("*out_elem: %d", *(u16*)out_elem); */
    /* LOG_DEBUG_NEWLINE(); */

    if (self->head == self->tail) {
        // empty after a pop
        self->head = NULL;
        self->tail = NULL;
    } else {
        self->head = self->head->next;
    }
    
    if (self->len <= 0) ERROR_RETURN(LL_ERROR_INTERNAL);
    self->len--;

    free(node);
    return LL_OK;
}


/// determines the shortest path from head to index or tail to index and iterates through it
/// the node at the index is written to out_node
/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_NODE_POINTER
///      - LL_ERROR_EMPTY_LINKED_LIST
///      - LL_ERROR_INDEX_OUT_OF_BOUNDS
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
static ll_Error iterate_to(const ll_LinkedList *self, int index, struct ll_LinkedListNode **out_node) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (out_node == NULL) return LL_ERROR_NULL_NODE_POINTER;
    if (ll_is_empty(self)) return LL_ERROR_EMPTY_LINKED_LIST;
    if (self->len < 0) ERROR_RETURN(LL_ERROR_INTERNAL);
    if (index < 0 || index > self->len) return LL_ERROR_INDEX_OUT_OF_BOUNDS;

    // iterate to target node to retrieve
    struct ll_LinkedListNode *target = NULL;
    if (self->len - index < index) {
        // better iterate in reverse since the distance from tail is shorter
        for (target=self->tail; target != NULL; target = target->prev) {
            if (self->len - index++) break;
        }
    } else {
        // iterate from head
        for (target=self->head; target != NULL; target = target->next) {
            if (index--) break;
        }
    }
    
    if (target == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
    *out_node = target;
    return LL_OK;
}


/// traverses to the nth node (unless it's tail or head) and left-inserts a node with the element content at
/// the given index.
/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_INDEX_OUT_OF_BOUNDS
///      - LL_ERROR_MALLOC_FAILURE
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
ll_Error ll_insert(ll_LinkedList *self, int index, void *elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;
    if (self->len < 0) ERROR_RETURN(LL_ERROR_INTERNAL);
    if (index < 0 || index > self->len) return LL_ERROR_INDEX_OUT_OF_BOUNDS;
    
    ll_Error status;

    if (self->len == 0 || index == self->len) {
        status = ll_push(self, elem);
        if (status != LL_OK) ERROR_RETURN(status);
    }
    else if (index == 0) {
        status = ll_push_front(self, elem);
        if (status != LL_OK) ERROR_RETURN(status);
    }
    else {
        // traverse to node to insert at
        struct ll_LinkedListNode *target_node = NULL; 
        status = iterate_to(self, index, &target_node);
        if (status != LL_OK) ERROR_RETURN(LL_ERROR_INTERNAL);
        if (target_node == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);


        // insert new node to the left of the target_node at index
        struct ll_LinkedListNode *node = malloc(sizeof(struct ll_LinkedListNode));
        if (node == NULL) ERROR_RETURN(LL_ERROR_MALLOC_FAILURE);
        node->next = target_node;
        node->prev = target_node->prev;
        target_node->prev = node;

        memcpy(node->data, elem, self->data_size);
        self->len++;
    }

    return LL_OK;
}



/// retrieves the data in a node at an index without removing that node.
/// it's preferable to iterate rather than use this function as it's O(n)
/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_NULL_ELEMENT_POINTER
///      - LL_ERROR_EMPTY_LINKED_LIST,
///      - LL_ERROR_INDEX_OUT_OF_BOUNDS
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
ll_Error ll_get(const ll_LinkedList *self, int index, void *out_elem) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (out_elem == NULL) return LL_ERROR_NULL_ELEMENT_POINTER;

    // iterate to target node to retrieve
    struct ll_LinkedListNode *target = NULL;
    ll_Error status = iterate_to(self, index, &target);
    if (status == LL_ERROR_INDEX_OUT_OF_BOUNDS) return status;
    if (status != LL_OK) ERROR_RETURN(status);

    // retrieve target node data
    if (target == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
    memcpy(out_elem, target->data, self->data_size);
    
    return LL_OK;
}


/// errors returned:
///      - LL_ERROR_NULL_LINKED_LIST_POINTER
///      - LL_ERROR_EMPTY_LINKED_LIST
///      - LL_ERROR_INDEX_OUT_OF_BOUNDS
///      - LL_ERROR_INTERNAL
/// else returns LL_OK
ll_Error ll_remove(ll_LinkedList *self, int index) {
    if (self == NULL) return LL_ERROR_NULL_LINKED_LIST_POINTER;
    if (ll_is_empty(self)) return LL_ERROR_EMPTY_LINKED_LIST;
    if (self->len < 0) ERROR_RETURN(LL_ERROR_INTERNAL);
    if (index < 0 || index > self->len) return LL_ERROR_INDEX_OUT_OF_BOUNDS;

    ll_Error status;
    if (self->len == 1 || index == self->len) {
        status = ll_pop(self, NULL);
        if (status != LL_OK) ERROR_RETURN(status);
    }
    else if (index == 0) {
        status = ll_pop_front(self, NULL);
        if (status != LL_OK) ERROR_RETURN(status);
    }
    else {
        struct ll_LinkedListNode *target = NULL;
        status = iterate_to(self, index, &target);
        if (status != LL_OK) ERROR_RETURN(status);
        if (target == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);

        // link the target's prev with next as it must be a middle node
        if (target->prev == NULL || target->next == NULL) ERROR_RETURN(LL_ERROR_INTERNAL);
        target->prev->next = target->next;
        target->next->prev = target->prev;

        free(target);
        self->len--;
    }

    return LL_OK;
}



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

ll_LinkedList* assert_new(u32 data_size) {
    ll_LinkedList *ll = ll_new(data_size);
    CU_ASSERT_PTR_NULL(ll->head);
    CU_ASSERT_PTR_NULL(ll->tail);
    CU_ASSERT(ll->data_size == data_size);
    CU_ASSERT(ll->len == 0);
    return ll;
}

bool assert_push_u32(ll_LinkedList *ll, u32 val) {
    ll_Error status = ll_push(ll, (u32[]){val});
    CU_ASSERT(status == LL_OK);
    if (CU_get_error() != CUE_SUCCESS) return false;
    CU_ASSERT_PTR_NOT_NULL(ll->tail);
    if (CU_get_error() != CUE_SUCCESS) return false;
    CU_ASSERT_EQ_U32(*((u32*)ll->tail->data), val);
    if (CU_get_error() != CUE_SUCCESS) return false;
    return true;
}

bool assert_pop_u32(ll_LinkedList *ll, u32 exp) {
    int out_val;
    ll_Error status = ll_pop(ll, &out_val);
    CU_ASSERT(status == LL_OK);
    if (CU_get_error() != CUE_SUCCESS) return false;
    CU_ASSERT_EQ_U32(out_val, exp);
    if (CU_get_error() != CUE_SUCCESS) return false;
    return true;
}

bool assert_pop_empty_u32(ll_LinkedList *ll) {
    int out_val;
    ll_Error status = ll_pop(ll, &out_val);
    CU_ASSERT(status == LL_ERROR_EMPTY_LINKED_LIST);
    if (CU_get_error() != CUE_SUCCESS) return false;
    return true;
}

bool assert_push_front_u32(ll_LinkedList *ll, u32 val) {
    ll_Error status = ll_push_front(ll, (u32[]){val});
    CU_ASSERT(status == LL_OK);
    if (CU_get_error() != CUE_SUCCESS) return false;
    CU_ASSERT_PTR_NOT_NULL(ll->tail);
    if (CU_get_error() != CUE_SUCCESS) return false;
    CU_ASSERT_EQ_U32(*((u32*)ll->head->data), val);
    if (CU_get_error() != CUE_SUCCESS) return false;
    return true;
}

bool assert_pop_front_u32(ll_LinkedList *ll, u32 exp) {
    int out_val;
    ll_Error status = ll_pop_front(ll, &out_val);
    CU_ASSERT(status == LL_OK);
    if (CU_get_error() != CUE_SUCCESS) return false;
    CU_ASSERT_EQ_U32(out_val, exp);
    if (CU_get_error() != CUE_SUCCESS) return false;
    return true;
}

bool assert_pop_front_empty_u32(ll_LinkedList *ll) {
    int out_val;
    ll_Error status = ll_pop(ll, &out_val);
    CU_ASSERT(status == LL_ERROR_EMPTY_LINKED_LIST);
    if (CU_get_error() != CUE_SUCCESS) return false;
    return true;
}

bool assert_iterate_to_u32(ll_LinkedList *ll, int index, u32 exp) {
    struct ll_LinkedListNode *target;
    ll_Error status = iterate_to(ll, index, &target);
    CU_ASSERT(status == LL_OK);
    CU_ASSERT_PTR_NOT_NULL(target);
    CU_ASSERT_EQ_U32(*(u32*)target->data, exp);
    LOG_DEBUG_FMT("CU_get_error(): %d", CU_get_error());
    return true;
}

bool assert_iterate_to_error(ll_LinkedList *ll, int index, ll_Error exp) {
    struct ll_LinkedListNode *target;
    ll_Error status = iterate_to(ll, index, &target);
    CU_ASSERT(status == exp);
    if (CU_get_error() != CUE_SUCCESS) return false;
    return true;
}

void test_pushpop(void) {
    ll_LinkedList *ll = assert_new(/*data_size*/ 4);
    ll_Error status;

    CU_ASSERT(assert_push_u32(ll, /*val*/ 6000));
    CU_ASSERT_PTR_NOT_NULL(ll->head);
    CU_ASSERT_EQ_U32(*((u32*)ll->head->data), 6000);

    CU_ASSERT(assert_pop_u32(ll, /*exp*/ 6000));

    // assert stack behavior
    CU_ASSERT(assert_pop_empty_u32(ll));
    CU_ASSERT(assert_push_u32(ll, 0xAAAABBBB));
    CU_ASSERT(assert_push_u32(ll, 0xCCCCDDDD));
    CU_ASSERT(assert_push_u32(ll, 0xEEEEFFFF));
    CU_ASSERT(assert_pop_u32(ll, 0xEEEEFFFF));
    CU_ASSERT(assert_pop_u32(ll, 0xCCCCDDDD));
    CU_ASSERT(assert_pop_u32(ll, 0xAAAABBBB));
    CU_ASSERT(assert_pop_empty_u32(ll));

    // test pushing a specific value but poping it without reading content
    CU_ASSERT(assert_push_u32(ll, 1));
    int out = 555;
    status = ll_pop(ll, NULL);
    CU_ASSERT(status == LL_OK);
    CU_ASSERT_EQ_U32(out, 555);
    CU_ASSERT(assert_pop_empty_u32(ll));
    
    status = ll_push(NULL, NULL);
    CU_ASSERT(status == LL_ERROR_NULL_LINKED_LIST_POINTER);
    status = ll_push(ll, NULL);
    CU_ASSERT(status == LL_ERROR_NULL_ELEMENT_POINTER);

    ll_free(&ll);
    CU_ASSERT_PTR_NULL(ll);
}

void test_pushpop_front(void) {
    ll_LinkedList *ll = assert_new(/*data_size*/ 4);
    ll_Error status;

    CU_ASSERT(assert_push_front_u32(ll, /*val*/ 6000));
    CU_ASSERT_PTR_NOT_NULL(ll->head);
    CU_ASSERT_EQ_U32(ll->len, 1);
    CU_ASSERT_EQ_U32(*((u32*)ll->head->data), 6000);

    CU_ASSERT(assert_pop_front_u32(ll, /*exp*/ 6000));

    // assert queue behavior
    CU_ASSERT(assert_pop_empty_u32(ll));
    CU_ASSERT(assert_push_front_u32(ll, 1111));
    CU_ASSERT(assert_push_front_u32(ll, 2222));
    CU_ASSERT(assert_push_front_u32(ll, 3333));
    CU_ASSERT(assert_pop_u32(ll, 1111));
    CU_ASSERT(assert_pop_u32(ll, 2222));
    CU_ASSERT(assert_pop_u32(ll, 3333));
    CU_ASSERT(assert_pop_empty_u32(ll));

    // assert stack behavior
    CU_ASSERT(assert_pop_empty_u32(ll));
    CU_ASSERT(assert_push_front_u32(ll, 1111));
    CU_ASSERT(assert_push_front_u32(ll, 2222));
    CU_ASSERT(assert_push_front_u32(ll, 3333));
    CU_ASSERT(assert_pop_front_u32(ll, 3333));
    CU_ASSERT(assert_pop_front_u32(ll, 2222));
    CU_ASSERT(assert_pop_front_u32(ll, 1111));
    CU_ASSERT(assert_pop_front_empty_u32(ll));

    // test pushing a specific value but poping it without reading content
    CU_ASSERT(assert_push_u32(ll, 1));
    int out = 555;
    status = ll_pop_front(ll, NULL);
    CU_ASSERT(status == LL_OK);
    CU_ASSERT_EQ_U32(out, 555);
    CU_ASSERT(assert_pop_empty_u32(ll));
    
    status = ll_push_front(NULL, NULL);
    CU_ASSERT(status == LL_ERROR_NULL_LINKED_LIST_POINTER);
    status = ll_push_front(ll, NULL);
    CU_ASSERT(status == LL_ERROR_NULL_ELEMENT_POINTER);
    
    ll_free(&ll);
    CU_ASSERT_PTR_NULL(ll);
}

void test_iterate_to(void) {
    ll_LinkedList *ll = assert_new(/*data_size*/ 4);
    ll_Error status;

    CU_ASSERT(assert_iterate_to_error(ll, /*index*/ 0, /*exp*/ LL_ERROR_EMPTY_LINKED_LIST));
    CU_ASSERT(assert_iterate_to_error(ll, /*index*/ -1, /*exp*/ LL_ERROR_INDEX_OUT_OF_BOUNDS));
    CU_ASSERT(assert_iterate_to_error(ll, /*index*/ 1, /*exp*/ LL_ERROR_INDEX_OUT_OF_BOUNDS));
    CU_ASSERT(assert_iterate_to_error(NULL, /*index*/ 1, /*exp*/ LL_ERROR_NULL_LINKED_LIST_POINTER));

    CU_ASSERT(assert_push_u32(ll, /*exp*/ 5));
    CU_ASSERT(assert_iterate_to_u32(ll, /*index*/ 0, /*exp*/ 5));
    CU_ASSERT(assert_push_u32(ll, /*exp*/ 6));
    CU_ASSERT(assert_push_u32(ll, /*exp*/ 7));
    CU_ASSERT(assert_push_u32(ll, /*exp*/ 8));
    CU_ASSERT(assert_iterate_to_u32(ll, /*index*/ 2, /*exp*/ 7));
    CU_ASSERT(assert_pop_front_u32(ll, /*exp*/ 5));
    CU_ASSERT(assert_iterate_to_u32(ll, /*index*/ 0, /*exp*/ 6));
    ll_free(&ll);
    CU_ASSERT_PTR_NULL(ll);
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
    status = CU_utils_try_add_test(suites[0], test_pushpop, "\n\nTesting " STR(test_pushpop) "()\n\n");
    status = CU_utils_try_add_test(suites[0], test_pushpop_front, "\n\nTesting " STR(test_pushpop_front) "()\n\n");
    status = CU_utils_try_add_test(suites[0], test_iterate_to, "\n\nTesting " STR(test_iterate_to) "()\n\n");
    if (status != CUE_SUCCESS) return status;

    CU_basic_run_tests(); // OUTPUT to the screen
    CU_cleanup_registry(); //Cleaning the Registry

    return CU_get_error();
}

#endif
