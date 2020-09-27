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
