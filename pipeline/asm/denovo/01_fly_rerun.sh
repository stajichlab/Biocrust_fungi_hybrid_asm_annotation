#!/usr/bin/bash -l
#SBATCH -p short  -N 1 -c 24 --mem 96gb --out logs/flye.%a.log 
module load Flye
IN=input/nanopore
OUT=asm/flye
hostname
CPU=$SLURM_CPUS_ON_NODE
if [ -z $CPU ]; then
	CPU=2
fi

flye --nano-hq $IN/5087_2.fastq.gz --out-dir $OUT/PH1 --threads $CPU --scaffold
flye --nano-hq $IN/5087_4.fastq.gz --out-dir $OUT/KHK93 --threads $CPU --scaffold
