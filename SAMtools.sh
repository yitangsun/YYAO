
#PBS -S /bin/bash
#PBS -q batch
#PBS -N Outcome
#PBS -l nodes=2:ppn=4:AMD
#PBS -l walltime=3:00:00:00
#PBS -l mem=30gb
#PBS -M ys98038@uga.edu
#PBS -m abe
cd $PBS_O_WORKDIR

module load SAMtools/1.10-GCC-8.2.0-2.31.1

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_1_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_1_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_1_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_1_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_1_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_2_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_2_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_2_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_2_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_2_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_3_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_3_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_3_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_3_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_3_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_4_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_4_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_4_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_4_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/A5_CKO_D3_4_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_1_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_1_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_1_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_1_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_1_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_2_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_2_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_2_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_2_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_2_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_3_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_3_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_3_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_3_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_3_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_4_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_4_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_4_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_4_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/3465-198245048_2020-09-21_13_03/WT_D3_4_L004Aligned.sortedByCoord.out.bam



#PBS -S /bin/bash
#PBS -q batch
#PBS -N Outcome
#PBS -l nodes=2:ppn=4:AMD
#PBS -l walltime=3:00:00:00
#PBS -l mem=30gb
#PBS -M ys98038@uga.edu
#PBS -m abe
cd $PBS_O_WORKDIR

module load SAMtools/1.10-GCC-8.2.0-2.31.1

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-1_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-1_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-1_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-1_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-1_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-2_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-2_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-2_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-2_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-2_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-3_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-3_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-3_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-3_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-3_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-4_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-4_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-4_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-4_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/a5_CKO-4_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-1_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-1_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-1_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-1_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-1_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-2_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-2_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-2_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-2_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-2_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-3_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-3_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-3_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-3_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/ctr-3_microglia_L004Aligned.sortedByCoord.out.bam

#PBS -S /bin/bash
#PBS -q batch
#PBS -N Outcome
#PBS -l nodes=2:ppn=4:AMD
#PBS -l walltime=3:00:00:00
#PBS -l mem=30gb
#PBS -M ys98038@uga.edu
#PBS -m abe
cd $PBS_O_WORKDIR

module load SAMtools/1.10-GCC-8.2.0-2.31.1

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-1_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-1_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-1_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-1_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-1_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-2_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-2_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-2_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-2_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-2_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-3_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-3_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-3_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-3_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-3_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-4_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-4_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-4_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-4_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_CKO-4_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-3_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-3_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-3_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-3_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-3_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-4_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-4_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-4_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-4_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-4_microglia_L004Aligned.sortedByCoord.out.bam

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/WT-4_S4_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/WT-4_S4_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/WT-4_S4_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/WT-4_S4_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/WT-4_S4_L004Aligned.sortedByCoord.out.bam


#PBS -S /bin/bash
#PBS -q batch
#PBS -N Outcome
#PBS -l nodes=2:ppn=4:AMD
#PBS -l walltime=3:00:00:00
#PBS -l mem=30gb
#PBS -M ys98038@uga.edu
#PBS -m abe
cd $PBS_O_WORKDIR

module load SAMtools/1.10-GCC-8.2.0-2.31.1

samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-1_microglia_L004Aligned.sortedByCoord.out.bam
samtools merge /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-2_microglia_Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-2_microglia_L001Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-2_microglia_L002Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-2_microglia_L003Aligned.sortedByCoord.out.bam /scratch/ys98038/YYAO/STAR_results/2989-158183035_2020-03-13_16_52_00Z-222443222/v1_ctr-2_microglia_L004Aligned.sortedByCoord.out.bam





realpath A5_CKO_D3_1_Aligned.sortedByCoord.out.bam WT_D3_1_Aligned.sortedByCoord.out.bam > /scratch/ys98038/YYAO/Bam_file/A5_CKO_D3_1_WT_D3_1.list
