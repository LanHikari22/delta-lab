#ifndef COMMON_MACROS_H
#define COMMON_MACROS_H

#define MACRO_STR(X) STRINGIFY(X)
#define STR(X) #X

#define LOG_FMT(fmt, ...) printf("%s:%d: %s() :: " fmt "\n", __FILE__, __LINE__, __func__, ##__VA_ARGS__)
#define LOG_ERROR_FMT(fmt, ...) fprintf(stderr, "%s:%d: %s() :: " fmt "\n", __FILE__, __LINE__, __func__, ##__VA_ARGS__)

#ifdef LOG_DEBUG_ENABLE
#define LOG_DEBUG_FMT(msg, ...) LOG_FMT(msg, ##__VA_ARGS__)
#define LOG_DEBUG_NEWLINE() printf("\n")
#else
#define LOG_DEBUG_FMT(msg, ...)
#define LOG_DEBUG_NEWLINE()
#endif
#define LOG_COND_FMT(cond, fmt, ...) do {\
    if ((cond)) LOG_FMT(fmt, ##__VA_ARGS__);\
} while(0)


/// this is used to issue a fault signal on error return. This can be used to generate a backtrace, and also
/// enables examination with gdb. Disable by defining LOG_ERROR_ASSERT_FAULT_DISABLE
#ifndef ERROR_RETURN_ASSERT_FAULT_DISABLE
    #define ERROR_RETURN_ASSERT_FAULT() free((void*)1)
#else
    #define ERROR_RETURN_ASSERT_FAULT()
#endif

/// this lets ERROR_RETURN log the error before returning (or asserting a fault)
#ifndef ERROR_RETURN_LOG_DISABLE
    #define ERROR_RETURN_LOG(error_code) LOG_ERROR_FMT("error: %d (%s)", error_code, #error_code)
    #define ERROR_RETURN_LOG_FMT(error_code, fmt, ...) \
        LOG_ERROR_FMT_RETURN("error: %d (%s): " fmt, error_code, #error_code, ##__VA_ARGS__)
#else
    #define ERROR_RETURN_LOG(error_code)
    #define ERROR_RETURN_LOG_FMT(error_code, fmt, ...)
#endif

/// defines additional logic prior to return. This can log and assert on error_code. It can be useful for
/// propogating errors or internal errors that should be asserted during development and should never occur.
/// the logging and assertion can be individually turned off so that it functions like a normal return.
#define ERROR_RETURN(error_code) do {\
    ERROR_RETURN_LOG(error_code);\
    ERROR_RETURN_ASSERT_FAULT();\
    return (error_code);\
}while(0)

/// similar to ERROR_RETURN, but this also takes a custom error message.
#define ERROR_RETURN_FMT(error_code, fmt, ...) do {\
    ERROR_RETURN_LOG_FMT(error_code, fmt, ##__VA_ARGS__);\
    ERROR_RETURN_ASSERT_FAULT();\
    return (error_code);\
}while(0)

#endif // COMMON_MACROS_H
