/* from libusb v1.0.26 release. modified for cmake for dolphin */
/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Define to the attribute for default visibility. */
#define DEFAULT_VISIBILITY __attribute__((visibility("default")))

/* Define to 1 to start with debug message logging enabled. */
#undef ENABLE_DEBUG_LOGGING

/* Define to 1 to enable message logging. */
#undef ENABLE_LOGGING

/* Define to 1 if you have the <asm/types.h> header file. */
/* #undef HAVE_ASM_TYPES_H */

/* Define to 1 if you have the `clock_gettime' function. */
#define HAVE_CLOCK_GETTIME 1

/* Define to 1 if you have the declaration of `EFD_CLOEXEC', and to 0 if you
   don't. */
/* #undef HAVE_DECL_EFD_CLOEXEC */

/* Define to 1 if you have the declaration of `EFD_NONBLOCK', and to 0 if you
   don't. */
/* #undef HAVE_DECL_EFD_NONBLOCK */

/* Define to 1 if you have the declaration of `TFD_CLOEXEC', and to 0 if you
   don't. */
/* #undef HAVE_DECL_TFD_CLOEXEC */

/* Define to 1 if you have the declaration of `TFD_NONBLOCK', and to 0 if you
   don't. */
/* #undef HAVE_DECL_TFD_NONBLOCK */

/* Define to 1 if you have the <dlfcn.h> header file. */
/* #undef HAVE_DLFCN_H */

/* Define to 1 if the system has eventfd functionality. */
/* #undef HAVE_EVENTFD */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the <IOKit/usb/IOUSBHostFamilyDefinitions.h> header
   file. */
/* #undef HAVE_IOKIT_USB_IOUSBHOSTFAMILYDEFINITIONS_H */

/* Define to 1 if you have the `udev' library (-ludev). */
/* #undef HAVE_LIBUDEV */

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if the system has the type `nfds_t'. */
/* #undef HAVE_NFDS_T */

/* Define to 1 if you have the `pipe2' function. */
#define HAVE_PIPE2 1

/* Define to 1 if you have the `pthread_condattr_setclock' function. */
#define HAVE_PTHREAD_CONDATTR_SETCLOCK 1

/* Define to 1 if you have the `pthread_setname_np' function. */
#define HAVE_PTHREAD_SETNAME_NP 1

/* Define to 1 if you have the `pthread_threadid_np' function. */
#define HAVE_PTHREAD_THREADID_NP 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if the system has the type `struct timespec'. */
#define HAVE_STRUCT_TIMESPEC 1

/* Define to 1 if you have the `syslog' function. */
#define HAVE_SYSLOG 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if the system has timerfd functionality. */
/* #undef HAVE_TIMERFD */

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#undef LT_OBJDIR

/* Name of package */
#undef PACKAGE

/* Define to the address where bug reports for this package should be sent. */
#undef PACKAGE_BUGREPORT

/* Define to the full name of this package. */
#undef PACKAGE_NAME

/* Define to the full name and version of this package. */
#undef PACKAGE_STRING

/* Define to the one symbol short name of this package. */
#undef PACKAGE_TARNAME

/* Define to the home page for this package. */
#undef PACKAGE_URL

/* Define to the version of this package. */
#undef PACKAGE_VERSION

/* Define to 1 if compiling for a POSIX platform. */
/* #undef PLATFORM_POSIX */

/* Define to 1 if compiling for a Windows platform. */
/* #undef PLATFORM_WINDOWS */

/* Define to the attribute for enabling parameter checks on printf-like
   functions. */
#define PRINTF_FORMAT(a, b) __attribute__((format(printf, a, b)))

/* Define to 1 if you have the ANSI C header files. */
#undef STDC_HEADERS

/* UMockdev hotplug code is not racy */
#undef UMOCKDEV_HOTPLUG

/* Define to 1 to output logging messages to the systemwide log. */
#define USE_SYSTEM_LOGGING_FACILITY 1

/* Version number of package */
#undef VERSION

/* Enable GNU extensions. */
#define _GNU_SOURCE

/* Define to the oldest supported Windows version. */
//#undef _WIN32_WINNT

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#undef inline
#endif
