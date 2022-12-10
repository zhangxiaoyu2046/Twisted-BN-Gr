#!/bin/sh
#SBATCH -N 26
#SBATCH -n 2912
#SBATCH -J 24.4deg-IPA
#SBATCH -p Phoenix
#SBATCH --ntasks-per-node=112

module load intel_parallel
module load vasp6.3.0-avx512-universal
export LD_PRELOAD=none.so
unset I_MPI_PMI_LIBRARY
ulimit -s unlimited
mpirun vasp_std
