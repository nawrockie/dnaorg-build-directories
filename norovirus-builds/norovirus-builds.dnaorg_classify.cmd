mkdir norovirus-builds
cp norovirus_refseq_list.txt norovirus-builds/norovirus-builds.dnaorg_classify.ref.list
cat norovirus-builds/norovirus-builds.dnaorg_classify.ref.list | epost -db nuccore -format acc | efetch -format fasta > norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-seqstat --dna -a norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa | grep ^= | awk '{ printf("%s %s\n", $2, $3); }' > norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa.list.tmp
rm norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa.list.tmp
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-sfetch --index norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa > /dev/null
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-sfetch norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa NC_001959.2 | /panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001959 norovirus-builds/norovirus-builds.dnaorg_classify.0.hmm - > /dev/null
cat norovirus-builds/norovirus-builds.dnaorg_classify.0.hmm >> norovirus-builds/norovirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-sfetch norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa NC_008311.1 | /panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_008311 norovirus-builds/norovirus-builds.dnaorg_classify.1.hmm - > /dev/null
cat norovirus-builds/norovirus-builds.dnaorg_classify.1.hmm >> norovirus-builds/norovirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-sfetch norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa NC_029645.1 | /panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_029645 norovirus-builds/norovirus-builds.dnaorg_classify.2.hmm - > /dev/null
cat norovirus-builds/norovirus-builds.dnaorg_classify.2.hmm >> norovirus-builds/norovirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-sfetch norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa NC_029646.1 | /panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_029646 norovirus-builds/norovirus-builds.dnaorg_classify.3.hmm - > /dev/null
cat norovirus-builds/norovirus-builds.dnaorg_classify.3.hmm >> norovirus-builds/norovirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-sfetch norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa NC_029647.1 | /panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_029647 norovirus-builds/norovirus-builds.dnaorg_classify.4.hmm - > /dev/null
cat norovirus-builds/norovirus-builds.dnaorg_classify.4.hmm >> norovirus-builds/norovirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/infernal-1.1.2/easel/miniapps/esl-sfetch norovirus-builds/norovirus-builds.dnaorg_classify.ref.fa NC_031324.1 | /panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_031324 norovirus-builds/norovirus-builds.dnaorg_classify.5.hmm - > /dev/null
cat norovirus-builds/norovirus-builds.dnaorg_classify.5.hmm >> norovirus-builds/norovirus-builds.dnaorg_classify.hmm
/panfs/pan1/infernal/notebook/18_0210_dnaorg_classify_annotate_option/hmmer-3.1b2/src/hmmpress norovirus-builds/norovirus-builds.dnaorg_classify.hmm > /dev/null
rm norovirus-builds/norovirus-builds.dnaorg_classify.0.hmm
rm norovirus-builds/norovirus-builds.dnaorg_classify.1.hmm
rm norovirus-builds/norovirus-builds.dnaorg_classify.2.hmm
rm norovirus-builds/norovirus-builds.dnaorg_classify.3.hmm
rm norovirus-builds/norovirus-builds.dnaorg_classify.4.hmm
rm norovirus-builds/norovirus-builds.dnaorg_classify.5.hmm
# Tue Feb 13 12:51:57 EST 2018
# Linux cbbdev21 3.10.0-693.11.6.el7.x86_64 #1 SMP Thu Jan 4 01:06:37 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
