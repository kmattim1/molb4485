#!/bin/bash
#BATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=keenan.mattimoe@gmx.com

#SBATCH --ntasks-per-node=8
#SBATCH --account=inbre-train
#SBATCH partition=inv-inbre

echo "Starting raxmlHPC run at $(date)"

module load swset gcc raxml



raxmlHPC-PTHREADS-AVX -T 8 -f a  -m GTRGAMMA -p 618 -N 2 -x 309 -s AllBears.aln -n KnownBearTree \
-w /project/inbre-train/inbre007/molb4485/Mattimoe_Phylo/BearTrees -o GiantPanda
echo "RAxML has finished at $(date)"
