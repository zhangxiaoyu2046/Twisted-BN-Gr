#!/bin/sh
#SBATCH -N 8
#SBATCH -n 448
#SBATCH -J 0deg_kp98_RPA
#SBATCH -p Phoenix
#SBATCH --ntasks-per-node=56

module load intel_parallel
module load vasp6.3.0-avx512-universal
export LD_PRELOAD=none.so
unset I_MPI_PMI_LIBRARY
ulimit -s unlimited
mpirun vasp_std
