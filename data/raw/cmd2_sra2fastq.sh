#way- 1- wget ftp site
wget ftp://ftp.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR191/SRR1916152/SRR1916152.sra

#way 2 - aspera connect download .sra
ASPERA Connect_cmd_ascp -T -i /home/yi/.aspera/connect/etc/asperaweb_id_dsa.openssh anonftp@ftp-private.ncbi.nlm.nih.gov:sra/sra-instant/reads/ByStudy/sra/SRP/SRP056/SRP056187/SRR1916152/SRR1916152.sra  /home/yi/yeast_tutorial
 aspera connect download and .sh file install and ascp command works

#way3 - NCBI SRAtoolkit -prefetch
NCBI SRAtoolkit_prefetch accession  get .sra file
 fast-dump sra2fastq file  fastq-dump accession

#way4 - NCBI SRAtoolkit- fastq-dump
NCBI SRAtoolkit_fastq-dump accession  get .fastq file

