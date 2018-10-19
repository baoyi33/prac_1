hisat2 -x ../../data/ref/yeast_ref -U ../../data/raw/ | samtools view -bS - | samtools sort -o EV_3.srt.bam
hisat2 -x ../../data/ref/yeast_ref -U ../../data/raw/ | samtools view -bS - | samtools sort -o EV_4.srt.bam
hisat2 -x ../../data/ref/yeast_ref -U ../../data/raw/ | samtools view -bS - | samtools sort -o DNMT3B_2.srt.bam
hisat2 -x ../../data/ref/yeast_ref -U ../../data/raw/ | samtools view -bS - | samtools sort -o DNMT3B_3.srt.bam
hisat2 -x ../../data/ref/yeast_ref -U ../../data/raw/ | samtools view -bS - | samtools sort -o DNMT3B_4.srt.bam
