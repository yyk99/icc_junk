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

    # Target 1
    set (target "${dir}_${prog}")
    message(STATUS "add_executable(${target} ${src})")
    add_executable(${target} ${src})
    target_compile_options(${target} PRIVATE "-Wall")
    if ( CMAKE_CXX_COMPILER_ID STREQUAL "GNU" )
      target_compile_options(${target} PRIVATE "-msse4")
    elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel" )
      target_compile_options(${target} PRIVATE "-qopenmp")
      target_link_libraries(${target} PRIVATE "-qopenmp")
      target_compile_options(${target} PRIVATE "-qopt-report=5")
    else ()
      message (WARNING "Default compiler settings...")
    endif ()

    # Target 2
    set (target "${dir}_${prog}_x512")
    message(STATUS "add_executable(${target} ${src})")
    add_executable(${target} ${src})
    target_compile_options(${target} PRIVATE "-Wall")
    if ( CMAKE_CXX_COMPILER_ID STREQUAL "GNU" )
      #target_compile_options(${target} PRIVATE "-mavx512f -mavx512cd -mavx512er -mavx512pf")
      target_compile_options(${target} PRIVATE "-mmmx")
    elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel" )
      target_compile_options(${target} PRIVATE "-qopt-report=5")
      target_compile_options(${target} PRIVATE "-qopenmp")
      target_link_libraries(${target} PRIVATE "-qopenmp")
      target_compile_options(${target} PRIVATE "-xMIC-AVX512")
    else ()
      message (WARNING "Default compiler settings...")
    endif ()
    
    # Target 3
    set (target "${dir}_${prog}_novec")
    message(STATUS "add_executable(${target} ${src})")
    add_executable(${target} ${src})
    target_compile_options(${target} PRIVATE "-Wall")
    if ( CMAKE_CXX_COMPILER_ID STREQUAL "GNU" )
      target_compile_options(${target} PRIVATE "-fno-openmp")
    elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel" )
      target_compile_options(${target} PRIVATE "-qopt-report=5")
      target_compile_options(${target} PRIVATE "-qno-openmp")
      target_compile_options(${target} PRIVATE "-no-vec")
    else ()
      message (WARNING "Default compiler settings...")
    endif ()

#   target_link_libraries(${target} PRIVATE Threads::Threads)
  endforeach()
endmacro(make_executables)

# icpc -c -qopt-report=5 -xMIC-AVX512 stencil.cc

make_executables()

configure_file(matr_mult_proj.cmake matr_mult_proj)


# end of file
