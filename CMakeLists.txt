#
#
#

project(icc_junk LANGUAGES CXX)
cmake_minimum_required(VERSION 3.10)

message(STATUS "CMAKE_CXX_COMPILER_ID=${CMAKE_CXX_COMPILER_ID}")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

macro(make_executables)
  file(GLOB source_files "*.cpp" )
  foreach(cpp ${source_files})
    get_filename_component(dir ${cpp} DIRECTORY) 
    get_filename_component(dir ${dir} NAME) 
    get_filename_component(prog ${cpp} NAME_WE) 
    get_filename_component(src ${cpp} NAME)

    set (target "${dir}_${prog}")
    message(STATUS "add_executable(${target} ${src})")
    add_executable(${target} ${src})
    target_compile_options(${target} PRIVATE "-Wall")
    target_compile_options(${target} PRIVATE "-qopt-report")
    target_compile_options(${target} PRIVATE "-xMIC-AVX512")
#        target_link_libraries(${target} PRIVATE Threads::Threads)
  endforeach()
endmacro(make_executables)

# icpc -c -qopt-report=5 -xMIC-AVX512 stencil.cc

make_executables()

#add_executable(autovec autovec.cpp)
#target_compile_options(autovec PRIVATE -qopt-report)
#target_compile_options(${target} PRIVATE "-Wall")

#add_executable(autovec2 autovec2.cpp)
#target_compile_options(autovec2 PRIVATE -qopt-report)

#add_executable(matr_mult matr_mult.cpp)
#target_compile_options(autovec2 PRIVATE -qopt-report)

# end of file
