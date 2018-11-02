mkdir NC_006432
esearch -db nuccore -query NC_006432 | efetch -format gpc | xtract -insd mat_peptide INSDFeature_location product > NC_006432/NC_006432.dnaorg_build.mat_peptide
rm NC_006432/NC_006432.dnaorg_build.mat_peptide
esearch -db nuccore -query NC_006432 | efetch -format ft > NC_006432/NC_006432.dnaorg_build.fetched.ftable
esearch -db nuccore -query NC_006432 | efetch -format gpc | xtract -insd INSDSeq_length | grep . | sort > NC_006432/NC_006432.dnaorg_build.length
perl /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/esl-fetch-cds/esl-fetch-cds.pl -nocodon NC_006432/NC_006432.dnaorg_build.ref.fg.idfetch.in > NC_006432/NC_006432.dnaorg_build.ref.fg.fa
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.1.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.1.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.1.named.stk >  NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.2.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.2.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.2.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.3.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.3.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.3.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.1.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.1.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.1.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.2.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.2.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.2.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.5.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.5.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.5.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.1.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.1.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.1.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.2.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.2.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.2.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.7.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.7.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.7.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.8.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.8.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.8.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.cds.9.fa > NC_006432/NC_006432.dnaorg_build.ref.cds.9.stk
cat NC_006432/NC_006432.dnaorg_build.ref.cds.9.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.gene.1.fa > NC_006432/NC_006432.dnaorg_build.ref.gene.1.stk
cat NC_006432/NC_006432.dnaorg_build.ref.gene.1.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.gene.2.fa > NC_006432/NC_006432.dnaorg_build.ref.gene.2.stk
cat NC_006432/NC_006432.dnaorg_build.ref.gene.2.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.gene.3.fa > NC_006432/NC_006432.dnaorg_build.ref.gene.3.stk
cat NC_006432/NC_006432.dnaorg_build.ref.gene.3.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.gene.4.fa > NC_006432/NC_006432.dnaorg_build.ref.gene.4.stk
cat NC_006432/NC_006432.dnaorg_build.ref.gene.4.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.gene.5.fa > NC_006432/NC_006432.dnaorg_build.ref.gene.5.stk
cat NC_006432/NC_006432.dnaorg_build.ref.gene.5.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.gene.6.fa > NC_006432/NC_006432.dnaorg_build.ref.gene.6.stk
cat NC_006432/NC_006432.dnaorg_build.ref.gene.6.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-reformat --informat afa stockholm NC_006432/NC_006432.dnaorg_build.ref.gene.7.fa > NC_006432/NC_006432.dnaorg_build.ref.gene.7.stk
cat NC_006432/NC_006432.dnaorg_build.ref.gene.7.named.stk >> NC_006432/NC_006432.dnaorg_build.ref.all.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.1.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.1.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.1.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.2.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.2.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.2.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.3.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.3.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.3.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.1.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.1.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.1.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.2.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.2.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.4.exon.2.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.5.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.5.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.5.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.1.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.1.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.1.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.2.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.2.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.6.exon.2.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.7.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.7.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.7.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.8.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.8.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.8.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.9.fa
rm NC_006432/NC_006432.dnaorg_build.ref.cds.9.stk
rm NC_006432/NC_006432.dnaorg_build.ref.cds.9.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.1.fa
rm NC_006432/NC_006432.dnaorg_build.ref.gene.1.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.1.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.2.fa
rm NC_006432/NC_006432.dnaorg_build.ref.gene.2.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.2.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.3.fa
rm NC_006432/NC_006432.dnaorg_build.ref.gene.3.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.3.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.4.fa
rm NC_006432/NC_006432.dnaorg_build.ref.gene.4.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.4.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.5.fa
rm NC_006432/NC_006432.dnaorg_build.ref.gene.5.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.5.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.6.fa
rm NC_006432/NC_006432.dnaorg_build.ref.gene.6.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.6.named.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.7.fa
rm NC_006432/NC_006432.dnaorg_build.ref.gene.7.stk
rm NC_006432/NC_006432.dnaorg_build.ref.gene.7.named.stk
esearch -db nuccore -query NC_006432 | efetch -format gpc | xtract -insd CDS protein_id INSDFeature_location translation > NC_006432/NC_006432.dnaorg_build.prot.efetch
/usr/bin/makeblastdb -in NC_006432/NC_006432.dnaorg_build.prot.fa -parse_seqids -dbtype prot > /dev/null
qsub -N b.NC_006432.dnaorg_build0 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.0.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.1 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.0.cm - > NC_006432/NC_006432.dnaorg_build.0.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build1 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.1.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.2 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.1.cm - > NC_006432/NC_006432.dnaorg_build.1.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build2 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.2.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.3 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.2.cm - > NC_006432/NC_006432.dnaorg_build.2.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build3 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.3.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.4.exon.1 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.3.cm - > NC_006432/NC_006432.dnaorg_build.3.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build4 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.4.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.4.exon.2 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.4.cm - > NC_006432/NC_006432.dnaorg_build.4.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build5 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.5.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.5 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.5.cm - > NC_006432/NC_006432.dnaorg_build.5.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build6 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.6.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.6.exon.1 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.6.cm - > NC_006432/NC_006432.dnaorg_build.6.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build7 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.7.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.6.exon.2 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.7.cm - > NC_006432/NC_006432.dnaorg_build.7.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build8 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.8.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.7 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.8.cm - > NC_006432/NC_006432.dnaorg_build.8.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build9 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.9.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.8 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.9.cm - > NC_006432/NC_006432.dnaorg_build.9.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build10 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.10.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.cds.9 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.10.cm - > NC_006432/NC_006432.dnaorg_build.10.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build11 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.11.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.gene.1 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.11.cm - > NC_006432/NC_006432.dnaorg_build.11.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build12 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.12.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.gene.2 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.12.cm - > NC_006432/NC_006432.dnaorg_build.12.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build13 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.13.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.gene.3 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.13.cm - > NC_006432/NC_006432.dnaorg_build.13.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build14 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.14.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.gene.4 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.14.cm - > NC_006432/NC_006432.dnaorg_build.14.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build15 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.15.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.gene.5 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.15.cm - > NC_006432/NC_006432.dnaorg_build.15.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build16 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.16.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.gene.6 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.16.cm - > NC_006432/NC_006432.dnaorg_build.16.cmbuild" > /dev/null

