#!/bin/bash

# Run FastQC for quality control
fastqc ~/Download/SRR32876321.fastq

# Align reads using Bowtie2
bowtie2-build ~/Download/GCF_009914755.1_T2T-CHM13v2.0_genomic.fna ~/Download/reference_index
bowtie2 -x ~/Download/reference_index -U ~/Download/SRR32876321.fastq -S ~/aligned_output.sam

# Convert SAM to BAM using Samtools
samtools view -bS ~/aligned_output.sam > ~/aligned_output.bam

# Variant calling using GATK HaplotypeCaller
gatk HaplotypeCaller -R ~/Download/GCF_009914755.1_T2T-CHM13v2.0_genomic.fna -I ~/aligned_output.bam -O ~/variant.vcf
