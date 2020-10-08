
#PBS -S /bin/bash
#PBS -q batch
#PBS -N Outcome
#PBS -l nodes=2:ppn=4:AMD
#PBS -l walltime=3:00:00:00
#PBS -l mem=30gb
#PBS -M ys98038@uga.edu
#PBS -m abe
cd $PBS_O_WORKDIR

ml STAR/2.7.1a-foss-2016b

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_1_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_1_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_1_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_2_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_2_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_2_L00$i
done


for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_3_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_3_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_3_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_4_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/A5_CKO_D3_4_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_4_L00$i
done


for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_1_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_1_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_1_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_2_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_2_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_2_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_3_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_3_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_3_L00$i
done


for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_4_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/3465-198245048/FASTQ_Generation_2020-09-21_13_03*/WT_D3_4_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_4_L00$i
done

