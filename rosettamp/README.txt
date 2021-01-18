# Renumber residues in input PDB ignoring chain identity
python2 $ROSETTA38_HOME/tools/protein_tools/scripts/clean_pdb.py merged_0001.pdb ignorechain

# Run FastRelax 
sbatch mpi-relax.slurm

# Run MPSymDock with MPI as background job
nohup mpirun -np 15 $ROSETTA38_MPI/mp_symdock.mpi.linuxgccrelease -database $ROSETTA38_DB @flags_symdock > nohup.out &

# Run MPSymDock as SLURM job
sbatch mpi-symdock.slurm

# IMPORTANT NOTES:
# Define beforehand environment variables: ROSETTA38_HOME, ROSETTA38_MPI, ROSETTA38_DB in .bashrc file
# Create input and output folders
# Create input, output, and logs folders for FastRelax