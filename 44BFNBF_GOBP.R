#!/usr/bin/env Rscript

input="44BFNBF_GO.csv"
goAnnotations="Porites_compressa_iso2go.tab"
goDatabase="go.obo"
goDivision="BP"
source("gomwu.functions.R")

gomwuStats(input, goDatabase, goAnnotations, goDivision,
           perlPath="perl",
           largest=0.1,
           smallest=5,
           clusterCutHeight=0.25)

#551 terms

resultsBP=gomwuPlot(input,goAnnotations,goDivision,
                    absValue=1,
                    level1=0.1,
                    level2=0.05,
                    level3=0.01,
                    txtsize=1.5,
                    treeHeight=0.5,
)
#saved as 44BFNBF_BP.pdf as portrait 90x10

