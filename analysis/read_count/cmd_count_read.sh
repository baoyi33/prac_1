#use sam file
htseq-count ../read_aln/EV_strain_3.sam ../../data/ref/yeast.gtf > EV_strain_3.count.tab

samtools view -h EV_strain_3.srt.bam | less -SN

#use bam file

htseq-count -f bam -r pos ../read_aln/EV_strain_3.srt.bam ../../data/ref/yeast.gtf > EV_strain_3.count.tab
