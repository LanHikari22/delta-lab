#ifndef LIB_H
#define LIB_H

#include "mini_inttypes.h"

typedef struct {
    struct ll_LinkedListNode *head;
    struct ll_LinkedListNode *tail;
}ll_LinkedList;

struct ll_LinkedListNode {
    void *data;
    struct ll_LinkedListNode *next;
};


// different linkedlist implementation that does not use malloc
typedef struct {
    struct ll_BufferLinkedListNode *head;
    struct ll_BufferLinkedListNode *tail;
    void *buffer;
    const unsigned int data_size;
}ll_BufferLinkedList;

struct ll_BufferLinkedListNode {
    struct ll_BufferLinkedListNode *next;
    u8 data[];
};

typedef enum {
    LL_OK,
    LL_INALID_LINKED_LIST_POINTER,
    LL_INALID_ELEMENT,
    LL_INDEX_OUT_OF_BOUNDS,
    LL_INIT_FAILURE,
    LL_INTERNAL_ERROR,
}LL_ERROR;

ll_LinkedList* ll_new();
LL_ERROR ll_free(ll_LinkedList *self);
LL_ERROR ll_push(ll_LinkedList *self, void *elem);
LL_ERROR ll_pop(ll_LinkedList *self);
LL_ERROR ll_insert(ll_LinkedList *self, int index, void *elem);
LL_ERROR ll_get(const ll_LinkedList *self, int index, void **out);
LL_ERROR ll_remove(ll_LinkedList *self, int index);


LL_ERROR ll_buf_init(ll_BufferLinkedList *self, void *buffer, int data_size);
LL_ERROR ll_buf_push(ll_BufferLinkedList *self, void *elem);
LL_ERROR ll_buf_pop(ll_BufferLinkedList *self);
LL_ERROR ll_buf_insert(ll_BufferLinkedList *self, int index, void *elem);
LL_ERROR ll_buf_get(const ll_BufferLinkedList *self, int index, void **out);
LL_ERROR ll_buf_remove(ll_BufferLinkedList *self, int index);

#endif // LIB_H
