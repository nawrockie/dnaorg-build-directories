mkdir NC_029647
md5sum NC_029647.matpept.in > NC_029647.matpept.in.md5sum
rm NC_029647.matpept.in.md5sum
esearch -db nuccore -query NC_029647 | efetch -format gpc | xtract -insd mat_peptide INSDFeature_location product > NC_029647/NC_029647.dnaorg_build.mat_peptide
esearch -db nuccore -query NC_029647 | efetch -format ft > NC_029647/NC_029647.dnaorg_build.fetched.ftable
esearch -db nuccore -query NC_029647 | efetch -format gpc | xtract -insd INSDSeq_length | grep . | sort > NC_029647/NC_029647.dnaorg_build.length
perl /home/nawrocke/src/dnaorg_install_script/esl-fetch-cds/esl-fetch-cds.pl -nocodon NC_029647/NC_029647.dnaorg_build.ref.fg.idfetch.in > NC_029647/NC_029647.dnaorg_build.ref.fg.fa
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.mp.1.fa > NC_029647/NC_029647.dnaorg_build.ref.mp.1.stk
cat NC_029647/NC_029647.dnaorg_build.ref.mp.1.named.stk >  NC_029647/NC_029647.dnaorg_build.ref.all.stk
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.mp.2.fa > NC_029647/NC_029647.dnaorg_build.ref.mp.2.stk
cat NC_029647/NC_029647.dnaorg_build.ref.mp.2.named.stk >> NC_029647/NC_029647.dnaorg_build.ref.all.stk
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.mp.3.fa > NC_029647/NC_029647.dnaorg_build.ref.mp.3.stk
cat NC_029647/NC_029647.dnaorg_build.ref.mp.3.named.stk >> NC_029647/NC_029647.dnaorg_build.ref.all.stk
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.mp.4.fa > NC_029647/NC_029647.dnaorg_build.ref.mp.4.stk
cat NC_029647/NC_029647.dnaorg_build.ref.mp.4.named.stk >> NC_029647/NC_029647.dnaorg_build.ref.all.stk
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.mp.5.fa > NC_029647/NC_029647.dnaorg_build.ref.mp.5.stk
cat NC_029647/NC_029647.dnaorg_build.ref.mp.5.named.stk >> NC_029647/NC_029647.dnaorg_build.ref.all.stk
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.mp.6.fa > NC_029647/NC_029647.dnaorg_build.ref.mp.6.stk
cat NC_029647/NC_029647.dnaorg_build.ref.mp.6.named.stk >> NC_029647/NC_029647.dnaorg_build.ref.all.stk
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.cds.2.fa > NC_029647/NC_029647.dnaorg_build.ref.cds.2.stk
cat NC_029647/NC_029647.dnaorg_build.ref.cds.2.named.stk >> NC_029647/NC_029647.dnaorg_build.ref.all.stk
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_029647/NC_029647.dnaorg_build.ref.cds.3.fa > NC_029647/NC_029647.dnaorg_build.ref.cds.3.stk
cat NC_029647/NC_029647.dnaorg_build.ref.cds.3.named.stk >> NC_029647/NC_029647.dnaorg_build.ref.all.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.1.fa
rm NC_029647/NC_029647.dnaorg_build.ref.mp.1.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.1.named.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.2.fa
rm NC_029647/NC_029647.dnaorg_build.ref.mp.2.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.2.named.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.3.fa
rm NC_029647/NC_029647.dnaorg_build.ref.mp.3.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.3.named.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.4.fa
rm NC_029647/NC_029647.dnaorg_build.ref.mp.4.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.4.named.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.5.fa
rm NC_029647/NC_029647.dnaorg_build.ref.mp.5.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.5.named.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.6.fa
rm NC_029647/NC_029647.dnaorg_build.ref.mp.6.stk
rm NC_029647/NC_029647.dnaorg_build.ref.mp.6.named.stk
rm NC_029647/NC_029647.dnaorg_build.ref.cds.2.fa
rm NC_029647/NC_029647.dnaorg_build.ref.cds.2.stk
rm NC_029647/NC_029647.dnaorg_build.ref.cds.2.named.stk
rm NC_029647/NC_029647.dnaorg_build.ref.cds.3.fa
rm NC_029647/NC_029647.dnaorg_build.ref.cds.3.stk
rm NC_029647/NC_029647.dnaorg_build.ref.cds.3.named.stk
qsub -N b.NC_029647.dnaorg_build0 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.0.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.mp.1 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.0.cm - > NC_029647/NC_029647.dnaorg_build.0.cmbuild" > /dev/null

qsub -N b.NC_029647.dnaorg_build1 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.1.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.mp.2 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.1.cm - > NC_029647/NC_029647.dnaorg_build.1.cmbuild" > /dev/null

qsub -N b.NC_029647.dnaorg_build2 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.2.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.mp.3 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.2.cm - > NC_029647/NC_029647.dnaorg_build.2.cmbuild" > /dev/null

qsub -N b.NC_029647.dnaorg_build3 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.3.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.mp.4 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.3.cm - > NC_029647/NC_029647.dnaorg_build.3.cmbuild" > /dev/null

qsub -N b.NC_029647.dnaorg_build4 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.4.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.mp.5 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.4.cm - > NC_029647/NC_029647.dnaorg_build.4.cmbuild" > /dev/null

qsub -N b.NC_029647.dnaorg_build5 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.5.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.mp.6 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.5.cm - > NC_029647/NC_029647.dnaorg_build.5.cmbuild" > /dev/null

qsub -N b.NC_029647.dnaorg_build6 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.6.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.cds.2 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.6.cm - > NC_029647/NC_029647.dnaorg_build.6.cmbuild" > /dev/null

qsub -N b.NC_029647.dnaorg_build7 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_0210_dnaorg_classify_annotate_option/dnaorg-build-directories/norovirus-builds/NC_029647/NC_029647.dnaorg_build.b.7.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/easel/miniapps/esl-afetch NC_029647/NC_029647.dnaorg_build.ref.all.stk NC_029647.ref.cds.3 | /home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_029647/NC_029647.dnaorg_build.7.cm - > NC_029647/NC_029647.dnaorg_build.7.cmbuild" > /dev/null

sh NC_029647/NC_029647.dnaorg_build.cm.qsub
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.0.cm > /dev/null
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.1.cm > /dev/null
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.2.cm > /dev/null
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.3.cm > /dev/null
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.4.cm > /dev/null
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.5.cm > /dev/null
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.6.cm > /dev/null
/home/nawrocke/src/dnaorg_install_script/infernal-1.1.2/src/cmpress -F NC_029647/NC_029647.dnaorg_build.7.cm > /dev/null
# Tue Feb 13 14:23:26 EST 2018
# Linux sge656 3.10.0-693.11.1.el7.x86_64 #1 SMP Mon Dec 4 23:52:40 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
