# 🧬 Bioinformatics Pipeline on AWS

This project implements an end-to-end bioinformatics workflow for processing genomic data using AWS Cloud Services. It takes raw sequencing data (FASTQ), performs quality control, read alignment, variant calling, and data analysis using tools like FastQC, Bowtie2, Samtools, and GATK.

The pipeline is designed to run on an EC2 instance, store data in Amazon S3, and includes optional automation using AWS Lambda and scalability through AWS Batch. Final results can be analyzed interactively using Jupyter Notebook.

---

## 📂 Project Structure

```text
bioinformatics-pipeline-aws/
│
├── data/
│   └── (optional) Sample genomic data (if allowed to share)
│
├── pipeline/
│   ├── install_tools.sh          # Script for installing bioinformatics tools
│   ├── run_pipeline.sh           # Main pipeline script
│   └── analysis/
│       ├── fastqc_reports/
│       ├── sam_files/
│       └── bam_files/
│
├── docs/
│   └── aws_architecture_diagram.png  # AWS architecture diagram
│
├── scripts/
│   ├── s3_upload.sh              # Script for uploading results to S3
│   └── jupyter_analysis.py       # Python analysis script for Jupyter
│
└── README.md


---

## 🚀 Features

- Run quality checks using **FastQC**
- Align reads with **Bowtie2** or **BWA**
- Convert and process alignments using **Samtools**
- Perform variant calling with **GATK**
- Upload data and results to **Amazon S3**
- Analyze VCF results using **Jupyter Notebook**
- AWS-integrated design using **EC2**, **S3**, **Lambda**, and **AWS Batch**

---
## 🛠 Prerequisites

- AWS account with permissions to use EC2, S3, Lambda, Batch
- Ubuntu EC2 instance (recommend `t2.medium` or higher)
- Tools installed via `install_tools.sh`
- SSH access to EC2 (use PuTTY or native SSH on Windows)

---
## 📦 Setup Guide
### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/bioinformatics-pipeline-aws.git
cd bioinformatics-pipeline-aws

## Upload Genomic Data to S3
Use AWS CLI to upload input files to your S3 bucket:
```bash
aws s3 cp ~/Download/raw_data/ s3://your-bucket-name/raw_data/ --recursive

## Launch EC2 Instance
Use Ubuntu as the base image.

Connect via SSH (PuTTY for Windows users).

Update system and install tools using:

```bash
cd pipeline
bash install_tools.sh

## Run the Pipeline
```bash
bash run_pipeline.sh

This script:

Runs FastQC

Aligns reads to a reference genome

Converts SAM to BAM

Calls variants using GATK

## Upload Results to S3

```bash
cd scripts
bash s3_upload.sh

---
## 📊 Jupyter Data Analysis
Analyze the variant call results in a Jupyter Notebook:

```bash
pip3 install jupyter pandas matplotlib
jupyter notebook

Open jupyter_analysis.py and run the cells to load .vcf files and generate plots using pandas & matplotlib.

---

## ☁️ AWS Architecture

S3 stores raw and processed data.

EC2 runs the pipeline.

Lambda / Batch (Optional) for automation and scalability.
---

## 🙌 Acknowledgements
NCBI SRA

1000 Genomes Project

GATK Toolkit

AWS Free Tier for cloud compute
