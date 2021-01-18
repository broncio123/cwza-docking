#!/bin/bash -login
#SBATCH -p cpu
#SBATCH --ntasks-per-node=16
#SBATCH -N 2
#SBATCH -t 2-12:30
#SBATCH -A S2.1
#SBATCH -o output/mpi-symdock.log
#SBATCH -e output/error_mpi-symdock.log

module add apps/rosetta/mpi/3.8

mpiexec $ROSETTA38_MPI/mp_symdock.mpi.linuxgccrelease -database $ROSETTA38_DB @flags_symdock