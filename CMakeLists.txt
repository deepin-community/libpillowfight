cmake_minimum_required(VERSION 3.0)

project(libpillowfight)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_INSTALL_LIBDIR lib CACHE STRING "object code libraries directory")

add_definitions(-DNO_PYTHON)
include_directories(include)

add_library(pillowfight SHARED
    src/pillowfight/_ace.c
    src/pillowfight/_blackfilter.c
    src/pillowfight/_blurfilter.c
    src/pillowfight/_border.c
    src/pillowfight/_canny.c
    src/pillowfight/_compare.c
    src/pillowfight/_gaussian.c
    src/pillowfight/_grayfilter.c
    src/pillowfight/_masks.c
    src/pillowfight/_noisefilter.c
    src/pillowfight/_scanborders.c
    src/pillowfight/_sobel.c
    src/pillowfight/_version.c
    src/pillowfight/util.c
)
set_property(TARGET pillowfight PROPERTY SOVERSION 0)

if (UNIX)
    target_link_libraries(pillowfight m pthread)
endif (UNIX)

install(TARGETS pillowfight DESTINATION ${CMAKE_INSTALL_LIBDIR})
install(FILES
    include/pillowfight/pillowfight.h
    include/pillowfight/util.h
    DESTINATION
    include/pillowfight
)
