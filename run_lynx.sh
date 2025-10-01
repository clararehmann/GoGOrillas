#!/bin/bash
# runs lynx in command script mode to upload ranked gene lists to GOrilla
# and save the resulting links as lynx bookmarks

data=$1
column=$2

Rscript generate_rankedlist.R "$data" "$column"
script=lynxscript_${column}.txt
file=${column}_ranked.txt
bash generate_lynxscript.sh $script $file
lynx -cmd_script=$script https://cbl-gorilla.cs.technion.ac.il/
