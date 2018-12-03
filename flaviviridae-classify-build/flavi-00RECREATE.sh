# EPN, Thu Nov 29 13:28:18 2018 [dnaorg_scripts version 0.38 --> current]
#
# If you're updating the models. Do these steps first:
# > mv flaviviridae-classify-build old-flaviviridae-classify-build 
# > cp old-flaviviridae-classify-build/calici-00RECREATE.sh .
# > cp old-flaviviridae-classify-build/flaviviridae_refseq_list.txt .
# 
# To make the new flaviviridae-classify-build dir:
dnaorg_classify.pl --dirout flaviviridae-classify-build --onlybuild flaviviridae_refseq_list.txt 

# Gzip any files more than 100 Mb, so we can push them to github:
# gzip flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm
# gzip flaviviridae-classify-build/flaviviridae-classify-build.dnaorg_classify.hmm.h3p

