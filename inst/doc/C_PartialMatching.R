## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(ape)
library(treedata.table)

# Load example data
data(anolis)
#Create treedata.table object with as.treedata.table
td <- as.treedata.table(tree = anolis$phy, data = anolis$dat)

## -----------------------------------------------------------------------------
anolis_newtip<-anolis$phy
anolis_newtip$tip.label[1]<-'NAA'
anolis_newtip

## -----------------------------------------------------------------------------
td <- as.treedata.table(tree=anolis_newtip, data=anolis$dat)

## -----------------------------------------------------------------------------
td

## -----------------------------------------------------------------------------
anolis2<-anolis$phy
anolis2$tip.label[1]<-'NAA'
anolis1<-anolis$phy
anolis1$tip.label[1]<-'NAA'
trees<-list(anolis1,anolis2)
class(trees) <- "multiPhylo"
trees

## -----------------------------------------------------------------------------
td <- as.treedata.table(tree=trees, data=anolis$dat)

## -----------------------------------------------------------------------------
td

