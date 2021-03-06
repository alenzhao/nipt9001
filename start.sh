#!/bin/bash

DATANAME='150423_COUNT_0015_AC6V7GANXX'
RUNFOLDERPATH='${DATALOC}'
DATETAG=$(date +%Y%m%d%S)
DOCKERFLOW='/mnt/scratch/devel/NIPT9001'

#ln /mnt/scratch/devel/NIPT9001 /mnt/scratch/devel/progenity_analysis-1.0
cp /mnt/scratch/devel/NIPT9001/echelon_src/2015-06-06WholeChr/*.pm /usr/lib64/perl5
PERL5LIB=/mnt/scratch/devel/NIPT9001/dependencies/bcl2fastq/lib/bcl2fastq-1.8.3/perl:$PERL5LIB; export PERL5LIB

#Command changed to run in the container
nohup /mnt/scratch/devel/NIPT9001/dependencies/anaconda/bin/python /mnt/scratch/devel/NIPT9001/src/NIPT9001_process_NGSrun_pyflow.py -c /mnt/scratch/devel/NIPT9001/config/docker_config.xml -r /mnt/production_storage/runs/hiseq/150423_COUNT_0015_AC6V7GANXX > /mnt/production_storage/workflows/docker/150423_COUNT_0015_AC6V7GANXX_$DATETAG.out
#nohup /mnt/scratch/devel/NIPT9001/dependencies/anaconda/bin/python /mnt/scratch/devel/NIPT9001/src/NIPT9001_process_NGSrun_pyflow.py -c /mnt/scratch/devel/NIPT9001/config/docker_config.xml -r /mnt/production_storage/runs/hiseq/150423_COUNT_0015_AC6V7GANXX > /mnt/production_storage/workflows/docker/${DATANAME}_${DATETAG}.out
