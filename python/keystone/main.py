from keystone import *

if __name__ == '__main__':
     # separate assembly instructions by ; or \n
    CODE = b"""
    // how is this 2 instructions?
    mov r0, r1
    ldr r0, [r1, #0x55]
    .equiv oStruct_x, 0x55
    ldr r0, [r1, #oStruct_x]
    bl function
    
    .include "some_file.s"
    
    .macro f
        mov r0, #0
    .endm
    
    f
    function:
    push {lr}
    pop {pc}
    """

    try:
        # Initialize engine in X86-32bit mode
        ks = Ks(KS_ARCH_ARM, KS_MODE_THUMB)
        encoding, count = ks.asm(CODE)
        print('encoding: {}'.format(list(map(lambda i: hex(i), iter(encoding)))))
        # print("%s = %s (number of statements: %u)" % (CODE, encoding, count))
    except KsError as e:
        print("ERROR: %s" % e)