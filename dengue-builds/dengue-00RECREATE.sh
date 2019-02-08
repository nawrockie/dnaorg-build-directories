# EPN, Thu Nov 29 13:22:28 2018 [dnaorg_scripts version 0.38 --> current]
#
# If you're updating the models. Do these steps first:
# > mv dengue-builds old-dengue-builds
# > cp old-dengue-builds/dengue-00RECREATE.sh .
# > cp old-dengue-builds/dengue_refseq_list.txt .
# 
# Step 1: create the dengue-builds directory using dnaorg_classify.pl --onlybuild:
dnaorg_classify.pl --dirout dengue-builds --onlybuild dengue_refseq_list.txt 

# Step 2: create the matpept files we need for dnaorg_build.pl and copy
# them into the dengue-builds directory:
for a in \
    NC_001477 \
    NC_001474 \
    NC_001475 \
    NC_002640 \
    ; do 
    dnaorg_get_matpepts.pl -f $a
    cp $a.matpept.in dengue-builds
done

# Step 3: create the individual dnaorg_build.pl output directories by calling dnaorg_build.pl a bunch of times,
# use the -n 1 :
cd dengue-builds;
for a in \
    NC_001477 \
    NC_001474 \
    NC_001475 \
    NC_002640 \
    ; do 
    qsub -N build.$a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e build.$a.err -l h_rt=28800,mem_free=8G,h_vmem=16G -m n "dnaorg_build.pl -f -n 1 --matpept $a.matpept.in --dfeat gene $a > $a.dnaorg_build.out"
done

