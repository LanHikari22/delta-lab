#include "stm-hdr.h" // include stm.common.mk in target/os/lib specific header

#define uint32_t unsigned long

__attribute__ ((naked, weak))
void HardFault_Handler(void)
{
    __asm volatile
    (
        " tst lr, #4                                                \n"
        " ite eq                                                    \n"
        " mrseq r0, msp                                             \n"
        " mrsne r0, psp                                             \n"
        " ldr r1, [r0, #24]                                         \n"
        " ldr r2, handler2_address_const                            \n"
        " bx r2                                                     \n"
        " handler2_address_const: .word prvGetRegistersFromStack    \n"
    );
}


void prvGetRegistersFromStack( uint32_t *pulFaultStackAddress )
{
/* These are volatile to try and prevent the compiler/linker optimising them
away as the variables never actually get used.  If the debugger won't show the
values of the variables, make them global my moving their declaration outside
of this function. */
volatile uint32_t r0;
volatile uint32_t r1;
volatile uint32_t r2;
volatile uint32_t r3;
volatile uint32_t r12;
volatile uint32_t lr; /* Link register. */
volatile uint32_t pc; /* Program counter. */
volatile uint32_t psr;/* Program status register. */
volatile uint32_t hfsr;
volatile uint32_t cfsr;
volatile uint32_t bfar;
volatile uint32_t mmar;

    r0 = pulFaultStackAddress[ 0 ];
    r1 = pulFaultStackAddress[ 1 ];
    r2 = pulFaultStackAddress[ 2 ];
    r3 = pulFaultStackAddress[ 3 ];

    r12 = pulFaultStackAddress[ 4 ];
    lr = pulFaultStackAddress[ 5 ];
    pc = pulFaultStackAddress[ 6 ];
    psr = pulFaultStackAddress[ 7 ];
    hfsr = SCB->HFSR;
    cfsr = SCB->CFSR;
    bfar = SCB->BFAR;
    //mmar = SCB->MMAR;

    (void) r0;	// suppress compiler warnings
    (void) r1;
    (void) r2;
    (void) r3;
    (void) r12;
    (void) lr;
    (void) pc;
    (void) psr;
    (void) hfsr;
    (void) cfsr;
    (void) bfar;
    (void) mmar;

    /* When the following line is hit, the variables contain the register values. */
    __asm volatile ("bkpt #01");
    for( ;; );
}

// helpers to catch unassigned interrupts

__attribute__ ((naked, weak)) void MemManage_Handler(void) { while (1); }
__attribute__ ((naked, weak)) void BusFault_Handler(void) { while (1); }
__attribute__ ((naked, weak)) void UsageFault_Handler(void) { while (1); }
__attribute__ ((naked, weak)) void SVC_Handler(void) { while (1); }
__attribute__ ((naked, weak)) void DebugMon_Handler(void) { while (1); }
__attribute__ ((naked, weak)) void PendSV_Handler(void) { while (1); }
__attribute__ ((naked, weak)) void SysTick_Handler(void) { while (1); }

