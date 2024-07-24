# Genome Assembly and Annotation of Opportunistically Isolated Biocrust Fungi

## Overview

This project involves the genome assembly and annotation of biocrust fungi isolated from various environments.  Multiple assemblers were used, including Canu, Flye, and Raven, and the best assembly was chosen based on the results in `asm_stats.tsv`. This setup follows the [Stajich lab](https://lab.stajich.org) protocols for running assembly and annotation. 

See the [pipeline] folder for assembly, annotation, and statistics calculations.

Notes:
* final assembly files used are called XX.pilon.fasta but the polishing
* This README was generated automatically using Github Copilot.

## Project Structure

The project directory is organized as follows:

- `asm/`: Contains the assembly results from different assemblers.
  - `canu/`: Results from Canu assembler.
  - `flye/`: Results from Flye assembler.
- `genomes/`: Contains the final genome assemblies.
- `input/`: Contains input data such as raw sequencing reads.
  - `illumina/`: Illumina sequencing reads.
  - `nanopore/`: Nanopore sequencing reads.
- `lib/`: Contains libraries and reference data used in the project.
- `logs/`: Contains log files from various steps of the pipeline.
- `pipeline/`: Contains scripts for assembly, annotation, and statistics calculations.
  - `annotation/`: Scripts for genome annotation.
  - `asm/`: Scripts for genome assembly.
  - `stats/`: Scripts for calculating assembly statistics.
  - `variation/`: Scripts for analyzing genetic variation.
- `scripts/`: Contains miscellaneous scripts used in the project.

## Assembly Process

### Assemblers Used

1. **Canu**: A high-quality assembler for long-read sequencing data.
2. **Flye**: An assembler for single-molecule sequencing reads.
3. **Raven**: A fast and accurate assembler for long reads.

### Selection of Best Assembly

The best assembly was chosen based on the statistics provided in `asm_stats.tsv`. This file contains various metrics such as N50, total length, and number of contigs, which were used to evaluate the quality of each assembly.

## Annotation Process

The annotation process involves several steps, including repeat masking, gene prediction, and functional annotation. The scripts for these steps are located in the `pipeline/annotation/` directory.

### Polishing

The final assembly files are named `XX.pilon.fasta`, but the polishing step was actually performed using POLCA, not Pilon.

## Running the Pipeline

To run the entire pipeline, follow these steps:

1. **Assembly**: Start by running the assembly scripts located in the `pipeline/asm/` directory. These scripts will perform the genome assembly using the Canu, Flye, and Raven assemblers.

2. **Annotation**: Once the assembly is complete, proceed to the annotation step. This involves several sub-steps, including repeat masking, gene prediction, and functional annotation. The scripts for these steps can be found in the `pipeline/annotation/` directory.

3. **Polishing**: After the annotation, it is important to note that the final assembly files are named `XX.pilon.fasta`, but the polishing step was actually performed using POLCA, not Pilon.

By following these steps, you will be able to successfully run the entire pipeline for genome assembly and annotation.

### Assembly

To run the assembly pipeline, use the scripts in the `pipeline/asm/` directory. 

