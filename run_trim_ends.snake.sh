#!/usr/bin/bash -l


# needed for Athef because it didn't automatically source ~/.bashrc so couldn't conda activate anything
source initialize_conda.sh


conda activate snakemake

snakemake -s trim_ends.snake  --jobname "{rulename}.{jobid}" --profile profile \
   --groups trim_one_file=group0 --group-components group0=16 \
   -w 100 --jobs 100 -p -k-w 100 --jobs 100 -p -k
