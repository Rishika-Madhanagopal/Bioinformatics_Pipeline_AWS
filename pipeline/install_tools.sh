#!/bin/bash

# Update the system
sudo apt-get update && sudo apt-get upgrade -y

# Install FastQC
sudo apt-get install fastqc -y

# Install Bowtie2
sudo apt-get install bowtie2 -y

# Install BWA
sudo apt-get install bwa -y

# Install Samtools
sudo apt-get install samtools -y

# Install GATK
wget https://github.com/broadinstitute/gatk/releases/download/4.2.0.0/gatk-4.2.0.0.zip
unzip gatk-4.2.0.0.zip
cd gatk-4.2.0.0
