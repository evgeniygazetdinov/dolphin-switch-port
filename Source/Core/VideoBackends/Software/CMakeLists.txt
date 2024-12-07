add_library(switch.h
)

target_link_libraries(videosoftware
PUBLIC
  common
  videocommon
)

if(MSVC)
  # Add precompiled header
  target_link_libraries( PRIVATE use_pch)
endif()
