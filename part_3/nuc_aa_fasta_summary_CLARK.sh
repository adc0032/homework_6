#!/bin/bash

WD="/home/aubcls63/homework_6/part_3/CDS/"

cd $WD

for file in ./*.cds
do
    base=$(basename $file .fasta.transdecoder.cds)
    sed "/^>/s/\s.*$//g" $file > ${base}.truncated
    trunc=${base}.truncated
    get_fasta_stats.pl -T -g $trunc > pretrans.${base}.stat
    transeq -sformat pearson -sequence $trunc -outseq $trunc.pep
done ;

for file in ./*.pep
do
    base=$(basename $file .truncated.pep)
    get_fasta_stats.pl -t $file > postrans.${base}.stat
done ;


rm *.cds
rm *.pep
rm *.truncated

echo "Translation complete, Extraneous files removed."
