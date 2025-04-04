#!/bin/bash

# Upload raw data
aws s3 cp ~/Download/raw_data/ s3://bioinformatics-ngs-data/raw_data/ --recursive

# Upload reference genome
aws s3 cp ~/Download/reference_genome/ s3://bioinformatics-ngs-data/reference_genome/ --recursive

# Upload aligned data
aws s3 cp ~/Download/aligned_data/ s3://bioinformatics-ngs-data/aligned_data/ --recursive

# Upload variant calls
aws s3 cp ~/Download/variant_calls/ s3://bioinformatics-ngs-data/variant_calls/ --recursive

# Upload FastQC reports
aws s3 cp ~/Download/reports/fastqc_reports/ s3://bioinformatics-ngs-data/reports/fastqc_reports/ --recursive
