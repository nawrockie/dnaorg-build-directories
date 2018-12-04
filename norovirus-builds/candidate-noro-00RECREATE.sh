# EPN, Wed Mar 14 15:13:52 2018 [dnaorg_scripts version 0.28 -->] current
# EPN, Tue Feb 13 12:58:45 2018 [dnaorg_scripts version 0.26] previous
#
# Step A: create the matpept files we need for dnaorg_build.pl and copy
# them into the norovirus-builds directory:
for a in \
    NC_039897 \
    ; do 
    dnaorg_get_matpepts.pl -f $a
    cp $a.matpept.in norovirus-builds
done

# Step B: create the individual dnaorg_build.pl output directories by calling dnaorg_build.pl a bunch of times,
# use the -n 1 :
cd norovirus-builds;
for a in \
    NC_039897 \
    ; do 
    qsub -N build.$a -b y -v SGE_FACILITIES -P unified -S /bin/bash -cwd -V -j n -o /dev/null -e build.$a.err -l h_rt=28800,mem_free=8G,h_vmem=16G -m n "dnaorg_build.pl -f -n 1 --matpept $a.matpept.in --dfeat gene $a > $a.dnaorg_build.out"
done

