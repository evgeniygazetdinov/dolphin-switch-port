#ifndef FLAGS_H
#define FLAGS_H

#ifndef MINIMAL_CORE
#define MINIMAL_CORE ON
#endif

// BUILD flags

#ifndef BUILD_GL
/* #undef BUILD_GL */
#endif

#ifndef BUILD_GLES2
/* #undef BUILD_GLES2 */
#endif

#ifndef BUILD_GLES3
/* #undef BUILD_GLES3 */
#endif

// Miscellaneous flags

#ifndef COLOR_16_BIT
/* #undef COLOR_16_BIT */
#endif

#ifndef COLOR_5_6_5
/* #undef COLOR_5_6_5 */
#endif

#ifndef DISABLE_THREADING
/* #undef DISABLE_THREADING */
#endif

#ifndef FIXED_ROM_BUFFER
/* #undef FIXED_ROM_BUFFER */
#endif

// M_CORE flags

#ifndef M_CORE_GBA
#define M_CORE_GBA
#endif

#ifndef M_CORE_GB
#define M_CORE_GB
#endif

// ENABLE flags

#ifndef ENABLE_SCRIPTING
/* #undef ENABLE_SCRIPTING */
#endif

// USE flags

#ifndef USE_DEBUGGERS
/* #undef USE_DEBUGGERS */
#endif

#ifndef USE_EDITLINE
/* #undef USE_EDITLINE */
#endif

#ifndef USE_ELF
/* #undef USE_ELF */
#endif

#ifndef USE_EPOXY
/* #undef USE_EPOXY */
#endif

#ifndef USE_FFMPEG
/* #undef USE_FFMPEG */
#endif

#ifndef USE_GDB_STUB
/* #undef USE_GDB_STUB */
#endif

#ifndef USE_JSON_C
/* #undef USE_JSON_C */
#endif

#ifndef USE_LIBAV
/* #undef USE_LIBAV */
#endif

#ifndef USE_LIBAVRESAMPLE
/* #undef USE_LIBAVRESAMPLE */
#endif

#ifndef USE_LIBSWRESAMPLE
/* #undef USE_LIBSWRESAMPLE */
#endif

#ifndef USE_LIBZIP
/* #undef USE_LIBZIP */
#endif

#ifndef USE_LZMA
#define USE_LZMA
#endif

#ifndef USE_MINIZIP
/* #undef USE_MINIZIP */
#endif

#ifndef USE_PNG
/* #undef USE_PNG */
#endif

#ifndef USE_PTHREADS
/* #undef USE_PTHREADS */
#endif

#ifndef USE_SQLITE3
/* #undef USE_SQLITE3 */
#endif

#ifndef USE_ZLIB
/* #undef USE_ZLIB */
#endif

// HAVE flags

#ifndef HAVE_POPCOUNT32
#define HAVE_POPCOUNT32
#endif

#endif
