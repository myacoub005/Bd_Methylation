#!/bin/bash
#SBATCH -p short -N 1 -n 16 --mem 16gb --out logs/intersect.log
module load bedtools

#intersect methylation file with gene file. Keep gene names and methylation % on every row
bedtools intersect -a intersect.bed -b Batrachochytrium_dendrobatidis_CLFT044.genes.bed -wa -wb > test.bed

echo -e "chr\tstart\tstop\tcolumn\tcolumn1\tstrand\tstart1\tstop1\tcommas\tcolumn3\tMethylation\tscaffold\tgstart\tgend\tgene_ID" | cat - test.bed > myfile.bed
