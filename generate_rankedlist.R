library(data.table)
library(tidyverse)

args = commandArgs(trailingOnly=TRUE)
column = args[1]

df <- fread('stats_with_dmelorthologs.txt')
df %>% arrange(desc(!!sym(column))) %>% select(ortholog_ensg) %>% fwrite(paste0(column, '_ranked.txt'), col.names=F, sep='\t')