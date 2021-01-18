protein=$1
protein_span=$2
$ROSETTA38_MPI/mp_transform.mpi.linuxgccrelease \
-database $ROSETTA38_DB \
-in:file:s $protein \
-mp:setup:spanfiles $protein_span \
-ignore_unrecognized_res true \
-mp:thickness 20.0 \
-mp:transform:optimize_embedding true \