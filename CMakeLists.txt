cmake_minimum_required(VERSION 3.0)

project(test VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

file(GLOB SOURCES "src/*.cpp")
add_executable(test ${SOURCES})

find_package(fmt CONFIG REQUIRED)
target_link_libraries(test PRIVATE fmt::fmt)

# target_link_libraries(test PRIVATE fmt::fmt-header-only)