qsub -N b.NC_006432.dnaorg_build17 -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e /panfs/pan1.be-md.ncbi.nlm.nih.gov/infernal/notebook/18_1002_virus_dnaorg_protein_validation/dnaorg-build-directories/ebolavirus-builds/NC_006432/NC_006432.dnaorg_build.b.17.err -m n -l h_rt=288000,h_vmem=8G,mem_free=8G,reserve_mem=8G "/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/easel/miniapps/esl-afetch NC_006432/NC_006432.dnaorg_build.ref.all.stk NC_006432.ref.gene.7 | /panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmbuild -F --informat stockholm NC_006432/NC_006432.dnaorg_build.17.cm - > NC_006432/NC_006432.dnaorg_build.17.cmbuild" > /dev/null

sh NC_006432/NC_006432.dnaorg_build.cm.qsub
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.0.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.1.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.2.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.3.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.4.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.5.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.6.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.7.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.8.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.9.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.10.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.11.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.12.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.13.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.14.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.15.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.16.cm > /dev/null
/panfs/pan1/infernal/notebook/18_1002_virus_dnaorg_protein_validation/infernal-1.1.2/src/cmpress -F NC_006432/NC_006432.dnaorg_build.17.cm > /dev/null
# Mon Oct 29 18:10:31 EDT 2018
# Linux sge658 3.10.0-862.11.6.el7.x86_64 #1 SMP Tue Aug 14 21:49:04 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
# DNAORG-SUCCESS
