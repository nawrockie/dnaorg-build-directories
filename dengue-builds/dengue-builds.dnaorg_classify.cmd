mkdir dengue-builds
cp dengue_refseq_list.txt dengue-builds/dengue-builds.dnaorg_classify.ref.list
cat dengue-builds/dengue-builds.dnaorg_classify.ref.list | epost -db nuccore -format acc | efetch -format fasta > dengue-builds/dengue-builds.dnaorg_classify.ref.fa
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-seqstat --dna -a dengue-builds/dengue-builds.dnaorg_classify.ref.fa | grep ^= | awk '{ printf("%s %s\n", $2, $3); }' > dengue-builds/dengue-builds.dnaorg_classify.ref.fa.list.tmp
rm dengue-builds/dengue-builds.dnaorg_classify.ref.fa.list.tmp
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch --index dengue-builds/dengue-builds.dnaorg_classify.ref.fa > /dev/null
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_001477.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001477 dengue-builds/dengue-builds.dnaorg_classify.0.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.0.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_001474.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001474 dengue-builds/dengue-builds.dnaorg_classify.1.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.1.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_001475.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001475 dengue-builds/dengue-builds.dnaorg_classify.2.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.2.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_002640.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002640 dengue-builds/dengue-builds.dnaorg_classify.3.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.3.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmpress dengue-builds/dengue-builds.dnaorg_classify.hmm > /dev/null
rm dengue-builds/dengue-builds.dnaorg_classify.0.hmm
rm dengue-builds/dengue-builds.dnaorg_classify.1.hmm
rm dengue-builds/dengue-builds.dnaorg_classify.2.hmm
rm dengue-builds/dengue-builds.dnaorg_classify.3.hmm
# Thu Nov 29 13:28:39 EST 2018
# Linux cbbdev12 3.10.0-862.14.4.el7.x86_64 #1 SMP Wed Sep 26 15:12:11 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
