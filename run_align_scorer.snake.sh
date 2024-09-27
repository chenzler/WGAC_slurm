#!/usr/bin/bash -l


# prepare for using conda
source /home/hsiehph/shared/bin/initialize_conda.sh

conda activate snakemake

snakemake -s align_scorer.snake  --jobname "{rulename}.{jobid}" --profile profile \
  --groups run_align_scorer_on_all_in_subdir=group0 --group-components group0=16 \
  -w 100 --jobs 100 -p -k
