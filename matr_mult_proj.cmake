#PBS -l walltime=0:03:00
#PBS -N matr_mult_proj
#PBS -l nodes=4

cd $PBS_O_WORKDIR

cat $PBS_NODEFILE

# Some binaries to run
# icc_junk_matr_mult  icc_junk_matr_mult_novec  icc_junk_matr_mult_x512

echo bin/icc_junk_matr_mult
bin/icc_junk_matr_mult

echo bin/icc_junk_matr_mult_x512
bin/icc_junk_matr_mult_x512

echo bin/icc_junk_matr_mult_novec
bin/icc_junk_matr_mult_novec

# remember to add an empty line


