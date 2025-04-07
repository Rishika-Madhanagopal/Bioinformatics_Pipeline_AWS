# 🧬 Bioinformatics Pipeline on AWS

This project implements a complete bioinformatics workflow for genomic data analysis using AWS cloud services. The pipeline performs quality control, read alignment, variant calling, and data analysis using widely-used tools like FastQC, Bowtie2, Samtools, and GATK — all running on an EC2 instance and storing results in Amazon S3.

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
├── README.md
└── LICENSE (optional)


