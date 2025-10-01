#!/bin/bash
for species in "gamb" "colu" "arab" "afun" "amin"; do
    for column in "gene_pi" "gene_d" "gene_theta" "aa_pi" "aa_d" "aa_theta" "ns_pi" "ns_d" "ns_theta" "gene_pnps"; do
        column_file=${column}_${species}
        Rscript generate_rankedlist.R "$column_file"
        script=lynxscript_${column_file}.txt
        file=${column_file}_ranked.txt
        bash generate_lynxscript.sh $script $file
        lynx -cmd_script=$script https://cbl-gorilla.cs.technion.ac.il/
    done
done
