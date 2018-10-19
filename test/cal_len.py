#!/user/bin/python

with open("test.fa") as fasta:  # open test.fa file
    length = 0
    next(fasta)  # not the first line
    for line in fasta:
        print(line)
        line = line.rstrip() # new line 
        length = length + len(line)
    print(length)

