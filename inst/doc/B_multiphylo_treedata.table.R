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
trees<-list(anolis$phy,anolis$phy)
class(trees) <- "multiPhylo"
trees

## -----------------------------------------------------------------------------
td <- as.treedata.table(tree=trees, data=anolis$dat)

## -----------------------------------------------------------------------------
class(td$phy);td$phy

## -----------------------------------------------------------------------------
td[, head(.SD, 1), by = "ecomorph"]

## -----------------------------------------------------------------------------
tdt(td, geiger::fitContinuous(phy, extractVector(td, 'SVL'), model="BM", ncores=1))

