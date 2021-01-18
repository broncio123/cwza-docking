infile=$1
$ROSETTA38_MPI/mp_span_from_pdb.mpi.linuxgccrelease \
-database $ROSETTA38_DB \
-in:file:s $infile \
-ignore_unrecognized_res true \
-mp:thickness 20.0 \
-out:path ./output \