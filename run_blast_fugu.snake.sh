#!/usr/bin/bash -l

# needed for Athef because it didn't automatically source ~/.bashrc so couldn't conda activate anything
source initialize_conda.sh


conda activate snakemake


snakemake -s blast_fugu.snake  --jobname "{rulename}.{jobid}" --profile profile  -w 100 --jobs 100 -p -k --restart-times 1 --rerun-incomplete
