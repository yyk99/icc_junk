#
#
#

project(icc_junk LANGUAGES CXX)
cmake_minimum_required(VERSION 3.10)

message(STATUS "CMAKE_CXX_COMPILER_ID=${CMAKE_CXX_COMPILER_ID}")

add_executable(autovec autovec.cpp)
target_compile_options(autovec PRIVATE -qopt-report)

# end of file
