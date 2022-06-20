# Miscellaneous c++ code samples

## Setup environment

   $ . ~/intel/sw_dev_tools/bin/compilervars.sh intel64
   $ mkdir bin-intel
   $ cd bin-intel
   $ cmake source-directory -DCMAKE_CXX_COMPILER=icpc
   $ qsub matr_mult_proj

## Login remotely
   $ ssh colfax

## Submit jobs to Xeon CPU
   $ man qsub
   $ realpath ./hello | qsub
   
## Setup environment at Windows

	- start Developer command prompt for VS2017
	$ "c:\Program Files\CMake\bin\cmake.exe" .. -G "Visual Studio 15 2017" -A x64 -T "Intel C++ Compiler 19.1"

	Updated on 6/20/2022
	# Intel(R) oneAPI DPC++/C++ Compiler for applications running on Intel(R) 64, Version 2022.1.0 Build 20220316

	$ "c:\Program Files\CMake\bin\cmake.exe" .. -G "Visual Studio 16 2019" -A x64 -T "Intel C++ Compiler 2022" -DCMAKE_CXX_COMPILER="icx"
