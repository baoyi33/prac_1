#three-step-command
hisat2 ../../data/ref/yeast_ref -U ../../data/raw/SRR1916152.fastq > EV_strain_3.sam

samtools view -bS EV_strain_3.sam -o EV_strain_3.bam

samtools sort EV_strain_3.bam -o EV_strain_3.srt.bam

#one-step_command
hisat2 ../../data/ref/yeast_ref -U ../../data/raw/SRR1916152.fastq | samtools view -bS - | samtools sort -o EV_strain_3.srt.bam

#result of alignment
17028551 reads; of these:
  17028551 (100.00%) were unpaired; of these:
    1943500 (11.41%) aligned 0 times
    14059826 (82.57%) aligned exactly 1 time
    1025225 (6.02%) aligned >1 times
88.59% overall alignment rate

