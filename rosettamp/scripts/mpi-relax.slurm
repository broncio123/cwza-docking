#!/bin/bash -login
#SBATCH -p cpu
#SBATCH --ntasks-per-node=16
#SBATCH -N 4
#SBATCH -t 1-12:30
#SBATCH -A S2.1
#SBATCH -o output/mpi-relax.log
#SBATCH -e output/error_mpi-relax.log

module add apps/rosetta/mpi/3.8

mpiexec $ROSETTA38_MPI/rosetta_scripts.mpi.linuxgccrelease -database $ROSETTA38_DB @flags_relax -mpi_tracer_to_file ./logs/run