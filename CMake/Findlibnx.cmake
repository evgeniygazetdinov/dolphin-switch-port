# Find libnx
#
# This module defines:
#  LIBNX_FOUND - If libnx was found
#  LIBNX_INCLUDE_DIR - The libnx include directories
#  LIBNX_LIBRARY - The libnx library

find_path(LIBNX_INCLUDE_DIR switch.h
  PATHS
  $ENV{DEVKITPRO}/libnx/include
)

find_library(LIBNX_LIBRARY
  NAMES nx
  PATHS
  $ENV{DEVKITPRO}/libnx/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(libnx DEFAULT_MSG
  LIBNX_LIBRARY LIBNX_INCLUDE_DIR)

mark_as_advanced(LIBNX_INCLUDE_DIR LIBNX_LIBRARY)
