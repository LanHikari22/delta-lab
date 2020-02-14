#ifndef COMMON_MACROS_H
#define COMMON_MACROS_H

#define MACRO_STRINGIFY(X) STRINGIFY(X)
#define STRINGIFY(X) #X

#define LOG_FMT(fmt, ...) printf("%s:%d: %s() :: " fmt, __FILE__, __LINE__, __func__, ##__VA_ARGS__)
#define LOG_ERROR_FMT(fmt, ...) fprintf(stderr, "%s:%d: %s() :: " fmt, __FILE__, __LINE__, __func__, ##__VA_ARGS__)
#define LOG_DEBUG_FMT(msg, ...) LOG_FMT(msg, ##__VA_ARGS__)
#define LOG_COND_FMT(cond, fmt, ...) do {\
    if ((cond)) LOG_FMT(fmt, ##__VA_ARGS__);\
} while(0)


/// this is used to return an error from a function but also log it. Can be useful for propogating errors
/// or internal errors that mustn'nt occur.
/// in order to disable logging, define LOG_ERROR_RETURN_DISABLE before including this macro
#ifndef LOG_ERROR_RETURN_DISABLE
#define LOG_ERROR_RETURN(error_code) do {\
    LOG_ERROR_FMT("error: %d (%s)\n", error_code, #error_code);\
    return (error_code);\
}while(0)

#define LOG_ERROR_FMT_RETURN(error_code, fmt, ...) do {\
    LOG_ERROR_FMT("error: %d (%s): " fmt "\n", error_code, #error_code, ##__VA_ARGS__);\
    return (error_code);\
}while(0)

#else
#define LOG_ERROR_RETURN(error_code) do {\
    return (error_code);\
}while(0)


#define LOG_ERROR_FMT_RETURN(error_code, fmt, ...) do {\
    return (error_code);\
}while(0)
#endif

#endif // COMMON_MACROS_H
