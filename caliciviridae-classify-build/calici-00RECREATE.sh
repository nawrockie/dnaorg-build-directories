# EPN, Wed Mar 14 15:13:52 2018 [dnaorg_scripts version 0.28 -->] current
# EPN, Tue Feb 13 12:58:45 2018 [dnaorg_scripts version 0.26] previous
#
# If you're updating the models. Do these steps first:
# > mv caliciviridae-classify-build old-caliciviridae-classify-build 
# > cp old-caliciviridae-classify-build/calici-00RECREATE.sh .
# > cp old-caliciviridae-classify-build/caliciviridae_refseq_list.txt .
# 
# To make the new caliciviridae-classify-build dir:
dnaorg_classify.pl --dirout caliciviridae-classify-build --onlybuild caliciviridae_refseq_list.txt 
