library(data.table)
library(tidyverse)

"""
generate a one-column ranked list of genes for input to GOrilla
usage: Rscript generate_rankedlist.R <data> <column>
data: path to data file (tsv or csv) with a 'gene' column and the column to rank by
column: name of column to rank by (e.g. gene_pi, gene_d)
output: <column>_ranked.txt with one column of gene IDs, ranked in descending order by the specified column
"""

args = commandArgs(trailingOnly=TRUE)
data = args[1]
column = args[2]

df <- fread(data)
df %>% arrange(desc(!!sym(column))) %>% select(gene) %>% fwrite(paste0(column, '_ranked.txt'), col.names=F, sep='\t')