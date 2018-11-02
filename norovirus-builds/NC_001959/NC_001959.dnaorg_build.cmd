mkdir NC_001959
cp NC_001959.matpept.in NC_001959/NC_001959.dnaorg_build.matpept
md5sum NC_001959.matpept.in > NC_001959.matpept.in.md5sum
rm NC_001959.matpept.in.md5sum
esearch -db nuccore -query NC_001959 | efetch -format gpc | xtract -insd mat_peptide INSDFeature_location product > NC_001959/NC_001959.dnaorg_build.mat_peptide
esearch -db nuccore -query NC_001959 | efetch -format ft > NC_001959/NC_001959.dnaorg_build.fetched.ftable
esearch -db nuccore -query NC_001959 | efetch -format gpc | xtract -insd INSDSeq_length | grep . | sort > NC_001959/NC_001959.dnaorg_build.length
perl /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/esl-fetch-cds/esl-fetch-cds.pl -nocodon NC_001959/NC_001959.dnaorg_build.ref.fg.idfetch.in > NC_001959/NC_001959.dnaorg_build.ref.fg.fa
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.mp.1.fa > NC_001959/NC_001959.dnaorg_build.ref.mp.1.stk
cat NC_001959/NC_001959.dnaorg_build.ref.mp.1.named.stk >  NC_001959/NC_001959.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.mp.2.fa > NC_001959/NC_001959.dnaorg_build.ref.mp.2.stk
cat NC_001959/NC_001959.dnaorg_build.ref.mp.2.named.stk >> NC_001959/NC_001959.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.mp.3.fa > NC_001959/NC_001959.dnaorg_build.ref.mp.3.stk
cat NC_001959/NC_001959.dnaorg_build.ref.mp.3.named.stk >> NC_001959/NC_001959.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.mp.4.fa > NC_001959/NC_001959.dnaorg_build.ref.mp.4.stk
cat NC_001959/NC_001959.dnaorg_build.ref.mp.4.named.stk >> NC_001959/NC_001959.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.mp.5.fa > NC_001959/NC_001959.dnaorg_build.ref.mp.5.stk
cat NC_001959/NC_001959.dnaorg_build.ref.mp.5.named.stk >> NC_001959/NC_001959.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.mp.6.fa > NC_001959/NC_001959.dnaorg_build.ref.mp.6.stk
cat NC_001959/NC_001959.dnaorg_build.ref.mp.6.named.stk >> NC_001959/NC_001959.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.cds.2.fa > NC_001959/NC_001959.dnaorg_build.ref.cds.2.stk
cat NC_001959/NC_001959.dnaorg_build.ref.cds.2.named.stk >> NC_001959/NC_001959.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_001959/NC_001959.dnaorg_build.ref.cds.3.fa > NC_001959/NC_001959.dnaorg_build.ref.cds.3.stk
cat NC_001959/NC_001959.dnaorg_build.ref.cds.3.named.stk >> NC_001959/NC_001959.dnaorg_build.ref.all.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.1.fa
rm NC_001959/NC_001959.dnaorg_build.ref.mp.1.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.1.named.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.2.fa
rm NC_001959/NC_001959.dnaorg_build.ref.mp.2.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.2.named.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.3.fa
rm NC_001959/NC_001959.dnaorg_build.ref.mp.3.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.3.named.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.4.fa
rm NC_001959/NC_001959.dnaorg_build.ref.mp.4.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.4.named.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.5.fa
rm NC_001959/NC_001959.dnaorg_build.ref.mp.5.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.5.named.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.6.fa
rm NC_001959/NC_001959.dnaorg_build.ref.mp.6.stk
rm NC_001959/NC_001959.dnaorg_build.ref.mp.6.named.stk
rm NC_001959/NC_001959.dnaorg_build.ref.cds.2.fa
rm NC_001959/NC_001959.dnaorg_build.ref.cds.2.stk
rm NC_001959/NC_001959.dnaorg_build.ref.cds.2.named.stk
rm NC_001959/NC_001959.dnaorg_build.ref.cds.3.fa
rm NC_001959/NC_001959.dnaorg_build.ref.cds.3.stk
rm NC_001959/NC_001959.dnaorg_build.ref.cds.3.named.stk
esearch -db nuccore -query NC_001959 | efetch -format gpc | xtract -insd CDS protein_id INSDFeature_location translation > NC_001959/NC_001959.dnaorg_build.prot.efetch
/usr/bin/makeblastdb -in NC_001959/NC_001959.dnaorg_build.prot.fa -parse_seqids -dbtype prot > /dev/null
qsub -N b.NC_001959.dnaorg_build0 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.0.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.mp.1 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.0.cm - > NC_001959/NC_001959.dnaorg_build.0.cmbuild" > /dev/null

qsub -N b.NC_001959.dnaorg_build1 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.1.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.mp.2 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.1.cm - > NC_001959/NC_001959.dnaorg_build.1.cmbuild" > /dev/null

qsub -N b.NC_001959.dnaorg_build2 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.2.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.mp.3 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.2.cm - > NC_001959/NC_001959.dnaorg_build.2.cmbuild" > /dev/null

qsub -N b.NC_001959.dnaorg_build3 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.3.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.mp.4 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.3.cm - > NC_001959/NC_001959.dnaorg_build.3.cmbuild" > /dev/null

qsub -N b.NC_001959.dnaorg_build4 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.4.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.mp.5 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.4.cm - > NC_001959/NC_001959.dnaorg_build.4.cmbuild" > /dev/null

qsub -N b.NC_001959.dnaorg_build5 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.5.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.mp.6 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.5.cm - > NC_001959/NC_001959.dnaorg_build.5.cmbuild" > /dev/null

qsub -N b.NC_001959.dnaorg_build6 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.6.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.cds.2 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.6.cm - > NC_001959/NC_001959.dnaorg_build.6.cmbuild" > /dev/null

qsub -N b.NC_001959.dnaorg_build7 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/norovirus-builds/NC_001959/NC_001959.dnaorg_build.b.7.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_001959/NC_001959.dnaorg_build.ref.all.stk NC_001959.ref.cds.3 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_001959/NC_001959.dnaorg_build.7.cm - > NC_001959/NC_001959.dnaorg_build.7.cmbuild" > /dev/null

sh NC_001959/NC_001959.dnaorg_build.cm.qsub
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.0.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.1.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.2.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.3.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.4.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.5.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.6.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_001959/NC_001959.dnaorg_build.7.cm > /dev/null
# Wed Oct 24 15:51:32 EDT 2018
# Linux sge1032 3.10.0-862.11.6.el7.x86_64 #1 SMP Tue Aug 14 21:49:04 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
