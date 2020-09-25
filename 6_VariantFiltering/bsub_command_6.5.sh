#!/bin/bash

MEM=5000
CPUS=1
QUEUE=normal

CMD="Rscript 6.5_IndelGenotyping.R"

bsub -G team78-grp -o log.%J -q $QUEUE -n $CPUS -R "span[hosts=1] select[mem>=$MEM] rusage[mem=$MEM]" -M $MEM "$CMD"
