#!/bin/sh
#SBATCH -N 20
#SBATCH -n 912
#SBATCH -J 21.8deg-kp24X-IP
#SBATCH -p Phoenix
###\\#SBATCH --ntasks-per-node=56

module load intel_parallel
module load vasp6.3.0-avx512-universal
export LD_PRELOAD=none.so
unset I_MPI_PMI_LIBRARY
ulimit -s unlimited
mpirun vasp_std
