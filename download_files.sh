#!/bin/bash

for species in "gamb" "colu" "arab" "afun" "amin"; do
    for column in "gene_pi" "gene_d" "gene_theta" "aa_pi" "aa_d" "aa_theta" "ns_pi" "ns_d" "ns_theta" "gene_pnps"; do
        column_file=${column}_${species}
        url=$(awk -F '"' "/${column_file}/ {print \$2}" lynx_bookmarks.html)
        echo "$url"
    done
done