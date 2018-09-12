mkdir ebolavirus-builds
cp ebolavirus_refseq_list.txt ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.list
cat ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.list | epost -db nuccore -format acc | efetch -format fasta > ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/infernal-1.1.2/easel/miniapps/esl-seqstat --dna -a ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa | grep ^= | awk '{ printf("%s %s\n", $2, $3); }' > ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa.list.tmp
rm ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa.list.tmp
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/infernal-1.1.2/easel/miniapps/esl-sfetch --index ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa > /dev/null
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/infernal-1.1.2/easel/miniapps/esl-sfetch ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa NC_006432.1 | /panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_006432 ebolavirus-builds/ebolavirus-builds.dnaorg_classify.0.hmm - > /dev/null
cat ebolavirus-builds/ebolavirus-builds.dnaorg_classify.0.hmm >> ebolavirus-builds/ebolavirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/infernal-1.1.2/easel/miniapps/esl-sfetch ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa NC_014373.1 | /panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_014373 ebolavirus-builds/ebolavirus-builds.dnaorg_classify.1.hmm - > /dev/null
cat ebolavirus-builds/ebolavirus-builds.dnaorg_classify.1.hmm >> ebolavirus-builds/ebolavirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/infernal-1.1.2/easel/miniapps/esl-sfetch ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa NC_002549.1 | /panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002549 ebolavirus-builds/ebolavirus-builds.dnaorg_classify.2.hmm - > /dev/null
cat ebolavirus-builds/ebolavirus-builds.dnaorg_classify.2.hmm >> ebolavirus-builds/ebolavirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/infernal-1.1.2/easel/miniapps/esl-sfetch ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa NC_014372.1 | /panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_014372 ebolavirus-builds/ebolavirus-builds.dnaorg_classify.3.hmm - > /dev/null
cat ebolavirus-builds/ebolavirus-builds.dnaorg_classify.3.hmm >> ebolavirus-builds/ebolavirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/infernal-1.1.2/easel/miniapps/esl-sfetch ebolavirus-builds/ebolavirus-builds.dnaorg_classify.ref.fa NC_004161.1 | /panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_004161 ebolavirus-builds/ebolavirus-builds.dnaorg_classify.4.hmm - > /dev/null
cat ebolavirus-builds/ebolavirus-builds.dnaorg_classify.4.hmm >> ebolavirus-builds/ebolavirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0722_virus_duplicate_features/hmmer-3.1b2/src/hmmpress ebolavirus-builds/ebolavirus-builds.dnaorg_classify.hmm > /dev/null
rm ebolavirus-builds/ebolavirus-builds.dnaorg_classify.0.hmm
rm ebolavirus-builds/ebolavirus-builds.dnaorg_classify.1.hmm
rm ebolavirus-builds/ebolavirus-builds.dnaorg_classify.2.hmm
rm ebolavirus-builds/ebolavirus-builds.dnaorg_classify.3.hmm
rm ebolavirus-builds/ebolavirus-builds.dnaorg_classify.4.hmm
# Tue Aug 21 10:05:52 EDT 2018
# Linux cbbdev21 3.10.0-862.9.1.el7.x86_64 #1 SMP Mon Jul 16 16:29:36 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
