# Pseudocode 

# read SRR txt file
# srr000000 accession
# wget ftp://ftp.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR191/SRR1916152/SRR1916152.sra

# open and read each line of srr txt file
# for each line:
    # generate wget cmd
    # fastq-dump accession.sra




import sys
# print sys.argv[0]
acc_file = sys.argv[1]
with open(acc_file) as acc_file_handle:
    for line in acc_file_handle:
        line = line.strip()
        #print(line)
        cmd_str = "wget ftp://ftp.ncbi.nlm.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/{srr_six}/{srr_acc}/{sra_file}\nfastq-dump {sra_file}".format(srr_six = line[0:6], srr_acc = line, sra_file = line + ".sra")
        print(cmd_str)
