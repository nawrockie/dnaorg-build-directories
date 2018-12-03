mkdir flaviviridae-classify-build
cp flaviviridae_refseq_list.txt flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.list
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.list | epost -db nuccore -format acc | efetch -format fasta > flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-seqstat --dna -a flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa | grep ^= | awk '{ printf("%s %s\n", $2, $3); }' > flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa.list.tmp
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa.list.tmp
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch --index flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa > /dev/null
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_034204.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_034204 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.0.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.0.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_038912.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_038912 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.1.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.1.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_038433.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_038433 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.2.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.2.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_038425.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_038425 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.3.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.3.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_035889.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_035889 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.4.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.4.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_035432.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_035432 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.5.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.5.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_035118.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_035118 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.6.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.6.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_034151.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_034151 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.7.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.7.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_034017.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_034017 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.8.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.8.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_034007.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_034007 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.9.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.9.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_031327.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_031327 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.10.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.10.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_024299.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_024299 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.11.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.11.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_030791.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_030791 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.12.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.12.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001564.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001564 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.13.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.13.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_030290.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_030290 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.14.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.14.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_029055.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_029055 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.15.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.15.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_027999.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_027999 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.16.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.16.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_027819.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_027819 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.17.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.17.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_027817.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_027817 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.18.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.18.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_027709.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_027709 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.19.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.19.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_026624.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_026624 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.20.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.20.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_026620.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_026620 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.21.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.21.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_024018.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_024018 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.22.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.22.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_024017.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_024017 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.23.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.23.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_023176.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_023176 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.24.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.24.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_021154.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_021154 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.25.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.25.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_021153.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_021153 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.26.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.26.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_021069.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_021069 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.27.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.27.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_020902.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_020902 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.28.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.28.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_018713.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_018713 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.29.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.29.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_017086.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_017086 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.30.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.30.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_016997.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_016997 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.31.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.31.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_009028.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_009028 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.32.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.32.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_009029.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_009029 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.33.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.33.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_009026.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_009026 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.34.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.34.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_012932.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012932 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.35.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.35.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_012812.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012812 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.36.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.36.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_012735.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012735 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.37.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.37.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_012671.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012671 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.38.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.38.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_012534.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012534 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.39.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.39.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_012533.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012533 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.40.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.40.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_012532.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_012532 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.41.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.41.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_008604.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_008604 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.42.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.42.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001475.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001475 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.43.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.43.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001474.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001474 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.44.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.44.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_009942.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_009942 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.45.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.45.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_009827.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_009827 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.46.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.46.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_009823.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_009823 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.47.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.47.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_007580.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_007580 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.48.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.48.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_008718.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_008718 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.49.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.49.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_008719.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_008719 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.50.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.50.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_005064.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_005064 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.51.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.51.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_005062.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_005062 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.52.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.52.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_005039.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_005039 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.53.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.53.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_004119.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_004119 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.54.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.54.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_004102.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_004102 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.55.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.55.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_003690.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_003690 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.56.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.56.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_003687.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_003687 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.57.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.57.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_003679.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_003679 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.58.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.58.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_003678.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_003678 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.59.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.59.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_003635.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_003635 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.60.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.60.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_002657.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002657 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.61.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.61.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_002640.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002640 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.62.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.62.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001563.2 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001563 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.63.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.63.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_000943.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_000943 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.64.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.64.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001837.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001837 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.65.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.65.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001809.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001809 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.66.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.66.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001710.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001710 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.67.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.67.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001672.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001672 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.68.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.68.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001655.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001655 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.69.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.69.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_002031.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_002031 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.70.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.70.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001477.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001477 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.71.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.71.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/infernal-1.1.2/easel/miniapps/esl-sfetch flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.ref.fa NC_001461.1 | /panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmbuild --informat afa -n NC_001461 flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.72.hmm - > /dev/null
cat flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.72.hmm >> flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
/panfs/pan1/dnaorg/virseqannot/code/hmmer-3.1b2/src/hmmpress flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm > /dev/null
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.0.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.1.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.2.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.3.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.4.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.5.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.6.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.7.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.8.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.9.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.10.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.11.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.12.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.13.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.14.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.15.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.16.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.17.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.18.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.19.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.20.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.21.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.22.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.23.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.24.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.25.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.26.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.27.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.28.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.29.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.30.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.31.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.32.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.33.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.34.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.35.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.36.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.37.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.38.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.39.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.40.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.41.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.42.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.43.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.44.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.45.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.46.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.47.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.48.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.49.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.50.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.51.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.52.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.53.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.54.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.55.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.56.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.57.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.58.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.59.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.60.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.61.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.62.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.63.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.64.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.65.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.66.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.67.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.68.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.69.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.70.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.71.hmm
rm flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.72.hmm
# Thu Nov 29 13:37:15 EST 2018
# Linux cbbdev12 3.10.0-862.14.4.el7.x86_64 #1 SMP Wed Sep 26 15:12:11 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
