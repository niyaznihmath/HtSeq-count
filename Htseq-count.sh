#!/bin/bash
#SBATCH -A b2014097
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 100:00:00
#SBATCH -J htseq-count
#SBATCH -o /proj/b2014097/nobackup/Niyaz/logs/htseq-count.out
#SBATCH -e /proj/b2014097/nobackup/Niyaz/logs/htseq-count.err


module load bioinfo-tools 
module load htseq/0.9.1

echo "htseq-count"

for x in *.bam; do

echo "Running $x"

        htseq-count -s no -r pos -f bam -i gene_id $x /proj/b2014097/nobackup/Niyaz/STAR/New_Annotation/gencode.v27.annotation.gtf > $x".txt"
        done;

echo "done"