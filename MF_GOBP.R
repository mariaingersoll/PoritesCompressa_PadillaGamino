#!/usr/bin/env Rscript

input="MF_GO.csv"
goAnnotations="Porites_compressa_iso2go.tab"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)


