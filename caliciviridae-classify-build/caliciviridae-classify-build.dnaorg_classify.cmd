mkdir caliciviridae-classify-build
cp caliciviridae_refseq_list.txt caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.list
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.list | epost -db nuccore -format acc | efetch -format fasta > caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-seqstat --dna -a caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa | grep ^= | awk '{ printf("%s %s\n", $2, $3); }' > caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa.list.tmp
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa.list.tmp
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch --index caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa > /dev/null
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_002551.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002551 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.0.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.0.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_000940.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_000940 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.1.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.1.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_004542.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_004542 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.2.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.2.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_004064.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_004064 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.3.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.3.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_004541.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_004541 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.4.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.4.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_001481.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001481 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.5.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.5.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_010624.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_010624 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.6.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.6.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_006269.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_006269 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.7.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.7.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_006554.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_006554 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.8.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.8.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_002615.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002615 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.9.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.9.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_006875.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_006875 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.10.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.10.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_001543.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001543 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.11.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.11.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_001959.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001959 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.12.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.12.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_007916.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_007916 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.13.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.13.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_008580.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_008580 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.14.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.14.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_008311.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_008311 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.15.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.15.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_011050.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_011050 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.16.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.16.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_011704.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_011704 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.17.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.17.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_012699.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012699 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.18.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.18.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_017936.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_017936 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.19.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.19.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_019712.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_019712 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.20.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.20.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_024031.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_024031 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.21.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.21.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_024078.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_024078 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.22.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.22.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_025676.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_025676 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.23.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.23.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_027026.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_027026 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.24.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.24.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_027122.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_027122 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.25.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.25.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_029645.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_029645 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.26.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.26.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_029646.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_029646 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.27.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.27.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_029647.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_029647 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.28.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.28.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_030793.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_030793 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.29.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.29.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_031324.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_031324 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.30.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.30.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_033081.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_033081 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.31.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.31.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_033776.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_033776 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.32.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.32.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_034444.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_034444 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.33.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.33.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_035675.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_035675 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.34.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.34.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_039475.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_039475 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.35.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.35.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_039476.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_039476 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.36.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.36.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.ref.fa NC_039477.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_039477 caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.37.hmm - > /dev/null
cat caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.37.hmm >> caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmpress caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.hmm > /dev/null
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.0.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.1.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.2.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.3.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.4.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.5.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.6.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.7.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.8.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.9.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.10.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.11.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.12.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.13.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.14.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.15.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.16.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.17.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.18.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.19.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.20.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.21.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.22.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.23.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.24.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.25.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.26.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.27.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.28.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.29.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.30.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.31.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.32.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.33.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.34.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.35.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.36.hmm
rm caliciviridae-classify-build/caliciviridae-classify-build.dnaorg_classify.37.hmm
# Tue Nov 20 11:39:14 EST 2018
# Linux cbbdev12 3.10.0-862.14.4.el7.x86_64 #1 SMP Wed Sep 26 15:12:11 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
