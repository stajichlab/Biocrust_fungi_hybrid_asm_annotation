#!/usr/bin/bash -l
#SBATCH -p short --out logs/launch_canu.%a.log -a 1ç
module load canu
IN=input/nanopore
OUT=asm/canu
N=${SLURM_ARRAY_TASK_ID}
if [ -z $N ]; then
    N=$1
    if [ -z $N ]; then
        echo "no value for SLURM ARRAY - specify with -a or cmdline"
        exit
    fi
fi

mkdir -p $OUT
IFS=,
SAMPLES=samples.csv
tail -n +2 $SAMPLES | sed -n ${N}p | while read BASE SPECIES STRAIN NANOPORE ILLUMINA SUBPHYLUM PHYLUM LOCUS RNASEQ SIZE
do
    if [ ! -d "$OUT/${BASE}" ]; then
        canu -p ${BASE} -d $OUT/${BASE} genomeSize=$SIZE -raw -nanopore $IN/$NANOPORE gridOptions="--time 24:00:00"
    else
        echo "Skipping ${BASE} as $OUT/${BASE} already exists."
    fi
done
