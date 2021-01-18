chain=$1
X="${chain:0:1}"
Y="${chain:1:2}"
protein=$2 # PDB of refined model
outputf=$3 # Output folder
N=$4 # Symmetry order
fname=${protein##*/}
fname=${fname%.pdb}
$ROSETTA38_HOME/main/source/src/apps/public/symmetry/make_symmdef_file.pl -p $protein  -a ${X} -r 50 -i ${Y}:$N > ${outputf}/${fname}_${chain}.c${N}.symm