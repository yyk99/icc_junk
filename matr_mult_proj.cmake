#PBS -l walltime=0:03:00
#PBS -N matr_mult_proj
#PBS -l nodes=4

cd $PBS_O_WORKDIR

cat $PBS_NODEFILE

# icc_junk_matr_mult  icc_junk_matr_mult_novec  icc_junk_matr_mult_x512

bin/icc_junk_matr_mult_x512

bin/icc_junk_matr_mult_novec

# remember toadd an empty line


