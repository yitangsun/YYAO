
####### Download datasets from https://basespace.illumina.com/dashboard


###### Download reference genome 
##### https://www.ncbi.nlm.nih.gov/assembly/GCF_000001635.27
##### or ftp://ftp.ensembl.org/pub/release-101/fasta/mus_musculus/ 
###### or http://uswest.ensembl.org/Mus_musculus/Info/Index

######iGenome

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

STAR --runThreadN 6 --runMode genomeGenerate --genomeDir /scratch/ys98038/YYAO/Reference \
--genomeFastaFiles /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07/UCSC_mm10/Mus_musculus/UCSC/mm10/Sequence/WholeGenomeFasta/genome.fa \
--sjdbGTFfile /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07/UCSC_mm10/Mus_musculus/UCSC/mm10/Annotation/Archives/archive-2015-07-17-14-33-26/Genes/genes.gtf --sjdbOverhang 99


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

STAR --runThreadN 6 --runMode genomeGenerate --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--genomeFastaFiles /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07/GCF_000001635.27_GRCm39_genomic.fna \
--sjdbGTFfile /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07/GCF_000001635.27_GRCm39_genomic.gtf --sjdbOverhang 99


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
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/WT_4_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/WT_4_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/WT-4_S4_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/a5_CKO-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/a5_CKO-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/a5_CKO-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/a5_CKO-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-2_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/a5_CKO-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/a5_CKO-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/a5_CKO-4_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/a5_CKO-4_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-4_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/ctr-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/ctr-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/ctr-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/ctr-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-2_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/ctr-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/ctr-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_CKO-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_CKO-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_CKO-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_CKO-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-2_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_CKO-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_CKO-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_CKO-4_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_CKO-4_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-4_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_ctr-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_ctr-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_ctr-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_ctr-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-2_microglia_L00$i
done


for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_ctr-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_ctr-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYao/Reference/ncbi-genomes-2020-10-07 \
--readFilesIn /scratch/ys98038/YYao/2989-158183035/*/v1_ctr-4_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYao/2989-158183035/*/v1_ctr-4_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYao/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-4_microglia_L00$i
done



################### NEW 1

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
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/WT_4_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/WT_4_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/WT-4_S4_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-2_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-4_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/a5_CKO-4_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-4_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/ctr-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/ctr-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/ctr-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/ctr-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-2_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/ctr-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/ctr-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-2_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-4_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_CKO-4_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-4_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-1_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-1_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-2_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-2_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-2_microglia_L00$i
done


for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-3_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-3_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-3_microglia_L00$i
done

for i in 1 2 3 4
do
STAR --runThreadN 6 --genomeDir /scratch/ys98038/YYAO/Reference \
--readFilesIn /scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-4_microglia_L00$i*/*_R1_001.fastq \
/scratch/ys98038/YYAO/2989-158183035/*/v1_ctr-4_microglia_L00$i*/*_R2_001.fastq  \
--outSAMtype BAM SortedByCoordinate --alignIntronMin 20 --alignIntronMax 500000 --outFilterMismatchNmax 10  \
--outFileNamePrefix /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-4_microglia_L00$i
done





