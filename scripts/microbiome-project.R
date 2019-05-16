#=======Script for working with Microbiome data=========
#Grace Crandall
#FISH 497 Spring 2019

#data files are linked in my readme file in the repo on GitHub

#from water in the shellfish hatcheries 

#last column is TaxID
#dplyr filter for taxID
#gene id column
#e values
#scores (second to last column)
#one file is from pH 7.1, other is from 8.2

#read in the pH 7.1 data file
lowmeta <- read.csv("http://gannet.fish.washington.edu/Atumefaciens/20190416_metagenomics_pgen_blastn/pH71.blastn.outfmt6")

