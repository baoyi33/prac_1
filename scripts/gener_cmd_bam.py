#hisat2 ../../data/ref/yeast_ref -U ../../data/raw/SRR1916152.fastq | samtools view -bS - | samtools sort -o EV_strain_3.srt.bam

import sys
acc_file = sys.argv[1]
ref = sys.argv[2]
fastq_dir = sys.argv[3]
with open(acc_file) as acc_file_handle:
    for line in acc_file_handle:
        line =line.strip()
        ele = line.split("\t")
        cmd_str = "hisat2 -x {ref} -U {fastq_dir} | samtools view -bS - | samtools sort -o {acc_sample}.srt.bam".format(ref =ref, fastq_dir = fastq_dir, acc_file = ele[0], acc_sample = ele[1])
        print(cmd_str)
