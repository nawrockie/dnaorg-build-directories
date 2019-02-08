mkdir dengue-builds
cp dengue_refseq_list.txt dengue-builds/dengue-builds.dnaorg_classify.ref.list
cat dengue-builds/dengue-builds.dnaorg_classify.ref.list | epost -db nuccore -format acc | efetch -format fasta > dengue-builds/dengue-builds.dnaorg_classify.ref.fa
/panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/infernal-dev/easel/miniapps/esl-seqstat --dna -a dengue-builds/dengue-builds.dnaorg_classify.ref.fa | grep ^= | awk '{ printf("%s %s\n", $2, $3); }' > dengue-builds/dengue-builds.dnaorg_classify.ref.fa.list.tmp
rm dengue-builds/dengue-builds.dnaorg_classify.ref.fa.list.tmp
/panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/infernal-dev/easel/miniapps/esl-sfetch --index dengue-builds/dengue-builds.dnaorg_classify.ref.fa > /dev/null
/panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/infernal-dev/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_001477.1 | /panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001477 dengue-builds/dengue-builds.dnaorg_classify.0.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.0.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/infernal-dev/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_001474.2 | /panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001474 dengue-builds/dengue-builds.dnaorg_classify.1.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.1.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/infernal-dev/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_001475.2 | /panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001475 dengue-builds/dengue-builds.dnaorg_classify.2.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.2.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/infernal-dev/easel/miniapps/esl-sfetch dengue-builds/dengue-builds.dnaorg_classify.ref.fa NC_002640.1 | /panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002640 dengue-builds/dengue-builds.dnaorg_classify.3.hmm - > /dev/null
cat dengue-builds/dengue-builds.dnaorg_classify.3.hmm >> dengue-builds/dengue-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/19_0129_virus_dnaorg_one_model_implementation/hmmer-3.1b2/src/hmmpress dengue-builds/dengue-builds.dnaorg_classify.hmm > /dev/null
rm dengue-builds/dengue-builds.dnaorg_classify.0.hmm
rm dengue-builds/dengue-builds.dnaorg_classify.1.hmm
rm dengue-builds/dengue-builds.dnaorg_classify.2.hmm
rm dengue-builds/dengue-builds.dnaorg_classify.3.hmm
# Wed Jan 30 12:49:13 EST 2019
# Linux cbbdev12 3.10.0-957.1.3.el7.x86_64 #1 SMP Thu Nov 29 14:49:43 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
