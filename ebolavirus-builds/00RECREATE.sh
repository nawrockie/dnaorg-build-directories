# EPN, Mon Apr  9 10:52:28 2018 [dnaorg_scripts version 0.30] current
# 
# Step 1: create the ebolavirus-builds directory using dnaorg_classify.pl --onlybuild:
dnaorg_classify.pl --dirout ebolavirus-builds --onlybuild ebolavirus_refseq_list.txt 

# No matpept files for Ebola, it does not have mature peptides

# Step 2: create the individual dnaorg_build.pl output directories by calling dnaorg_build.pl a bunch of times,
# use the -n 1 :
cd ebolavirus-builds;
for a in NC_006432 NC_014373 NC_002549 NC_014372 NC_004161; do
    qsub -N build.$a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e build.$a.err -l h_rt=28800,mem_free=8G,h_vmem=16G -m n "dnaorg_build.pl -f -n 1 --xfeat gene $a > $a.dnaorg_build.out"
done

