cmake_minimum_required(VERSION 3.15)

project(lodepng)

add_library(lodepng_static STATIC lodepng/lodepng.cpp)

set_property(TARGET lodepng_static PROPERTY
    MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

set_source_files_properties(lodepng/lodepng.cpp PROPERTIES LANGUAGE C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_BUILD_TYPE RelWithDebInfo)

set_target_properties(lodepng_static PROPERTIES OUTPUT_NAME lodepng)